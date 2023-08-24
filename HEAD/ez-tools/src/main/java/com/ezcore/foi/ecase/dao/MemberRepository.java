package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ezcore.foi.ecase.dao.entity.Member;
import com.ezcore.foi.ecase.model.bo.MemberBo;

public interface MemberRepository extends JpaRepository<Member, String>, JpaSpecificationExecutor<Member> {

	/**
	 * 依條件查詢委員資料清單
	 */
	@Query(value = "select "
				 + "new com.ezcore.foi.ecase.model.bo.MemberBo("
				 + "a.id as id, "
				 + "a.memberTypeCode.cid as memberTypeCid, "
				 + "memberType.name as memberTypeName, "
				 + "a.account as account, "
				 + "a.name as name, "
				 + "a.domainCode.cid as domainCid, "
				 + "domain.name as domainName, "
				 + "a.sex as sex, "
				 + "a.telNo as telNo, "
				 + "a.extNo as extNo, "
				 + "a.email1 as email1, "
				 + "a.email2 as email2, "
				 + "a.bankDesc as bankDesc, "
				 + "a.bankAccount as bankAccount, "
				 + "a.delFlag as delFlag "
				 + ") from Member as a "
				 + "left outer join Codedetail as memberType on memberType.cid = a.memberTypeCode.cid "
				 + "left outer join Codedetail as domain on domain.cid = a.domainCode.cid "
				 + "where a.memberTypeCode.cid = :memberTypeCid "
				 + "and (:id is null or a.id = :id) "
				 + "order by a.seqNo")
	List<MemberBo> getMembers(@Param("memberTypeCid") Long memberTypeCid, @Param("id") String id);
	
	@Query(value = "select isnull(max(a.seqNo), 0) from Member as a where a.memberTypeCode.cid = :memberTypeCid")
	Integer getCurrentMaxSeqNo(@Param("memberTypeCid") Long memberTypeCid);
	
	
}
