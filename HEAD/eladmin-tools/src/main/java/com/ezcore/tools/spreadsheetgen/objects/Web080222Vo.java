package com.ezcore.tools.spreadsheetgen.objects;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Web080222Vo {
    private String serialNum;
    private String deliver;
    private Date receivingDate;
    private String caseNum;
    private String applicant;
    private String controversialObject;
    private String controversialSort;
    private String replyResult;
    private Date replyDate;
    private Date reviewDate;
    private String specialist;
    private String note;
}
