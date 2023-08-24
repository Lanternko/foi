package com.ezcore.foi.ecase.service.impl;

import static com.ezcore.common.utils.VerifyInputs.isValidDate;
import static com.ezcore.common.utils.VerifyInputs.isValidDigitString;
import static com.ezcore.common.utils.VerifyInputs.isValidName;
import static com.ezcore.common.utils.VerifyInputs.isValidTWDate;
import static com.ezcore.common.utils.VerifyInputs.isValidUUID;
import static com.ezcore.common.utils.VerifyInputs.isValidWordString;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.common.utils.ModifyLogWriter;
import com.ezcore.foi.common.FoiConstants;
import com.ezcore.foi.ecase.dao.CodedetailRepository;
import com.ezcore.foi.ecase.dao.CompanyRepository;
import com.ezcore.foi.ecase.dao.MeetingRepository;
import com.ezcore.foi.ecase.dao.MemberRepository;
import com.ezcore.foi.ecase.dao.SessionMemberAvoidRepository;
import com.ezcore.foi.ecase.dao.SessionMemberRepository;
import com.ezcore.foi.ecase.dao.dto.HistorySessionInfoDto;
import com.ezcore.foi.ecase.dao.dto.HistorySessionMemberDetailsDto;
import com.ezcore.foi.ecase.dao.dto.custom.HistorySessionInfoDtoProjection;
import com.ezcore.foi.ecase.dao.entity.Codedetail;
import com.ezcore.foi.ecase.dao.entity.Company;
import com.ezcore.foi.ecase.dao.entity.Member;
import com.ezcore.foi.ecase.dao.entity.SessionMember;
import com.ezcore.foi.ecase.dao.entity.SessionMemberAvoid;
import com.ezcore.foi.ecase.model.bo.SessionMemberAvoidBo;
import com.ezcore.foi.ecase.model.bo.SessionMemberBo;
import com.ezcore.foi.ecase.service.SessionMemberService;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;

import lombok.RequiredArgsConstructor;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.utils.DateUtil;
import me.zhengjie.utils.SecurityUtils;

@Service
@RequiredArgsConstructor
public class SessionMemberServiceImpl implements SessionMemberService {

	@Autowired
	private MemberRepository memberRepository;
	@Autowired
	private SessionMemberRepository sessionMemberRepository;
	@Autowired
	private SessionMemberAvoidRepository sessionMemberAvoidRepository;
	@Autowired
	private CompanyRepository companyRepository;
	@Autowired
	private CodedetailRepository codedetailRepository;
	@Autowired
	private MeetingRepository meetingRepository;
	@Autowired
	private ModifyLogWriter logWriter;
	
	@Override
	public List<HistorySessionInfoDto> getList() {
		List<HistorySessionInfoDtoProjection> projections = sessionMemberRepository.getHistorySessionInfos();
		
		List<HistorySessionInfoDto> rtn = new ArrayList<>();
		for (HistorySessionInfoDtoProjection projection : projections) {
			HistorySessionInfoDto dto = new HistorySessionInfoDto();
			dto.setSession(projection.getSession());
			dto.setBeginDate(projection.getBeginDate());
			dto.setEndDate(projection.getEndDate());
			dto.setMemberNames(projection.getMemberNames());
			dto.setMemberCnt(projection.getMemberCnt());
			
			rtn.add(dto);
		}
		return rtn;
	}

	@Override
	public HistorySessionMemberDetailsDto get(String session) {
		
//		validateSession(session);

		List<SessionMemberBo> sessionMembers = null;
		HistorySessionMemberDetailsDto historySession = null;
		if (FoiConstants.NULL.equals(session)) {
			historySession = new HistorySessionMemberDetailsDto();
			sessionMembers = sessionMemberRepository.getHistorySessionMembers(null);	
		} else {
// 			查歷史屆次
			historySession = sessionMemberRepository.getHistorySession(session);
// 			查參與該屆的人員
			sessionMembers = sessionMemberRepository.getHistorySessionMembers(historySession.getSessionCid());	
		}

		for (SessionMemberBo bo : sessionMembers) {
//			查人員應迴避的公司
			bo.setAvoids(sessionMemberAvoidRepository.findSessionMemberAvoids(bo.getMemberTid()));
		}
		historySession.setMembers(sessionMembers);
		return historySession;
	}

