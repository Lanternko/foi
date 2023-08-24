package com.ezcore.tools.spreadsheetgen.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080217Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Date;

@Service("web080217")
public class Web080217 implements SharedReportService {
    private final ReportRepository repository;

    @Autowired
    public Web080217(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {

        // Generate dummy data
        List<Web080217Vo> dataList = generateSampleDataList();
        Map<String, Object> data = new HashMap<>();

        data.put("dataList", dataList);
        data.put("outputName", "web080217");
        return data;
    }

    private List<Web080217Vo> generateSampleDataList() {
        List<Web080217Vo> dataList = new ArrayList<>();
        dataList.add(new Web080217Vo(1, "tel123", "case123", new Date(), "John", "CompanyA", "Type1", "Type2", "Sort1", "Unit1", "Unit2", "Result1", "TransferYes", "Specialist1", "Specialist2", "Closed"));
        dataList.add(new Web080217Vo(2, "tel124", "case124", new Date(), "Alice", "CompanyB", "Type3", "Type4", "Sort2", "Unit3", "Unit4", "Result2", "TransferNo", "Specialist3", "Specialist4", "Open"));
        return dataList;
    }
}
