package com.ezcore.tools.spreadsheetgen.objects;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Web080203Vo {
    private Integer serialNum;
    private String caseNum;
    private String applicant;
    private String counterPart;
    private String caption;
    private String reviewReply;
    private String deliver;
    private String evaluate;
    private String status;
}
