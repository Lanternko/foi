package com.ezcore.tools.spreadsheetgen.worker;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.LogDataProjection;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

@Service("twosheets")
public class TwoSheets implements SharedReportService {

    private final ReportRepository reportRepository;  // Repository for fetching report data from the database

    // Constructor for dependency injection
    @Autowired
    public TwoSheets(ReportRepository reportRepository) {
        this.reportRepository = reportRepository;
    }

    // Fetch report data for multiple sheets
    @Override
    public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {
        // Parse and fetch data for the first sheet
        Timestamp beginTimestamp1 = Timestamp.valueOf(LocalDate.parse(params.get("beginDate1")).atStartOfDay());
	    Timestamp endTimestamp1 = Timestamp.valueOf(LocalDate.parse(params.get("endDate1")).atStartOfDay());
	    List<Map<String, Object>> logData1 = reportRepository.fetchLogData(beginTimestamp1, endTimestamp1);

        // Parse and fetch data for the second sheet
        Timestamp beginTimestamp2 = Timestamp.valueOf(LocalDate.parse(params.get("beginDate2")).atStartOfDay());
	    Timestamp endTimestamp2 = Timestamp.valueOf(LocalDate.parse(params.get("endDate2")).atStartOfDay());
	    List<Map<String, Object>> logData2 = reportRepository.fetchLogData(beginTimestamp2, endTimestamp2);

        // Put the data into the map
        Map<String, Object> data = new HashMap<>();
        data.put("dateRegion1", beginTimestamp1 + "至" + endTimestamp1);
        data.put("dateRegion2", beginTimestamp2 + "至" + endTimestamp2);
        data.put("outputName", "MultiSheetReport");
        data.put("name", "JOJO");
        data.put("dataList1", logData1);
        data.put("dataList2", logData2);

        return data;
    }
    
    @Override
    public boolean isMultiSheet() {
    	return true;
    }
}
