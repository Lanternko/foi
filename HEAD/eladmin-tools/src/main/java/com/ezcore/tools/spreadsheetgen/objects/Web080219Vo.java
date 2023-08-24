package com.ezcore.tools.spreadsheetgen.objects;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Web080219Vo {
    private Integer num;
    private String receiveCaseNum;
    private String type;
    private String deliver;
    private String applicant;
    private String controversialObject;
    private Date receivingDate;
    private String goodsServiceType;
    private String controversialSort;
    private String status;
    private Date processDate;
    private String closureOfCase;
    private String closeCaseOrNot;
    private String specialist;
}
