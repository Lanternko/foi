package com.ezcore.tools.demo.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.ezcore.tools.demo.dao.entity.Demo;

// jpa repository
// 詳細的方法命名方式請參照spring官方文件
// https://docs.spring.io/spring-data/jpa/docs/1.6.0.RELEASE/reference/html/jpa.repositories.html
public interface DemoRepository extends JpaRepository<Demo, Long>, JpaSpecificationExecutor<Demo> {
	
//	select * from __demo
//	List<Demo> findAll();
	@Query(nativeQuery = true, name = "DemoQuery.selectAllNativeTest")
	List<Demo> findAll();

//	select * from __demo where __demo_id = ? and create_by = ? and create_time > ? order by __demo_id
	List<Demo> findByIdAndCreateByAndCreateTimeGreaterThanOrderById(Long id, String createBy, Date createTime);
	
//	select * from __demo where __demo_msg_b = ? and create_by = ? order by __demo_id desc
//	但僅回傳符合條件的最新一筆資料
//	Demo findFirstByDemoMsgbAndCreateByOrderByIdDesc(String demoMsgb, String createBy);
	@Query(nativeQuery = true, name = "DemoQuery.selectOneNativeTest")
	List<Demo> findFirstByDemoMsgbAndCreateByOrderByIdDesc(@Param("demoMsgb") String demoMsgb, @Param("createBy") String createBy);
	
//	僅示範native query寫法，但不推薦這樣做，尤其是用於查詢 (回傳型別會變成Object，很難處理)
	@Modifying @Transactional
	@Query(value = "update __demo set __demo_msg_a = ?1, __demo_msg_b = ?2, __demo_msg_c = ?3 where __demo_id = ?4", nativeQuery = true)
	void updateByNativeQuery(String newMsgA, String newMsgB, String newMsgC, String id);
	
//	function呼叫範例，db裡須已存在名為testGetDataPremission的function
	@Query(value = "select testGetDataPremission(?1)", nativeQuery = true)
	String getPremissionStr(String userName);
	
}
