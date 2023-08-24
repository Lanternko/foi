package com.ezcore.foi.ecase.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import static com.ezcore.common.utils.VerifyInputs.*;
import com.ezcore.foi.ecase.dao.CodedetailRepository;
import com.ezcore.foi.ecase.dao.MemberRepository;
import com.ezcore.foi.ecase.dao.dto.MemberSeqNoModifyDto;
import com.ezcore.foi.ecase.dao.entity.Codedetail;
import com.ezcore.foi.ecase.dao.entity.Member;
import com.ezcore.foi.ecase.model.bo.MemberBo;
import com.ezcore.foi.ecase.service.MemberService;

import lombok.RequiredArgsConstructor;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.utils.StringUtils;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private CodedetailRepository codedetailRepository;
	@Autowired
	private MemberRepository memberRepository;
	
	@Override
	public List<MemberBo> getList(Long memberTypeCid) {
		// 檢查input的合法性
		validateGetList(memberTypeCid);
		
		return getMemberInfo(memberTypeCid, null);
	}
	
	@Override
	public MemberBo get(Long memberTypeCid, String id) {
		// 檢查input的合法性
		validateGet(memberTypeCid, id);
		
		List<MemberBo> rtn = getMemberInfo(memberTypeCid, id);
		return rtn.size() < 1 ? null : rtn.get(0);
	}
	
	/*
	 * 如果該成員不存在，則新增一個新成員；反之，則更新該成員的資訊
	 */
	@Override
	public void update(MemberBo req) {
		// 檢查input的合法性
//		validateMemberBo(req);
		
		Member member = null;
		if (StringUtils.isEmptyOrNull(req.getId())) {
			member = new Member();
			member.setId(UUID.randomUUID().toString());
			member.setSeqNo(memberRepository.getCurrentMaxSeqNo(req.getMemberTypeCid()) + 1);
			member.setAccount(req.getAccount());
		} else {			
			member = memberRepository.findById(req.getId()).get();
		}
		
		Codedetail memberTypeCode = codedetailRepository.findById(req.getMemberTypeCid()).orElse(null);
		if (memberTypeCode == null) {
			throw new BadRequestException("member_type_cid=" + req.getMemberTypeCid() + "不存在");
		}
		member.setMemberTypeCode(memberTypeCode);
		member.setName(req.getName());
		
		Codedetail domainCode = req.getDomainCid() == null ? null : codedetailRepository.findById(req.getDomainCid()).orElse(null);
		if (req.getDomainCid() != null && domainCode == null) {
			throw new BadRequestException("domain_cid=" + req.getDomainCid() + "不存在");
		}
		member.setDomainCode(domainCode);
		member.setSex(req.getSex());
		member.setTelNo(req.getTelNo());
		member.setExtNo(req.getExtNo());
		member.setEmail1(req.getEmail1());
		member.setEmail2(req.getEmail2());
		member.setBankDesc(req.getBankDesc());
		member.setBankAccount(req.getBankAccount());
		member.setDelFlag(req.getDelFlag());
		
		memberRepository.saveAndFlush(member);
	}
	
	/*
	 * 根據輸入的列表，來更新成員的seqNo
	 */
	@Override
	public void resort(List<MemberSeqNoModifyDto> req) {
		// 驗證input的合法性
		validateResort(req);
		
		for (MemberSeqNoModifyDto dto : req) {
			Member member = memberRepository.findById(dto.getId()).orElse(null);
			if (member == null) {
				continue;
			}
			member.setSeqNo(dto.getSeqNo());
			
			memberRepository.saveAndFlush(member);
		}
	}
	
	private List<MemberBo> getMemberInfo(Long memberTypeCid, String id) {
		// 檢查input的合法性
//		validateGetMemberInfo(memberTypeCid, id);
		
		return memberRepository.getMembers(memberTypeCid, id);
	}
	
	
