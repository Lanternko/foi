package com.ezcore.tools.spreadsheetgen.objects;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Web080220Vo {
    private Integer num;
    private String counterNum;
    private Date counterDate;
    private String applicant;
    private String controversialObject;
    private String type;
    private String result;
    private String specialist;
}
