package com.ezcore.tools.spreadsheetgen.service;

import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public interface SharedReportService {
    Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params);
    default boolean isMultiSheet() {
        return false;
    }
}
