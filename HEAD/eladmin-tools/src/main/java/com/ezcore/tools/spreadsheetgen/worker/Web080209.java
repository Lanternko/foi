package com.ezcore.tools.spreadsheetgen.worker;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.spreadsheetgen.objects.LogDataProjection;
import com.ezcore.tools.spreadsheetgen.repository.ReportRepository;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;
@Service("web080209")
public class Web080209 implements SharedReportService{
	private final ReportRepository repository;  // Repository for fetching log data from the database
	
	// Constructor for dependency injection
	@Autowired
	public Web080209(ReportRepository repository) {
	    this.repository = repository;
	}
	
	@Override
	public Map<String, Object> getDataMapFromServiceImp(String templateName, Map<String, String> params) {
		// 1. 從map獲取資料
		String BDS = params.get("beginDate");
		String EDS = params.get("endDate");
		long beginDateMillis = BDS != null && !BDS.isEmpty() && !BDS.equals("null") ? 
				Long.parseLong(BDS) : 
				Timestamp.valueOf("2023-01-01 00:00:00").getTime(); // 從 Map 獲取開始日期
		long endDateMillis = EDS != null && !EDS.isEmpty() && !EDS.equals("null") ? 
				Long.parseLong(EDS) : 
				new Timestamp(System.currentTimeMillis()).getTime(); // 從 Map 獲取結束日期
		
		// 2. 轉換時間格式
	 	Timestamp startTimestamp = new Timestamp(beginDateMillis);
	 	Timestamp endTimestamp = new Timestamp(endDateMillis);

	 		 	
	    // 3. 根據時間間距，從資料庫取出報錯資料
	    List<Map<String, Object>> logData = repository.fetchLogData(startTimestamp, endTimestamp);
//	    List<LogDataProjection> logData = repository.fetchLogData(startTimestamp, endTimestamp);

	    Map<String, Object> data = new HashMap<>();
	    
	    // 4. 抓取報表要顯示的時間格式
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	    String formattedStartDate = startTimestamp.toLocalDateTime().format(formatter);
	    String formattedEndDate = endTimestamp.toLocalDateTime().format(formatter);
	    LocalDate currentDate = LocalDate.now();
	    String formattedDate = currentDate.format(DateTimeFormatter.ISO_DATE);
	    
	    // 5. 將資料放進另一個map裡
	    data.put("dateRegion", formattedStartDate + "至" + formattedEndDate);
	    data.put("dataList", logData); // 表身
	    data.put("outputName", "申訴案件處理情形統計表");
	    
	    data.put("currentDate", formattedDate);
	    data.put("industry", "銀行業");
	    data.put("name", "trying");
	    data.put("mailMethod", "本人親自");
	    data.put("countAmount", "不區分");
	    data.put("continueProcess", "下次一定");
	    data.put("chargeFee", 2000);

	    return data;    
	}
}

/*
http://localhost:8000/tools/report/api/vi/?report=web080209
&type=%E6%9C%88%E5%A0%B1
&year=2022%E5%B9%B4
&month=%E4%B8%80%E6%9C%88
&inMethod=%E4%B8%8D%E5%8D%80%E5%88%86
&beginDate=Thu%20Jun%2001%202023%2000:00:00%20GMT+0800%20(%E5%8F%B0%E5%8C%97%E6%A8%99%E6%BA%96%E6%99%82%E9%96%93)
&endDate=Thu%20Jun%2022%202023%2000:00:00%20GMT+0800%20(%E5%8F%B0%E5%8C%97%E6%A8%99%E6%BA%96%E6%99%82%E9%96%93)
&companyIndustry=,,
&company=null
&isMark=%E4%B8%8D%E5%8D%80%E5%88%86
&isContinue=%E4%B8%8D%E5%8D%80%E5%88%86
&isFree=%E4%B8%8D%E5%8D%80%E5%88%86
&isUseCloseDate=false
&tags=%E7%84%A1%E6%8C%87%E5%AE%9A:%E6%A1%88%E4%BB%B6%E4%B8%BB%E7%AD%89%E6%B2%92%E6%9C%89%E6%8C%87%E5%AE%9A%E4%BB%BB%E4%BD%95%E6%A8%99%E7%B1%A4,%E9%98%B2%E7%96%AB%E4%BF%9D%E5%96%AE%E7%88%AD%E8%AD%B0,test1,%E8%BA%AB%E5%BF%83%E9%9A%9C%E7%A4%99
*/