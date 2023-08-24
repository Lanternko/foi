package com.ezcore.tools.spreadsheetgen.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080222Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Date;

@Service("web080222")
public class Web080222 implements SharedReportService {
    private final ReportRepository repository;

    @Autowired
    public Web080222(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {

        // Generate dummy data
        List<Web080222Vo> dataList = generateSampleDataList();
        Map<String, Object> data = new HashMap<>();

        data.put("dataList", dataList);
        data.put("outputName", "web080222");
        return data;
    }

    private List<Web080222Vo> generateSampleDataList() {
        List<Web080222Vo> dataList = new ArrayList<>();
        dataList.add(new Web080222Vo("001", "Email", new Date(), "CN-001", "John Doe", "XYZ Corporation", "Type 1", "Resolved", new Date(), new Date(), "Amy", "Notes for the case"));
        return dataList;
    }
}
