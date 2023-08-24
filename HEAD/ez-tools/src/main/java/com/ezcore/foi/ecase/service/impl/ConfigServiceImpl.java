package com.ezcore.foi.ecase.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.foi.common.FoiConstants;
import com.ezcore.foi.ecase.dao.CustomRepository;
import com.ezcore.foi.ecase.dao.entity.custom.IndustryTreeProjection;
import com.ezcore.foi.ecase.model.bo.TreeBo;
import com.ezcore.foi.ecase.service.ConfigService;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;

import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.system.domain.Role;
import me.zhengjie.modules.system.domain.User;
import me.zhengjie.modules.system.repository.UserRepository;
import me.zhengjie.utils.SecurityUtils;

@Service
@RequiredArgsConstructor
public class ConfigServiceImpl implements ConfigService {

	@Autowired
	private UserRepository userRepository;
//	@Autowired
//	private CodedetailRepository codeRepository;
	@Autowired
	private CodeDetailMap codeDetailMap;
	@Autowired
	private CustomRepository customRepository;
	
	@Override
	public List<TreeBo> getIndustryTree() {
		List<TreeBo> rtn = new ArrayList<>();
		
//		登入者為金融業者時，篩選金融業者可見對象(option1 == 1)
//		否，則不篩選(option1 == 0)
		List<IndustryTreeProjection> projections = customRepository.execFnIndustryTree(isCompanyUser() == 1 ? 1 : 0, SecurityUtils.getCurrentUsername());
		for (IndustryTreeProjection p : projections) {
			TreeBo bo = new TreeBo();
			bo.setCid(p.getCid());
			bo.setParentId(p.getParentId());
			bo.setCode(p.getCode());
			bo.setLevel(p.getLevel());
			bo.setName(p.getName());
			bo.setNodePath(p.getIndustryPath());
		}
		
		return rtn;
	}

	@Override
	public Integer isCompanyUser() {
		User currentUser = userRepository.findByAccount(SecurityUtils.getCurrentUsername());
		
//		Codedetail adminG = codeRepository.findByKindAndCode(Constants.ROLE_BANK, Constants.ADMIN_GROUP);
//		Codedetail userG = codeRepository.findByKindAndCode(Constants.ROLE_BANK, Constants.USER_GROUP);
		CodeDetailDto adminG = codeDetailMap.get(FoiConstants.ROLE_BANK, FoiConstants.ADMIN_GROUP);
		CodeDetailDto userG = codeDetailMap.get(FoiConstants.ROLE_BANK, FoiConstants.USER_GROUP);
		
		Optional<Role> option = currentUser.getRoles().stream().filter(cu -> 
				cu.getId().equals(Long.valueOf(adminG.getProperty1())) || 
				cu.getId().equals(Long.valueOf(userG.getProperty1()))).findFirst();
		
		return option.isPresent() ? 1 : 0;
	}

	@Override
	public void getTreeNode() {
		// TODO Auto-generated method stub
		
	}

}
