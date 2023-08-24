package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.MeetingMember;

public interface MeetingMemberRepository extends JpaRepository<MeetingMember, String>, JpaSpecificationExecutor<MeetingMember> {

}
