package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.MeetingDecide;

public interface MeetingDecideRepository extends JpaRepository<MeetingDecide, String>, JpaSpecificationExecutor<MeetingDecide> {

	Integer countByCaseMasterTid(String caseMasterTid);
	
}
