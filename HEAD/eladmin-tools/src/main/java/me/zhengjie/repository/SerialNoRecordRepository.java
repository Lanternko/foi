package me.zhengjie.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import me.zhengjie.domain.SerialNoRecord;
import me.zhengjie.domain.compositeid.SerialNoRecordId;

public interface SerialNoRecordRepository extends JpaRepository<SerialNoRecord, SerialNoRecordId>, JpaSpecificationExecutor<SerialNoRecord> {

}
