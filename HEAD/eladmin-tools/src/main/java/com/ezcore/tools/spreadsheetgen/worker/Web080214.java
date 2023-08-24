package com.ezcore.tools.spreadsheetgen.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080214Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Date;

@Service("web080214")
public class Web080214 implements SharedReportService {
    private final ReportRepository repository;

    @Autowired
    public Web080214(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {

        // Generate dummy data
        List<Web080214Vo> dataList = generateSampleDataList();
        Map<String, Object> data = new HashMap<>();

        data.put("dataList", dataList);
        data.put("outputName", "web080214");
        return data;
    }

    private List<Web080214Vo> generateSampleDataList() {
        List<Web080214Vo> dataList = new ArrayList<>();
        dataList.add(new Web080214Vo("XYZ001", "D001", "John Doe", "ABC Company", new Date(), "Initial", new Date(), "In Process", new Date(), "Final", new Date(), "Alex", 10, 1, 7, 1));
        dataList.add(new Web080214Vo("XYZ002", "D002", "Jane Doe", "XYZ Company", new Date(), "Initial", new Date(), "In Process", new Date(), "Final", new Date(), "Michael", 20, 2, 14, 2));
        return dataList;
    }
}
