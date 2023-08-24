package com.ezcore.tools.spreadsheetgen.objects;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Web080223Vo {
    private String serialNum;
    private Date date;
    private String legisYuan;
    private String receiveDocNum;
    private String caseNum;
    private Date replyDate;
    private String replyDocNum;
    private String content;
}
