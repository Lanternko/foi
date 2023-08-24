package com.ezcore.tools.spreadsheetgen.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080210Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("web080210")
public class Web080210 implements SharedReportService {
    private final ReportRepository repository;

    @Autowired
    public Web080210(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {

        // Generate dummy data
        List<Web080210Vo> dataList = generateSampleDataList();
        Map<String, Object> data = new HashMap<>();

        data.put("dateRegion", "2023-07");
        data.put("recipient", "Email");
        data.put("industry", "Finance");
        data.put("count", 100);
        data.put("renew", 30);
        data.put("charge", 20);
        data.put("dataList", dataList);
        data.put("outputName", "web080210");
        return data;
    }

    private List<Web080210Vo> generateSampleDataList() {
        List<Web080210Vo> dataList = new ArrayList<>();
        dataList.add(new Web080210Vo("Company1", 10, 20, 30, 10, 20, 5));
        dataList.add(new Web080210Vo("Company2", 20, 30, 40, 20, 30, 10));
        dataList.add(new Web080210Vo("Company3", 30, 40, 50, 30, 40, 15));
        return dataList;
    }
}
