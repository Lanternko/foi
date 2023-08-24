package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.MeetingFile;

public interface MeetingFileRepository extends JpaRepository<MeetingFile, String>, JpaSpecificationExecutor<MeetingFile> {

}
