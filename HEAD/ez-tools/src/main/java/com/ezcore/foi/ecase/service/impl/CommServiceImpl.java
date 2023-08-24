package com.ezcore.foi.ecase.service.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.ezcore.foi.common.FoiConstants;
import com.ezcore.foi.ecase.dao.CodedetailRepository;
import com.ezcore.foi.ecase.dao.dto.ChildKindListDto;
import com.ezcore.foi.ecase.dao.dto.GetCodeDto;
import com.ezcore.foi.ecase.model.response.comm.Comm04Response;
import com.ezcore.foi.ecase.service.CommService;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.system.domain.Role;
import me.zhengjie.modules.system.service.RoleService;
import me.zhengjie.utils.SecurityUtils;

@Service
@RequiredArgsConstructor
public class CommServiceImpl implements CommService {

	@Autowired
	private CodedetailRepository codedetailRepository;
//	@Autowired
//	private CodeDetailMap codeDetailMap;
	@Autowired
	private RoleService roleService;

	public CodeDetailDto getCodes(GetCodeDto req) {
//		return codedetailRepository.findByKindAndCode(req.getKind(), req.getCode());
		return CodeDetailMap.get(req.getKind(), req.getCode());
	}
	
	@Override

	public List<CodeDetailDto> findByKind(String kind) {
//		return codedetailRepository.findByKindOrderBySortCodeAsc(kind);
		return CodeDetailMap.get(kind);
	}
	
	@Override
	public List<ChildKindListDto> getChildList(String parentKind, String parentCode, String childKind) {
	    return codedetailRepository.execChildKindList(parentKind, parentCode, childKind);
	}

//    public List<Comm03Response> getChildList(String parentKind, String parentCode, String childKind) {
//        List<ChildListProjection> projections = codedetailRepository.findChildListByParentKindParentCodeAndChildKind(parentKind, parentCode, childKind);
//        return projections.stream().map(this::toResponse).collect(Collectors.toList());
//    }
//
//    private Comm03Response toResponse(ChildListProjection p) {
//        return Comm03Response.builder()
//            .cid(p.getCid())
//            .code(p.getCode())
//            .name(p.getName())
//            .isEnabled(p.getIsEnabled())
//            .description(p.getDescription())
//            .sortCode(p.getSortCode())
//            .property1(p.getProperty1())
//            .property2(p.getProperty2())
//            .property3(p.getProperty3())
//            .property4(p.getProperty4())
//            .property5(p.getProperty5())
//            .property6(p.getProperty6())
//            .property7(p.getProperty7())
//            .property8(p.getProperty8())
//            .property9(p.getProperty9())
//            .option1(p.getOption1())
//            .option2(p.getOption2())
//            .option3(p.getOption3())
//            .build();
//    }

	@Override
	public List<Comm04Response> getWorkGroupUsers(String workGroupCode) {
		return codedetailRepository.findUsersByWorkGroupCode(workGroupCode);
	}
	
	@Override
	public boolean isCurrentUserAdmin() {
	    UserDetails currentUser = SecurityUtils.getCurrentUser();
	    return currentUser.getAuthorities().stream()
	        .anyMatch(a -> a.getAuthority().equals("ROLE_ADMIN"));
	}


	@Override
	public List<CodeDetailDto> getManagerUser() {
		Set<Role> currentUserRoles = roleService.getCurrentUserRoles();
		Set<String> roleSet = new HashSet<>();
		currentUserRoles.forEach(r -> roleSet.add(r.getId().toString()));


		List<CodeDetailDto> rtn = new ArrayList<>();
//		List<CodeDetailDto> workgroups = codedetailRepository.findByKindOrderBySortCodeAsc(Constants.WORKGROUP);
		List<CodeDetailDto> workgroups = CodeDetailMap.get(FoiConstants.WORKGROUP);
		for (CodeDetailDto workgroupCode : workgroups) {
			if (FoiConstants.Y.equals(workgroupCode.getProperty1())) {
				rtn.add(workgroupCode);
			}
		}
		
		return rtn;
	}
	
	@Override
	public List<CodeDetailDto> getCurrentUserWorkGroups() {
		Set<Role> currentUserRoles = roleService.getCurrentUserRoles();
		Set<String> roleSet = new HashSet<>();
		currentUserRoles.forEach(r -> roleSet.add(r.getId().toString()));

		List<CodeDetailDto> rtn = new ArrayList<>();
//		List<CodeDetailDto> workgroups = codedetailRepository.findByKindOrderBySortCodeAsc(Constants.WORKGROUP);
		List<CodeDetailDto> workgroups = CodeDetailMap.get(FoiConstants.WORKGROUP);
		for (CodeDetailDto workgroupCode : workgroups) {
			if (roleSet.contains(workgroupCode.getProperty2())) {
				rtn.add(workgroupCode);
				continue;
			}

//			目前workGroup代碼存在property2放陣列的情況...

			if (workgroupCode.getProperty2().contains(",")) {
				String[] arr = workgroupCode.getProperty2().split(",");
				for (String roleId : arr) {
					if (roleSet.contains(roleId)) {
						rtn.add(workgroupCode);
//						陣列裡任一個id符合就直接看下一個
						break;
					}
				}
			}
		}
		return rtn;
	}

	
}
