package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.lang.Nullable;

import com.ezcore.foi.ecase.dao.dto.HistorySessionMemberDetailsDto;
import com.ezcore.foi.ecase.dao.dto.custom.HistorySessionInfoDtoProjection;
import com.ezcore.foi.ecase.dao.entity.Codedetail;
import com.ezcore.foi.ecase.dao.entity.Member;
import com.ezcore.foi.ecase.dao.entity.SessionMember;
import com.ezcore.foi.ecase.model.bo.SessionMemberBo;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;

public interface SessionMemberRepository extends JpaRepository<SessionMember, String>, JpaSpecificationExecutor<SessionMember> {

	/**
	 * 取得歷屆委員清單<br>
	 * * 此query的「for xml path('')」為sql server專有語法，hibernate不支援，因此直接使用(native query)
	 */
	@Query(value = "select "
				 + "a.code as session, "
				 + "a.property1 as beginDate, "
				 + "a.property2 as endDate , "
				 + "(select concat('【共' ,count(*) ,'人】') "
				 + "  from session_member d "
				 + "  inner join  member c on d.member_tid = c.id "
				 + "  where a.cid = d.session_cid ) as memberCnt, "
				 + "substring ((select '、' + c.name "
				 + "  from session_member b "
				 + "  inner join  member c on b.member_tid = c.id "
				 + "  where a.cid = b.session_cid "
				 + "  order by b.seq_no "
			 	 + "  for xml path('')) ,2,999) as memberNames "
			 	 + "from codedetail a  "
			 	 + "where kind = 'session' "
				 + "order by a.sort_code desc", nativeQuery = true)
	List<HistorySessionInfoDtoProjection> getHistorySessionInfos();
	
	/**
	 * 取得屆次
	 */
	@Query(value = "select new com.ezcore.foi.ecase.dao.dto.HistorySessionMemberDetailsDto("
				 + "a.cid as sessionCid, a.code as session, a.property1 as beginDate, a.property2 as endDate "
			 	 + ") from Codedetail a "
			 	 + "where a.kind = 'session' "
			 	 + "  and a.code = :session")
	HistorySessionMemberDetailsDto getHistorySession(@Param("session") String session);
	
	/**
	 * 取得屆次下委員清單
	 */
	@Query(value = "select "
				 + "new com.ezcore.foi.ecase.model.bo.SessionMemberBo("
				 + " a.id as memberTid, "
				 + " (case when b.id is null then 0 else 1 end) as selected, "
				 + " b.seqNo as seqNo, "
				 + " a.name as name, "
				 + " domain.name as domainName, "
				 + " (case when b.delFlag is null then 0 else b.delFlag end) as delFlag "
				 + ") from Member a "
				 + "   left outer join SessionMember b "
				 + "     on b.member.id = a.id and b.sessionCode.cid = :sessionCid "
				 + "   left outer join Codedetail domain "
				 + "     on domain.cid = a.domainCode.cid "
				 + "   inner join Codedetail as memberType "
				 + "     on memberType.cid = a.memberTypeCode.cid and memberType.code = 'exam' "
				 + "  where a.delFlag = 0 "
				 + "  order by (case when b.seqNo is null then 999 else b.seqNo end), a.seqNo")
	List<SessionMemberBo> getHistorySessionMembers(@Param("sessionCid") @Nullable Long sessionCid);
	
	List<SessionMember> findByMember(Member member);
	
	SessionMember findByMemberAndSessionCode(Member member, CodeDetailDto sessionCode);
	
	List<SessionMember> findBySessionCodeOrderBySeqNoAsc(CodeDetailDto sessionCode);
	
	@Query(value = "select isnull(max(a.seqNo), 0) from SessionMember as a where a.sessionCode.cid = :sessionCid")
	Integer getCurrentMaxSeqNo(@Param("sessionCid") Long sessionCid);
	
}
