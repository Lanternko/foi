package com.ezcore.tools.spreadsheetgen.objects;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Web080207Vo {
    private Integer num;
    private String deliver;
    private Boolean renewOrNot;
    private Date receivingDate;
    private String caseNum;
    private String commentCaseNum;
    private String sectionAndSpecialist;
    private String applicant;
    private String appealNumCase;
    private String goodsServiceType;
    private String controversialSort;
    private String closureOfCase;
    private String caseAttribute;
    private Integer appealProcessDay;
    private String caseLabel;
}
