package com.ezcore.tools.spreadsheetgen.objects;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Web080212Vo {
    private Integer num;
    private String deliver;
    private String renewOrNot;
    private String CommentCaseNum;
    private String caseNum;
    private String applicant;
    private String controversialObject;
    private Date receivingDate;
    private String goodsServiceType;
    private String controversialSort;
    private String specialist;
    private String status;
    private String closureOfCase;
    private Date progressDate;
    private String countCaseOrNot;
    private String mediateOrNot;
    private Date mediateDate;
    private Integer countCase;
    private Date commentDate1;
    private Date replyDate2;
    private Date commentDate3;
    private Date replyDate4;
    private Integer processDays;
}
