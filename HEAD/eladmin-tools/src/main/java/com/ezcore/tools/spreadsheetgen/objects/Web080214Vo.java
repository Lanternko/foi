package com.ezcore.tools.spreadsheetgen.objects;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Web080214Vo {
    private String caseNum;
    private String docNum;
    private String applicant;
    private String company;
    private Date recipDate;
    private String progress;
    private Date progressDate;
    private String latestStatus;
    private Date latestStatusDate;
    private String recentProgress;
    private Date recentProgressDate;
    private String caseSpecialist;
    private Integer progressDays;
    private Integer progressMonths;
    private Integer AfterReceivedProgressDays;
    private Integer AfterReceivedProgressMonths;
}
