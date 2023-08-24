package com.ezcore.tools.spreadsheetgen.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080220Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Date;

@Service("web080220")
public class Web080220 implements SharedReportService {
    private final ReportRepository repository;

    @Autowired
    public Web080220(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {

        // Generate dummy data
        List<Web080220Vo> dataList = generateSampleDataList();
        Map<String, Object> data = new HashMap<>();

        data.put("dataList", dataList);
        data.put("outputName", "web080220");
        return data;
    }

    private List<Web080220Vo> generateSampleDataList() {
        List<Web080220Vo> dataList = new ArrayList<>();
        dataList.add(new Web080220Vo(1, "cn123", new Date(), "John", "CompanyA", "TypeA", "Resolved", "Specialist1"));
        dataList.add(new Web080220Vo(2, "cn124", new Date(), "Alice", "CompanyB", "TypeB", "Pending", "Specialist2"));
        return dataList;
    }
}
