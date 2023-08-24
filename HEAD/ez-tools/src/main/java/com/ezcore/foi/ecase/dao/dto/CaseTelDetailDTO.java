package com.ezcore.foi.ecase.dao.dto;

import com.ezcore.foi.ecase.dao.entity.CaseTelCheck;
import com.ezcore.foi.ecase.dao.entity.Codedetail;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class CaseTelDetailDTO {
    private String caseTelCheckTid;
    private String code;
    private String x; // string or int?
    private String y; // string or int?
    private String style;
    private String text;
    private String value;
    
    public CaseTelDetailDTO(CaseTelCheck caseTelCheck, Codedetail codedetail) {
        this.caseTelCheckTid = caseTelCheck.getId();
        this.code = codedetail.getCode();
        this.x = codedetail.getProperty1();
        this.y = codedetail.getProperty2();
        this.style = codedetail.getProperty3();
        this.text = codedetail.getName();
        // Initialize x, y, style and text based on the properties of caseTelCheck and codedetail
        this.value = caseTelCheck.getValue();
    }
    
    
}
