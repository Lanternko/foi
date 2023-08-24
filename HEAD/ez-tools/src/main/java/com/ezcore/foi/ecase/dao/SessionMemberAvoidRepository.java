package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ezcore.foi.ecase.dao.entity.Company;
import com.ezcore.foi.ecase.dao.entity.SessionMember;
import com.ezcore.foi.ecase.dao.entity.SessionMemberAvoid;
import com.ezcore.foi.ecase.model.bo.SessionMemberAvoidBo;

public interface SessionMemberAvoidRepository extends JpaRepository<SessionMemberAvoid, String>, JpaSpecificationExecutor<SessionMemberAvoid> {

	/**
	 * 查迴避公司id、名稱
	 */
	@Query(value = "select new com.ezcore.foi.ecase.model.bo.SessionMemberAvoidBo("
				 + "	a.id as compnayTid, a.name as companyName) from Company a "
				 + "	left join SessionMemberAvoid b on a.id = b.company.id "
				 + "	left join SessionMember c on c.id = b.sessionMember.id "
				 + "	left join Member d on d.id = c.member.id "
				 + "where d.id = convert(uniqueidentifier, :memberTid)")
	List<SessionMemberAvoidBo> findSessionMemberAvoids(@Param("memberTid") String memberTid);
	
	List<SessionMemberAvoid> findBySessionMember(SessionMember sessionMember);
	
	SessionMemberAvoid findBySessionMemberAndCompany(SessionMember sessionMember, Company company);
	
	
}
