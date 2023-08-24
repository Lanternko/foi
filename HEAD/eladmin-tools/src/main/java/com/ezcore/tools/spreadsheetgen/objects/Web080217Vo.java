package com.ezcore.tools.spreadsheetgen.objects;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Web080217Vo {
    private Integer num;
    private String telNum;
    private String caseNum;
    private Date callDate;
    private String applicant;
    private String controversialObject;
    private String controversialType1;
    private String controversialType2;
    private String controversialSort;
    private String transferUnit;
    private String externalUnit;
    private String transferResult;
    private String transferOrNot;
    private String specialist1;
    private String specialist2;
    private String closureOfCase;
}