	@Override
	public void update(HistorySessionMemberDetailsDto req) {
//		日期有效性等檢查
//		validateHistorySessionMemberDetailsDto(req);
		
		if (req.getSessionCid() == null) {
//			sessionCid為空值時執行新增
			insertSessionMember(req);
		} else {
			updateSessionMember(req);
		}
	}

	@Override
	public void delete(Integer session) {
//   	Convert session to string and validate
	    String sessionStr = String.valueOf(session);
	    validateSession(sessionStr);
	    
//	    Codedetail code = codedetailRepository.findByKindAndCode(Constants.SESSION, session.toString());
	    CodeDetailDto code = CodeDetailMap.get(FoiConstants.SESSION, session.toString());
	    List<SessionMember> sessionMembers = sessionMemberRepository.findBySessionCodeOrderBySeqNoAsc(code);
//	    寫入delete_log
	    for (SessionMember sm : sessionMembers) {
	    	logWriter.newDeleteRecord(sm.getId(), FoiConstants.SESSION_MEMBER);
	    	for (SessionMemberAvoid sma : sm.getAvoids()) {
	    		logWriter.newDeleteRecord(sma.getId(), FoiConstants.SESSION_MEMBER_AVOID);
	    	}
	    }
//		刪除屆次委員、迴避公司mapping
	    sessionMemberRepository.deleteAll(sessionMembers);
//	    刪除屆次代碼
//		codedetailRepository.delete(code);
	    CodeDetailMap.delete(code.getCid());
	}

	@Override
	public boolean deleteCheck(Integer session) {
//   	Convert session to string and validate
	    String sessionStr = String.valueOf(session);
	    validateSession(sessionStr);

		return meetingRepository.cntMeetingBelongSession(session) > 0 ? true : false;
	}
	
	private void insertSessionMember(HistorySessionMemberDetailsDto req) {
//		再確認屆次是否存在
//		if (codedetailRepository.findByKindAndCode(Constants.SESSION, req.getSession()) != null) {
		if (CodeDetailMap.get(FoiConstants.SESSION, req.getSession()) != null) {
			throw new BadRequestException("屆次已存在，無法執行新增");
		}

		Codedetail newCode = new Codedetail();
		newCode.setKind(FoiConstants.SESSION);
		newCode.setCode(req.getSession());
		newCode.setName(req.getSession());
		newCode.setProperty1(req.getBeginDate());
		newCode.setProperty2(req.getEndDate());		
//		新增一筆業務代碼
		Codedetail newSession = codedetailRepository.saveAndFlush(newCode);
//		CodeDetailDto newSession = codeDetailMap.insert(newCode);
		
		for (SessionMemberBo bo : req.getMembers()) {
			if (bo.getSelected() == 0) {
//				未選取時忽略
				continue;
			}
			
//			查出被選取的(selected == 1)委員資料
			Member member = memberRepository.findById(bo.getMemberTid()).orElse(null);
			if (member == null) {
				throw new BadRequestException(String.format("委員(id=%s)不存在", bo.getMemberTid()));
			}
			
			SessionMember newSessionMember = new SessionMember();
			newSessionMember.setId(UUID.randomUUID().toString());
			newSessionMember.setSessionCode(newSession);
			newSessionMember.setSeqNo(bo.getSeqNo());
			newSessionMember.setMember(member);	
			newSessionMember.setSeqNo(sessionMemberRepository.getCurrentMaxSeqNo(newSession.getCid()) + 1);
			newSessionMember.setDelFlag(false);

			List<SessionMemberAvoid> newAvoids = new ArrayList<>();
			for (SessionMemberAvoidBo avoid : bo.getAvoids()) {
//				查出該委員應迴避的對象公司
				Company avoidCompany = companyRepository.findById(avoid.getCompnayTid()).orElse(null);
				if (avoidCompany == null) {
					throw new BadRequestException(String.format("公司(id=%s)不存在", avoid.getCompnayTid()));
				}
				
				SessionMemberAvoid newAvoid = new SessionMemberAvoid();
				newAvoid.setId(UUID.randomUUID().toString());
				newAvoid.setSessionMember(newSessionMember);
				newAvoid.setCompany(avoidCompany);
				newAvoid.setCreateBy(SecurityUtils.getCurrentUsername());
				newAvoid.setCreateTime(DateUtil.getSystemTime());

//				新增一筆應迴避公司
				newAvoids.add(newAvoid);
			}
			newSessionMember.setAvoids(newAvoids);
//			新增一位屆次委員
			sessionMemberRepository.saveAndFlush(newSessionMember);
		}
	}
	
