package com.ezcore.tools.gui.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezcore.tools.codedetail.dao.CodeDetailMapper;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.codedetail.model.Tool;
import com.ezcore.tools.codedetail.model.exception.ResponseDataException;
import com.ezcore.tools.codedetail.po.CodeDetail;
import com.ezcore.tools.codedetail.po.CodeDetailExample;
import com.ezcore.tools.codedetail.service.impl.CodeDetailServiceImpl;
import com.ezcore.tools.gui.service.GuiService;

@Component
public class GuiServiceImpl implements GuiService{
    @Autowired CodeDetailMapper codeDetailMapper;
    @Autowired CodeDetailServiceImpl codeDetailServiceImpl;
    /* 取得GUI所有區間的年份 */
	@Override
	public List<String> getGuiYear() {
		return codeDetailMapper.selectGuiYear();
	}

	public List<String> getPeriodByYear(String year) {
		return codeDetailMapper.selectGuiPeriodByYear(year + '%');
	}

	public List<CodeDetailDto> getByYear(String year) {
		List<CodeDetailDto> codeDetailDtoList = new ArrayList<>();
		List<String> codeList = getPeriodByYear(year);
		for (String code : codeList) {
			codeDetailDtoList.add(codeDetailServiceImpl.getCodeDetail("gui.word_period", code));
		}
		return codeDetailDtoList;
	}

	/* 選取自動配號用的period */
	@Override
	public List<CodeDetailDto> selectPeriodForAuto(String year) throws ResponseDataException {
		Calendar now = Calendar.getInstance();
		int yearNow = now.get(Calendar.YEAR);

		CodeDetailExample example = new CodeDetailExample();
		/*
		 * 判斷是過去、今年或是未來
		 * 過去:無法配號
		 * 今年:選取接下來月份
		 * 未來:整年都可以選取
		 */
		switch (Integer.compare(yearNow, Integer.parseInt(year))) {
			case 1:
				throw new ResponseDataException(-2, "", "資訊錯誤", "歷史年度無法自動配號", "Incomunit");
			case 0:
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
				example.createCriteria().andKindEqualTo("gui.word_period").andProperty1Like(year + '%')
						.andProperty1GreaterThan(formatter.format(Tool.now()));
				break;
			case -1:
				example.createCriteria().andKindEqualTo("gui.word_period").andProperty1Like(year + '%');
				break;
			default:
				throw new ResponseDataException(-2, "", "資訊錯誤", "無法自動配號", "Incomunit");
		}
		List<CodeDetail> codes = codeDetailMapper.selectByExample(example);
		List<CodeDetailDto> result = new ArrayList<>();
		for (CodeDetail codeDetail : codes) {
			result.add(new CodeDetailDto(codeDetail));
		}
		return result;
	}
}
