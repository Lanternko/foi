package com.ezcore.tools.spreadsheetgen.worker;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.LogDataProjection;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

//Service responsible for fetching log data
@Service("LogReport")
public class LogReportServiceImpl implements SharedReportService{
	private final ReportRepository logRepository;  // Repository for fetching log data from the database
	
	// Constructor for dependency injection
	@Autowired
	public LogReportServiceImpl(ReportRepository logRepository) {
	    this.logRepository = logRepository;
	}
	// Fetch log data between the given dates and with the given name
	@Override
	public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {
		// 1. 從map獲取資料
		LocalDate startDate = LocalDate.parse(params.get("startDate"));  // 從 Map 獲取開始日期
	  	LocalDate endDate = LocalDate.parse(params.get("endDate"));  // 從 Map 獲取結束日期
		String name = params.get("name");  // 從 Map 獲取名稱
		
		// 2. 轉換時間格式
	 	Timestamp startTimestamp = Timestamp.valueOf(startDate.atStartOfDay());
	 	Timestamp endTimestamp = Timestamp.valueOf(endDate.atStartOfDay());
	 		 	
	    // 3. 根據時間間距，從資料庫取出報錯資料
//	    List<LogDataProjection> logData = logRepository.fetchLogData(startTimestamp, endTimestamp);
	 	List<Map<String, Object>> logData = logRepository.fetchLogData(startTimestamp, endTimestamp);
//	    List<Map<String, Object>> logData = new ArrayList<>(); // 不知道現在要改什麼
// use list<map<>>
	    
	    Map<String, Object> data = new HashMap<>();
//	    data.put("date", "0711");
//	    data.put("ok", "ddsa");
//	    data.put("errNormal", "ddsa");
//	    logData.add(data);
	    
	    
	    // 4. 將資料放進另一個map裡
	    data.put("dateRegion", startDate + "至" + endDate);
	    data.put("name", name);
	    data.put("outputName", "系統報錯次數");
	    data.put("dataList", logData); // 表身
	
	    return data;    
	}

}
