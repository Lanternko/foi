package com.ezcore.foi.ecase.model.response.comm;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;


@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
@Data
public class Comm03Response {
    private Long cid;
    private String code;
    private String name;
    private Boolean isEnabled;
    private String description;
    private String sortCode;
    private String property1;
    private String property2;
    private String property3;
    private String property4;
    private String property5;
    private String property6;
    private String property7;
    private String property8;
    private String property9;
    private String option1;
    private String option2;
    private String option3;
}

