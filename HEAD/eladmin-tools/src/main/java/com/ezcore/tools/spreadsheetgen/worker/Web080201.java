package com.ezcore.tools.spreadsheetgen.worker;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080201Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

@Service("web080201")
public class Web080201 implements SharedReportService {
    private final ReportRepository repository; // Repository for fetching log data from the database

    // Constructor for dependency injection
    @Autowired
    public Web080201(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {
        // ...

        // 2. Generate sample data
        List<Web080201Vo> dataList = generateSampleDataList(); // Sample data list
        Map<String, Object> data = new HashMap<>();

        // 3. Add the dataList to the data map
        data.put("year", "2023");
        data.put("dataList", dataList);
        data.put("outputName", "web080201");

        return data;
    }

    // Method to generate sample data list
    private List<Web080201Vo> generateSampleDataList() {
        List<Web080201Vo> dataList = new ArrayList<>();
        dataList.add(new Web080201Vo(100, 50, 50, 80, 30, 50));
        // Add more sample data items as needed

        return dataList;
    }

}
