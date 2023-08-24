package com.ezcore.tools.spreadsheetgen.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080223Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Date;

@Service("web080223")
public class Web080223 implements SharedReportService {
    private final ReportRepository repository;

    @Autowired
    public Web080223(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {

        // Generate dummy data
        List<Web080223Vo> dataList = generateSampleDataList();
        Map<String, Object> data = new HashMap<>();

        data.put("dataList", dataList);
        data.put("outputName", "web080223");
        return data;
    }

    private List<Web080223Vo> generateSampleDataList() {
        List<Web080223Vo> dataList = new ArrayList<>();
        dataList.add(new Web080223Vo("001", new Date(), "John Doe", "LN-001", "CN-001", new Date(), "RN-001", "Contents of the document"));
        return dataList;
    }
}
