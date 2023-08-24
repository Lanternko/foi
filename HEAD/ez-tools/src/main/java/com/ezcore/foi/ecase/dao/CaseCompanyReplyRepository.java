package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseCompanyReply;

public interface CaseCompanyReplyRepository extends JpaRepository<CaseCompanyReply, String>, JpaSpecificationExecutor<CaseCompanyReply> {

	CaseCompanyReply findByCaseMasterTid(String caseMasterTid);
	
}
