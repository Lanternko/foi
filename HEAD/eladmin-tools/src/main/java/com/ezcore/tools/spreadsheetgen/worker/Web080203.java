package com.ezcore.tools.spreadsheetgen.worker;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080203Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

@Service("web080203")
public class Web080203 implements SharedReportService {
    private final ReportRepository repository; // Repository for fetching log data from the database

    // Constructor for dependency injection
    @Autowired
    public Web080203(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {
        // ...

        // 2. Generate sample data
        List<Web080203Vo> dataList = generateSampleDataList(); // Sample data list
        Map<String, Object> data = new HashMap<>();

        // 3. Add the dataList to the data map
        data.put("year", "2023");
        data.put("season", "Q1");
        data.put("industry", "Some Industry");
        data.put("dataList", dataList);
        data.put("outputName", "web080203");

        return data;
    }

    // Method to generate sample data list
    private List<Web080203Vo> generateSampleDataList() {
        List<Web080203Vo> dataList = new ArrayList<>();
        dataList.add(new Web080203Vo(1, "Case001", "Applicant A", "Counterpart B", "Explanation A", "Reply A", "Delivery A", "Evaluation A", "Status A"));
        
        // Add more sample data items as needed

        return dataList;
    }
}
