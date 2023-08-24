package com.ezcore.tools.gui.service;

import java.util.List;

import com.ezcore.tools.codedetail.model.exception.ResponseDataException;

public interface GuiService {
     /**
     * 取得GUI所有區間的年份
     * @return List String
     */
	List<String> getGuiYear();
      /**
     * 選取自動配號用的period
     * @param year
     * @return List CodeDetailDto
     * @throws ResponseDataException
     */
	List<com.ezcore.tools.codedetail.dto.CodeDetailDto> selectPeriodForAuto( String year) throws ResponseDataException;


}
