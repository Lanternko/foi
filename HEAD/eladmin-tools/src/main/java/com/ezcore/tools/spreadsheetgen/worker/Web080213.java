package com.ezcore.tools.spreadsheetgen.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080213Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Date;

@Service("web080213")
public class Web080213 implements SharedReportService {
    private final ReportRepository repository;

    @Autowired
    public Web080213(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {

        // Generate dummy data
        List<Web080213Vo> dataList = generateSampleDataList();
        Map<String, Object> data = new HashMap<>();

        data.put("dataList", dataList);
        data.put("outputName", "web080213");
        return data;
    }

    private List<Web080213Vo> generateSampleDataList() {
        List<Web080213Vo> dataList = new ArrayList<>();
        dataList.add(new Web080213Vo("Email", "D123", new Date(), "Case of interest rate dispute", "Alex", "Direct", "Finance", "John Doe", "A123456789", "Male", new Date(), "In Process", "XYZ Bank"));
        dataList.add(new Web080213Vo("Email", "D124", new Date(), "Case of policy issue", "Michael", "Direct", "Insurance", "Jane Doe", "B123456789", "Female", new Date(), "Completed", "ABC Insurance"));
        return dataList;
    }
}
