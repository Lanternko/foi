package me.zhengjie.modules.security.rest;

import java.time.LocalDateTime;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;
import com.ezcore.tools.common.CustomIntegerRepresents;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.annotation.rest.AnonymousGetMapping;
import me.zhengjie.modules.system.domain.UrlMapping;
import me.zhengjie.modules.system.repository.UrlMappingRepository;
import me.zhengjie.utils.DateUtil;

@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/ez.ln")
@Api(tags = "系統 : 短網址導向")
public class RedirectContriller {

	@Autowired
	final UrlMappingRepository urlMappingRepository;
	private final CodeDetailMap codeDetailMap;

	@Log("短網址導向")
	@AnonymousGetMapping(value = "/{ezurl}")
    @ApiOperation("短網址導向")
	/**
	 * 短網址導向
	 * 檢查系統是否開啟短網址的功能，並檢查短網址是否為空，
	 * 將短網址解碼並取得對應的完整網址，並將使用者導向該完整網址
	 * 若短網址無效或已過期，則將使用者導向404頁面
	 * @param ezurl 短網址
	 * @return RedirectView，導向的視圖
	 */
//  已在前端設定遇到特定網址時允許跨域, 這裡不用處理
    public RedirectView redirectToFullPath(@PathVariable String ezurl) {
		CodeDetailDto code = codeDetailMap.get(Constants.SYS_FUNC, Constants.URL_SHORTEN_RULE);
		CodeDetailDto domain = codeDetailMap.get(Constants.SYS_FUNC, Constants.DOMAIN);
    	if (!code.getIsEnabled() || ezurl == null || ezurl.isEmpty()) {
    		return new RedirectView(domain.getProperty1() + "/404");
    	}
    
    	int index = CustomIntegerRepresents.decode(code.getProperty1(), ezurl);
    	UrlMapping mapping = null; 
    	try {
    		 mapping = urlMappingRepository.findById(index).get();
		} catch (NoSuchElementException e) {
			return new RedirectView(domain.getProperty1() + "/404");
		}
    	
    	if (Integer.valueOf(code.getProperty2()) <= DateUtil.dateDiff(DateUtil.toLocalDateTime(mapping.getCreateTime()), LocalDateTime.now())) {
    		return new RedirectView(domain.getProperty1() + "/404");
    	}

    	return new RedirectView(mapping.getFullUrl());
    }

}
