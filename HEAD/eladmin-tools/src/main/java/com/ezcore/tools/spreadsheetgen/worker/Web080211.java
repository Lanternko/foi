package com.ezcore.tools.spreadsheetgen.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080211Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

import me.zhengjie.utils.StringUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("web080211")
public class Web080211 implements SharedReportService {
    private final ReportRepository repository;

    @Autowired
    public Web080211(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {

        // Generate dummy data
        List<Web080211Vo> dataList = generateSampleDataList();
        Map<String, Object> data = new HashMap<>();

        data.put("dateRegion", "2023-07");
        data.put("recipient", "Email");
        data.put("industry", "Finance");
        data.put("count", 100);
        data.put("renew", 30);
        data.put("charge", 20);
        data.put("dataList", dataList);
        data.put("outputName", "web080211");
        return data;
    }

    private List<Web080211Vo> generateSampleDataList() {
        List<Web080211Vo> dataList = new ArrayList<>();
        dataList.add(new Web080211Vo("Company1", 10, 20, 30));
        dataList.add(new Web080211Vo("Company2", 20, 30, 40));
        dataList.add(new Web080211Vo("Company3", 30, 40, 50));
        return dataList;
    }
}
