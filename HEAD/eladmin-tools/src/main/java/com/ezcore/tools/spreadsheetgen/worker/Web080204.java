package com.ezcore.tools.spreadsheetgen.worker;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080204Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

@Service("web080204")
public class Web080204 implements SharedReportService {
    private final ReportRepository repository; // Repository for fetching log data from the database

    // Constructor for dependency injection
    @Autowired
    public Web080204(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {
        // ...

        // 2. Generate sample data
        List<Web080204Vo> dataList = generateSampleDataList(); // Sample data list
        Map<String, Object> data = new HashMap<>();

        // 3. Add the dataList to the data map
        data.put("dateRegion", "2023-01-01 to 2023-12-31");
        data.put("recipient", "Recipient A");
        data.put("industry", "Some Industry");
        data.put("deliver", "Delivery A");
        data.put("count", "Count A");
        data.put("renew", "Renew A");
        data.put("charge", "Charge A");
        data.put("type", "Type A");
        data.put("label", "Label A");
        data.put("dataList", dataList);
        data.put("outputName", "web080204");

        return data;
    }

    // Method to generate sample data list
    private List<Web080204Vo> generateSampleDataList() {
        List<Web080204Vo> dataList = new ArrayList<>();
        dataList.add(new Web080204Vo("Controversial Object A", 10, 5, 15));
        // Add more sample data items as needed

        return dataList;
    }
}
