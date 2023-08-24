package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseReceiveOther;

public interface CaseReceiveOtherRepository extends JpaRepository<CaseReceiveOther, String>, JpaSpecificationExecutor<CaseReceiveOther> {
    
    List<CaseReceiveOther> findAllByCaseMasterTidAndRefOtherCid(String caseMasterTid, Long refOtherCid);

}
