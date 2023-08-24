package com.ezcore.foi.ecase.dao.dto;

import java.util.List;

import lombok.Data;

@Data
public class CaseTelRequestDTO {
    private String caseMasterTid;
    private List<CaseTelRequestDTO> column;

    // Getters and setters
}