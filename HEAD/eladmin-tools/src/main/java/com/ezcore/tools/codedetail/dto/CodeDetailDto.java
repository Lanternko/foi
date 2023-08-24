package com.ezcore.tools.codedetail.dto;

import java.util.List;

import com.ezcore.tools.codedetail.po.CodeDetail;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class CodeDetailDto {
    private Long cid;

    private String kind;

    private String code;

    private String name;

    private Boolean isEnabled;

    private String description;

    private String sortCode;

    private String property1;

    private String property2;

    private String property3;

    private String property4;

    private String property5;

    private String property6;

    private String property7;

    private String property8;

    private String property9;

    private Long parentId;

    private Long childId;

    private String childCode;

    private String parentCode;

    private List<CodeDetailDto> filterList;

    public CodeDetailDto(CodeDetail codeDetail){
        this.cid = codeDetail.getCid();
        this.code = codeDetail.getCode();
        this.kind = codeDetail.getKind();
        this.name = codeDetail.getName();
        this.isEnabled = codeDetail.getIsEnabled();
        this.description = codeDetail.getDescription();
        this.sortCode = codeDetail.getSortCode();
        this.property1 = codeDetail.getProperty1();
        this.property2 = codeDetail.getProperty2();
        this.property3 = codeDetail.getProperty3();
        this.property4 = codeDetail.getProperty4();
        this.property5 = codeDetail.getProperty5();
        this.property6 = codeDetail.getProperty6();
        this.property7 = codeDetail.getProperty7();
        this.property8 = codeDetail.getProperty8();
        this.property9 = codeDetail.getProperty9();
        this.childId = codeDetail.getChildId();
        this.parentId = codeDetail.getParetntId();
    }

    public CodeDetail toPo(){
        CodeDetail codeDetail = new CodeDetail();
        codeDetail.setCid(cid); 
        codeDetail.setCode(code);
        codeDetail.setKind(kind);
        codeDetail.setName(name);
        codeDetail.setIsEnabled(isEnabled);
        codeDetail.setDescription(description);
        codeDetail.setSortCode(sortCode);
        codeDetail.setProperty1(property1);
        codeDetail.setProperty2(property2);
        codeDetail.setProperty3(property3);
        codeDetail.setProperty4(property4);
        codeDetail.setProperty5(property5);
        codeDetail.setProperty6(property6);
        codeDetail.setProperty7(property7);
        codeDetail.setProperty8(property8);
        codeDetail.setProperty9(property9);
        codeDetail.setChildId(childId);
        codeDetail.setParentId(parentId);
        return codeDetail;
    }
}
