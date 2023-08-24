package com.ezcore.tools.spreadsheetgen.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080219Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Date;

@Service("web080219")
public class Web080219 implements SharedReportService {
    private final ReportRepository repository;

    @Autowired
    public Web080219(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {

        // Generate dummy data
        List<Web080219Vo> dataList = generateSampleDataList();
        Map<String, Object> data = new HashMap<>();

        data.put("dataList", dataList);
        data.put("outputName", "web080219");
        return data;
    }

    private List<Web080219Vo> generateSampleDataList() {
        List<Web080219Vo> dataList = new ArrayList<>();
        dataList.add(new Web080219Vo(1, "rcn123", "TypeA", "DeliverA", "John", "CompanyA", new Date(), "GoodsA", "Sort1", "Processing", new Date(), "Closed", "Yes", "Specialist1"));
        dataList.add(new Web080219Vo(2, "rcn124", "TypeB", "DeliverB", "Alice", "CompanyB", new Date(), "ServiceB", "Sort2", "Pending", new Date(), "Open", "No", "Specialist2"));
        return dataList;
    }
}
