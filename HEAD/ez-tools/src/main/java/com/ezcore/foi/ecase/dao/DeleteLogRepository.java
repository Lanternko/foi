package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.DeleteLog;

public interface DeleteLogRepository extends JpaRepository<DeleteLog, String>, JpaSpecificationExecutor<DeleteLog> {

}