	private void updateSessionMember(HistorySessionMemberDetailsDto req) {
//		再確認屆次是否存在
//		Codedetail code = codedetailRepository.findByKindAndCode(Constants.SESSION, req.getSession());
		CodeDetailDto code = CodeDetailMap.get(FoiConstants.SESSION, req.getSession());
		if (code == null) {
			throw new BadRequestException(String.format("屆次(%s)不存在，無法執行更新", req.getSession()));
		}
		
		code.setProperty1(req.getBeginDate());
		code.setProperty2(req.getEndDate());
//		更新代碼中的屆次日期
//		codedetailRepository.saveAndFlush(code);
		CodeDetailMap.insert(code);
		
		int newSeq = 1;
		for (SessionMemberBo bo : req.getMembers()) {
			Member member = memberRepository.findById(bo.getMemberTid()).orElse(null);
//			查詢該委員是否已為屆次委員
//			Codedetail sessionCode = codedetailRepository.findById(req.getSessionCid()).orElse(null);
			CodeDetailDto sessionCode = CodeDetailMap.get(req.getSessionCid());
			if (sessionCode == null) {
				throw new BadRequestException(String.format("屆次(id=%s)不存在", req.getSessionCid()));
			}
			SessionMember sessionMember = sessionMemberRepository.findByMemberAndSessionCode(member, sessionCode);
			
			if (bo.getSelected() == 0 && sessionMember == null) {
//				非當屆委員且未被勾選時直接忽略
				continue;
			}
			
			if (bo.getSelected() == 0 && sessionMember != null) {
				sessionMemberRepository.delete(sessionMember);
//				刪除時同步寫入一筆刪除紀錄
				logWriter.newDeleteRecord(sessionMember.getId(), FoiConstants.SESSION_MEMBER);
				
//				刪除屆次委員應迴避公司
				for (SessionMemberAvoid avoid : sessionMember.getAvoids()) {
					sessionMemberAvoidRepository.delete(avoid);
//					刪除時同步寫入一筆刪除紀錄
					logWriter.newDeleteRecord(avoid.getId(), FoiConstants.SESSION_MEMBER_AVOID);
				}
			}
			
			if (bo.getSelected() == 1 && sessionMember == null) {
				SessionMember newSessionMember = new SessionMember();
				newSessionMember.setId(UUID.randomUUID().toString());
				
				Codedetail sessionCodeB = codedetailRepository.findById(req.getSessionCid()).orElse(null);
//				CodeDetailDto sessionCodeB = codeDetailMap.get(req.getSessionCid());
				if (sessionCodeB == null) {
					throw new BadRequestException(String.format("屆次(id=%s)不存在", req.getSessionCid()));
				}
				newSessionMember.setSessionCode(sessionCodeB);
				newSessionMember.setSeqNo(newSeq ++);
				newSessionMember.setMember(member);
				newSessionMember.setDelFlag(bo.getDelFlag() == 1 ? true : false);

				List<SessionMemberAvoid> newAvoids = new ArrayList<>();;
				for (SessionMemberAvoidBo avoid : bo.getAvoids()) {
//					查出該委員應迴避的對象公司
					Company avoidCompany = companyRepository.findById(avoid.getCompnayTid()).get();
					
					SessionMemberAvoid newAvoid = new SessionMemberAvoid();
					newAvoid.setId(UUID.randomUUID().toString());
					newAvoid.setSessionMember(newSessionMember);
					newAvoid.setCompany(avoidCompany);
					newAvoid.setCreateBy(SecurityUtils.getCurrentUsername());
					newAvoid.setCreateTime(DateUtil.getSystemTime());
//					新增一筆應迴避公司
					newAvoids.add(newAvoid);
				}
				newSessionMember.setAvoids(newAvoids);
				
				sessionMemberRepository.saveAndFlush(newSessionMember);
			}
			
			if (bo.getSelected() == 1 && sessionMember != null) {
				sessionMember.setSeqNo(newSeq ++);
				sessionMember.setDelFlag(bo.getDelFlag() == 1 ? true : false);
				sessionMemberRepository.saveAndFlush(sessionMember);
				
				List<SessionMemberAvoid> currentAvoids = sessionMember.getAvoids();
			
				Set<String> newCompanyTids = new HashSet<>();
				for (SessionMemberAvoidBo newAvoid : bo.getAvoids()) {
					newCompanyTids.add(newAvoid.getCompnayTid());
				}
				
//				比對新舊迴避公司清單
				for (int i = 0 ; i < currentAvoids.size() ; i ++) {
					String currentTid = currentAvoids.get(i).getCompany().getId();
					if (newCompanyTids.contains(currentTid)) {
//						現有companyTid存在於newCompanyTids時無須理會
						newCompanyTids.remove(currentTid);
					} else {
//						現有companyTid不存在於newCompanyTids時為需移除的公司
						SessionMemberAvoid forDelete = currentAvoids.remove(i);
						sessionMemberAvoidRepository.delete(forDelete);
//						刪除時同步寫入一筆刪除紀錄
						logWriter.newDeleteRecord(forDelete.getId(), FoiConstants.SESSION_MEMBER_AVOID);
						i --;
					}
				}
				
//				newCompanyTids中剩餘的id為當前不存在，需新增的公司
				for (String companyTid : newCompanyTids) {
//					查出該公司
					Company newAvoidCompany = companyRepository.findById(companyTid).get();
					
					SessionMemberAvoid newAvoid = new SessionMemberAvoid();
					newAvoid.setSessionMember(sessionMember);
					newAvoid.setCompany(newAvoidCompany);
//					新增一筆應迴避公司
					sessionMemberAvoidRepository.saveAndFlush(newAvoid);
				}
			}
		}
		
//		*註解說明: 在前端有傳「完整」名單的前提下，不用做以下事情
//		更新內容包含刪除時，重排當屆委員序號，避免跳號
//		if (deleted) {
//			Codedetail sessionCode = codedetailRepository.findById(req.getSessionCid()).orElse(null);
//			List<SessionMember> sessionMembers = sessionMemberRepository.findBySessionCodeOrderBySeqNoAsc(sessionCode);
//			for (int i = 0 ; i < sessionMembers.size() ; i ++) {
//				sessionMembers.get(i).setSeqNo(i + 1);
//			}
//			sessionMemberRepository.saveAllAndFlush(sessionMembers);
//		}
	}

//	------------------------------------------------------------
	/*
	define the validation of this script
	 */
	public void validateGetList(List<HistorySessionInfoDto> list) throws BadRequestException {
	    if (list == null || list.size() == 0) {
	        throw new BadRequestException("請求的List不能為空");
	    }

	    for (HistorySessionInfoDto dto : list) {
	        // 驗證 session 是否為有效的字串
	        if (dto.getSession() == null || dto.getSession().trim().isEmpty()) {
	            throw new BadRequestException("Session不能為空");
	        }

	        // 驗證 beginDate 是否為有效的日期
	        if (!isValidDate(dto.getBeginDate())) {
	            throw new BadRequestException("beginDate必須是一個有效的日期");
	        }

	        // 驗證 endDate 是否為有效的日期
	        if (!isValidDate(dto.getEndDate())) {
	            throw new BadRequestException("endDate必須是一個有效的日期");
	        }

	        // 驗證 memberCnt 是否只包含數字
	        String memberCntStr = dto.getMemberCnt().replaceAll("[^0-9]", "");
	        if (!isValidDigitString(memberCntStr, 1, 10)) {
	            throw new BadRequestException("memberCnt必須是1至10位數的數字");
	        }

	        // 驗證 memberNames 是否有效
	        if (dto.getMemberNames() == null || dto.getMemberNames().trim().isEmpty()) {
	            throw new BadRequestException("memberNames不能為空");
	        }
	    }
	}
	public void validateSession(String session) throws BadRequestException {
	    // Check if session is a valid string
	    if (session == null || session.trim().isEmpty()) {
	        throw new BadRequestException("Session cannot be null or empty");
	    }
	    
	    // 驗證 Session是否為有效數字
        if (!isValidDigitString(session, 1, 20)) {
            throw new BadRequestException("Session必須是數字");
        }
	}
	public void validateHistorySessionMemberDetailsDto(HistorySessionMemberDetailsDto req) throws BadRequestException {
	    // Check if session is a valid string
	    if (!isValidDigitString(req.getSession(), 1, 100)) {
	        throw new BadRequestException("Invalid session");
	    }

	    // Check if beginDate and endDate are valid date strings
	    if (!isValidTWDate(req.getBeginDate()) || !isValidTWDate(req.getEndDate())) {
	        throw new BadRequestException("Invalid date format for BeginDate or EndDate");
	    }

	    // Check if beginDate is before or equal to endDate
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	    LocalDate beginDate = LocalDate.parse(req.getBeginDate(), formatter);
	    LocalDate endDate = LocalDate.parse(req.getEndDate(), formatter);
	    if (beginDate.isAfter(endDate)) {
	        throw new BadRequestException("BeginDate cannot be after EndDate");
	    }

	    // Check if members is not null or empty
	    if (req.getMembers() == null || req.getMembers().isEmpty()) {
	        throw new BadRequestException("Members cannot be null or empty");
	    }

	    // Check if each SessionMemberBo object in members is valid
	    for (SessionMemberBo bo : req.getMembers()) {
	        // Check if memberTid is valid UUID
	        if (!isValidUUID(bo.getMemberTid())) {
	            throw new BadRequestException("Invalid MemberTid for a SessionMemberBo");
	        }

	        // Check if selected is either 0 or 1
	        if (bo.getSelected() != 0 && bo.getSelected() != 1) {
	            throw new BadRequestException("Invalid selected status for a SessionMemberBo");
	        }

	        // Check if seqNo is valid digit
	        if (!isValidDigitString(String.valueOf(bo.getSeqNo()), 1, 10)) {
	            throw new BadRequestException("Invalid seqNo for a SessionMemberBo");
	        }

	        // Check if name is valid word string
	        if (!isValidName(bo.getName(), 100)) {
	            throw new BadRequestException("Invalid name for a SessionMemberBo");
	        }

	        // Check if domainName is valid
	        if (!isValidWordString(bo.getDomainName(), 1, 100)) {
	            throw new BadRequestException("Invalid domainName for a SessionMemberBo");
	        }

	        // Check if delFlag is either 0 or 1
	        if (bo.getDelFlag() != 0 && bo.getDelFlag() != 1) {
	            throw new BadRequestException("Invalid delFlag for a SessionMemberBo");
	        }

	        // Check if each SessionMemberAvoidBo object in avoids is valid
	        if (bo.getAvoids() != null && !bo.getAvoids().isEmpty()) {
	            for (SessionMemberAvoidBo avoid : bo.getAvoids()) {
	                // Check if compnayTid is a valid UUID
	                if (!isValidUUID(avoid.getCompnayTid())) {
	                    throw new BadRequestException("Invalid CompnayTid for a SessionMemberAvoidBo");
	                }

	                // Check if companyName is valid word string
	                if (!isValidWordString(avoid.getCompanyName(), 1, 100)) {
	                    throw new BadRequestException("Invalid CompanyName for a SessionMemberAvoidBo");
	                }
	            }
	        }
	    }
	}
}
