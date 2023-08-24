package com.ezcore.tools.spreadsheetgen.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080218Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Date;

@Service("web080218")
public class Web080218 implements SharedReportService {
    private final ReportRepository repository;

    @Autowired
    public Web080218(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {

        // Generate dummy data
        List<Web080218Vo> dataList = generateSampleDataList();
        Map<String, Object> data = new HashMap<>();

        data.put("dataList", dataList);
        data.put("outputName", "web080218");
        return data;
    }

    private List<Web080218Vo> generateSampleDataList() {
        List<Web080218Vo> dataList = new ArrayList<>();
        dataList.add(new Web080218Vo(1, "case123", "John", "CompanyA", new Date(), "GoodsA", "Sort1", "Processing", new Date(), "Closed", "Yes", "Specialist1", "Mail", "Subject1", new Date(), "Label1"));
        dataList.add(new Web080218Vo(2, "case124", "Alice", "CompanyB", new Date(), "ServiceB", "Sort2", "Pending", new Date(), "Open", "No", "Specialist2", "Email", "Subject2", new Date(), "Label2"));
        return dataList;
    }
}
