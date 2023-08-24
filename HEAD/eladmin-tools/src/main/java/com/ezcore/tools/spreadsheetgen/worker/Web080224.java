package com.ezcore.tools.spreadsheetgen.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080224Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Date;

@Service("web080224")
public class Web080224 implements SharedReportService {
    private final ReportRepository repository;

    @Autowired
    public Web080224(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {

        // Generate dummy data
        List<Web080224Vo> dataList = generateSampleDataList();
        Map<String, Object> data = new HashMap<>();

        data.put("dataList", dataList);
        data.put("outputName", "web080224");
        return data;
    }

    private List<Web080224Vo> generateSampleDataList() {
        List<Web080224Vo> dataList = new ArrayList<>();
        dataList.add(new Web080224Vo("Source1", new Date(), "CN-001", "John Doe", "Specialist1", new Date(), new Date(), 
                      "Answer1", "Answer2", "Answer3", "Answer4", "Answer5", "Answer6", "Answer7", "Answer8", "Answer9", 
                      "Answer10", "Answer11", "Answer12", "Answer13", "Answer14", "Answer15", "Answer16"));
        return dataList;
    }
}
