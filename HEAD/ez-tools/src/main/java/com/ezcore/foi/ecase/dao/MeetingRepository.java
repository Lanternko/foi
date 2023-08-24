package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ezcore.foi.ecase.dao.entity.Meeting;

public interface MeetingRepository extends JpaRepository<Meeting, String>, JpaSpecificationExecutor<Meeting> {

	@Query(value = "select count(m) from Meeting as m where m.session = :session")
	Integer cntMeetingBelongSession(@Param("session") Integer session);
	
}
