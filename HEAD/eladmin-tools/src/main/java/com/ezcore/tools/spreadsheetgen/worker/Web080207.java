package com.ezcore.tools.spreadsheetgen.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.Web080207Vo;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("web080207")
public class Web080207 implements SharedReportService {
    private final ReportRepository repository;

    @Autowired
    public Web080207(ReportRepository repository) {
        this.repository = repository;
    }

    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {

        // Generate dummy data
        List<Web080207Vo> dataList = generateSampleDataList();
        Map<String, Object> data = new HashMap<>();

        data.put("dateRegion", "2023-07");
        data.put("recipient", "Email");
        data.put("industry", "Finance");
        data.put("deliver", "Deliver1");
        data.put("count", 100);
        data.put("renew", 30);
        data.put("charge", 20);
        data.put("type", "Type1");
        data.put("label", "Label1");
        data.put("dataList", dataList);
        data.put("outputName", "web080207");
        return data;
    }

    private List<Web080207Vo> generateSampleDataList() {
        List<Web080207Vo> dataList = new ArrayList<>();
        dataList.add(new Web080207Vo(1, "Delivery1", false, new Date(), "CaseNum1", "CommentCaseNum1", "Section1+Specialist1", "Applicant1", "AppealNumCase1", "GoodsServiceType1", "ControversialSort1", "ClosureOfCase1", "CaseAttribute1", 10, "CaseLabel1"));
        dataList.add(new Web080207Vo(2, "Delivery2", true, new Date(), "CaseNum2", "CommentCaseNum2", "Section2+Specialist2", "Applicant2", "AppealNumCase2", "GoodsServiceType2", "ControversialSort2", "ClosureOfCase2", "CaseAttribute2", 20, "CaseLabel2"));
        dataList.add(new Web080207Vo(3, "Delivery3", false, new Date(), "CaseNum3", "CommentCaseNum3", "Section3+Specialist3", "Applicant3", "AppealNumCase3", "GoodsServiceType3", "ControversialSort3", "ClosureOfCase3", "CaseAttribute3", 30, "CaseLabel3"));
        return dataList;
    }
}
