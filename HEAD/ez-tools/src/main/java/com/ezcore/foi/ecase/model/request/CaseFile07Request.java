package com.ezcore.foi.ecase.model.request;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;

@Data
public class CaseFile07Request {
    @JsonProperty("caseFileTypeCid")
    private int caseFileTypeCid;

    @JsonProperty("beginDate")
    private long beginDate;

    @JsonProperty("endDate")
    private long endDate;

    @JsonProperty("caseNo")
    private String caseNo;

    @JsonProperty("fileName")
    private String fileName;

    // getters and setters...
}