//	----------------------------------------------------------------------------- 
	
	public void validateGetList(Long memberTypeCid) throws BadRequestException {
	    String memberTypeCidStr = String.valueOf(memberTypeCid);
	    if (!isValidDigitString(memberTypeCidStr, 1, 10)) {
	    	throw new BadRequestException("memberTypeCid必須是1至10位數的數字");
	    }
	}
	public void validateGet(Long memberTypeCid, String id) throws BadRequestException {
	    String memberTypeCidStr = String.valueOf(memberTypeCid);
	    // 驗證 memberTypeCid 是否只包含 1 至 10 位的數字
	    if (!isValidDigitString(memberTypeCidStr, 1, 10)) {
	    	throw new BadRequestException("memberTypeCid的值不符合規定");
	    }
	    // 驗證 id 是否為有效的 UUID
	    if (!isValidUUID(id)) {
	    	throw new BadRequestException("UUID的值不符合規定");
	    }
	}
	public void validateMemberBo(MemberBo member) throws BadRequestException {
	    // 驗證id
	    if (!isValidUUID(member.getId())) {
	        throw new BadRequestException("Invalid UUID: " + member.getId());
	    }
	    // 驗證帳號
	    if (!isValidWordAndDigitString(member.getAccount(), 8, 20)) {
	        throw new BadRequestException("Invalid Account: " + member.getAccount());
	    }
	    // 驗證姓名
	    if (!isValidName(member.getName(), 20)) {
	        throw new BadRequestException("Invalid Name: " + member.getName());
	    }
	    // 驗證性別
	    if (!member.getSex().matches("M|F")) {
	        throw new BadRequestException("Invalid Sex: " + member.getSex());
	    }
	    // 驗證電話
	    if (!isValidPhoneNumber(member.getTelNo())) {
	        throw new BadRequestException("Invalid Telephone Number: " + member.getTelNo());
	    }
	    // 驗證郵件
	    if (!isValidEmail(member.getEmail1()) || !isValidEmail(member.getEmail2())) {
	        throw new BadRequestException("Invalid Email: " + member.getEmail1() + " or " + member.getEmail2());
	    }
	    // 驗證刪除註記
	    if (!(member.getDelFlag() == 0 || member.getDelFlag() == 1)) {
	        throw new BadRequestException("Invalid DelFlag: " + member.getDelFlag());
	    }
	    // 驗證匯款帳號
	    if (!isValidDigitString(member.getBankAccount(), 5, 20)) {
	        throw new BadRequestException("Invalid Bank Account: " + member.getBankAccount());
	    }
	    // 驗證分機
	    if (!isValidDigitString(member.getExtNo(), 1, 10)) {
	        throw new BadRequestException("Invalid ExtNo: " + member.getExtNo());
	    }
	}
	
	public void validateResort(List<MemberSeqNoModifyDto> req) throws BadRequestException {
	    // 驗證是否是空的或者長度超過一個固定長度，例如10000（TODO 可以根據實際需求修改)
	    if (req == null || req.size() == 0 || req.size() > 10000) {
	        throw new BadRequestException("請求的List不能為空，並且大小在1到10000之間");
	    }

	    for (MemberSeqNoModifyDto dto : req) {
	        // 驗證 id 是否為有效的 UUID
	        if (!isValidUUID(dto.getId())) {
	            throw new BadRequestException("UUID的值不符合規定");
	        }

	        // 驗證 seqNo 是否只包含 1 至 10 位的數字
	        String seqNoStr = String.valueOf(dto.getSeqNo());
	        if (!isValidDigitString(seqNoStr, 1, 10)) {
	            throw new BadRequestException("seqNo的值不符合規定");
	        }

	        // 驗證 memberTypeCid 是否只包含 TODO 1 至 10 位的數字
	        String memberTypeCidStr = String.valueOf(dto.getMemberTypeCid());
	        if (!isValidDigitString(memberTypeCidStr, 1, 10)) {
	            throw new BadRequestException("memberTypeCid的值不符合規定");
	        }
	    }
	}

	public void validateGetMemberInfo(Long memberTypeCid, String id) throws BadRequestException {
	    String memberTypeCidStr = String.valueOf(memberTypeCid);
	    // 驗證 memberTypeCid 是否只包含 1 至 10 位的數字
	    if (!isValidDigitString(memberTypeCidStr, 1, 10)) {
	    	throw new BadRequestException("memberTypeCid的值不符合規定");
	    }
	    // 驗證 id 是否為有效的 UUID
	    if (!isValidUUID(id)) {
	    	throw new BadRequestException("UUID的值不符合規定");
	    }
	}
}
