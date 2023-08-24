package com.ezcore.tools.spreadsheetgen.objects;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Web080218Vo {
    private Integer num;
    private String caseNum;
    private String applicant;
    private String controversialObject;
    private Date receivingDate;
    private String goodsServiceType;
    private String controversialSort;
    private String status;
    private Date statusDate;
    private String closureOfCase;
    private String closeCaseOrNot;
    private String specialist;
    private String receivingMethod;
    private String subject;
    private Date replyDate;
    private String caseLabel;
}
