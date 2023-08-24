package com.ezcore.tools.spreadsheetgen.objects;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Web080213Vo {
    private String recipient;
    private String deliNum;
    private Date deliDate;
    private String subject;
    private String specialist;
    private String method;
    private String attribute;
    private String applicant;
    private String id;
    private String gender;
    private Date birth;
    private String status;
    private String ControversialObject;
}
