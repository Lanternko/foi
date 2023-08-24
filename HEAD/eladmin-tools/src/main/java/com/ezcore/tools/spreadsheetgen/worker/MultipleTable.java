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

// table2的column不能超過table1（寬度不能超過，否則不會自動往下移）
@Service("MultipleTable")
public class MultipleTable implements SharedReportService{
	private final ReportRepository reportRepository;  // Repository for fetching log data from the database
	
	// Constructor for dependency injection
	@Autowired
	public MultipleTable(ReportRepository reportRepository) {
	    this.reportRepository = reportRepository;
	}
	
	// Fetch log data between the given dates and with the given name
	@Override
	public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {
		// 1. 取出時間資料
		Timestamp startTimestamp = Timestamp.valueOf(LocalDate.parse(params.get("startDate")).atStartOfDay());
	    Timestamp endTimestamp = Timestamp.valueOf(LocalDate.parse(params.get("endDate")).atStartOfDay());
	    Timestamp startTimestamp2 = Timestamp.valueOf(LocalDate.parse(params.get("startDate2")).atStartOfDay());
	    Timestamp endTimestamp2 = Timestamp.valueOf(LocalDate.parse(params.get("endDate2")).atStartOfDay());
	    String name = params.get("name");
	 		 	
	    // 2. 根據時間間距，從資料庫取出2筆報錯資料
	    List<Map<String, Object>> logData = reportRepository.fetchLogData(startTimestamp, endTimestamp);
	    List<Map<String, Object>> otherData = reportRepository.fetchLogData(startTimestamp2, endTimestamp2);
	    
	    
	    // 3. 將資料放進另一個map裡
	    Map<String, Object> data = new HashMap<>();
	    data.put("outputName", "多重圖表");
	    data.put("dateRegion", startTimestamp + "至" + endTimestamp2);
	    data.put("name", name);
	    
	    data.put("dataList", logData);
	    data.put("otherList", otherData);
	
	    return data;    
	}

}
