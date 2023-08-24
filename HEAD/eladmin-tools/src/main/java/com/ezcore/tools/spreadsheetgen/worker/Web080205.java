package com.ezcore.tools.spreadsheetgen.worker;

import com.ezcore.tools.spreadsheetgen.objects.Web080205Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("web080205")
public class Web080205 implements SharedReportService {
    private final ReportRepository repository;

    @Autowired
    public Web080205(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {
        List<Web080205Vo> dataList = generateSampleDataList();
        Map<String, Object> data = new HashMap<>();
        data.put("year", "2023");
        data.put("dataList", dataList);
        data.put("outputName", "Web080205");
        return data;
    }

    private List<Web080205Vo> generateSampleDataList() {
        List<Web080205Vo> dataList = new ArrayList<>();
        dataList.add(new Web080205Vo(/* Fill in your data here */));
        return dataList;
    }
}
