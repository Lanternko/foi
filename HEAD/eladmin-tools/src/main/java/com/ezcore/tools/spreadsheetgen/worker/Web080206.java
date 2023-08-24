package com.ezcore.tools.spreadsheetgen.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080206Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("web080206")
public class Web080206 implements SharedReportService {
    private final ReportRepository repository;

    @Autowired
    public Web080206(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {

        // Generate dummy data
        List<Web080206Vo> dataList = generateSampleDataList();
        Map<String, Object> data = new HashMap<>();

        data.put("dateRegion", "2023-07");
        data.put("recipient", "Email");
        data.put("industry", "Finance");
        data.put("count", 100);
        data.put("renew", 30);
        data.put("charge", 20);
        data.put("type", "Type1");
        data.put("deliver", "Deliver1");
        data.put("label", "Label1");
        data.put("dataList", dataList);
        data.put("outputName", "web080206");
        return data;
    }

    private List<Web080206Vo> generateSampleDataList() {
        List<Web080206Vo> dataList = new ArrayList<>();
        dataList.add(new Web080206Vo("Dispute1", 10, 5));
        dataList.add(new Web080206Vo("Dispute2", 20, 10));
        dataList.add(new Web080206Vo("Dispute3", 30, 15));
        return dataList;
    }
}
