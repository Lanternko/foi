package com.ezcore.tools.spreadsheetgen.repository;

import java.util.Date;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ezcore.tools.spreadsheetgen.objects.LogDataProjection;

import me.zhengjie.domain.Log;

public interface ReportRepository extends JpaRepository<Log, Long>{
	/* fetch the data of the example "LogReport", which count the error amount */
	@Query(value = 
			"SELECT " +
            "CAST(create_time AS DATE) AS date, " +
            "COUNT(CASE WHEN log_type = 'info' THEN 1 END) AS ok, " +
            "COUNT(CASE WHEN log_type = 'error_400' THEN 1 END) AS errNormal, " +
            "COUNT(CASE WHEN log_type IN ('error_901', 'error_903') THEN 1 END) AS errLogin, " +
            "COUNT(CASE WHEN log_type = 'error_950' THEN 1 END) AS errPermit, " +
            "COUNT(CASE WHEN log_type = 'error_999' THEN 1 END) AS errFatal " +
            "FROM sys_log " +
            "WHERE create_time BETWEEN :startDate AND :endDate " +
            "GROUP BY CAST(create_time AS DATE) " +
            "ORDER BY date", nativeQuery = true)
	List<Map<String, Object>> fetchLogData(@Param("startDate") Date startDate, @Param("endDate") Date endDate);
//	List<LogDataProjection> fetchLogData(@Param("startDate") Date startDate, @Param("endDate") Date endDate);

}