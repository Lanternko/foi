package me.zhengjie.modules.system.service.impl;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import me.zhengjie.exception.BadRequestException;
import me.zhengjie.modules.system.domain.Dept;
import me.zhengjie.modules.system.domain.Substitute;
import me.zhengjie.modules.system.domain.User;
import me.zhengjie.modules.system.repository.DeptRepository;
import me.zhengjie.modules.system.repository.SubstituteRepository;
import me.zhengjie.modules.system.repository.UserRepository;
import me.zhengjie.modules.system.service.SubstituteService;
import me.zhengjie.utils.SecurityUtils;

@Service
public class SubstituteServiceImpl implements SubstituteService {

	@Autowired
	private UserRepository userRepository;
	@Autowired
	private DeptRepository deptRepository;
	@Autowired
	private SubstituteRepository substituteRepository;
	
	@Override
	public List<Substitute> selectValidSubstitute(User user) {
		return substituteRepository.findByMainAndEndsGreaterThanOrderByBegins(user, Timestamp.valueOf(LocalDateTime.now()));
	}
	
	@Override
	public void updateSubstituteStatus(User user, Long id, Integer action) {
		Substitute subs = substituteRepository.getById(id);
		if (Timestamp.valueOf(LocalDateTime.now()).compareTo(subs.getBegins()) < 0) {
			throw new BadRequestException("代理日期尚未開始");
		}
		subs.setActive(action > 0);
		substituteRepository.saveAndFlush(subs);
	}
	
	@Override
	public void resetSubstitutes(User user) {
		List<Substitute> subss = substituteRepository.findByMainAndActive(user, true);
		List<Substitute> result = new ArrayList<>();
		for (Substitute subs : subss) {
			subs.setActive(false);
			result.add(subs);
		}
		
		if (!result.isEmpty()) {
			substituteRepository.saveAllAndFlush(result);
		}
	}
	
	@Override
	public Set<Long> getSubsUserId() {
		String account = null;
		try {
			account = SecurityUtils.getCurrentUsername();
		} catch (Exception e) {
			return Collections.emptySet();
		}
		
		Set<Long> subsUserIds = new HashSet<>();
//    	若有的話，加入代理對象的功能選單
		for (Substitute subs : getSubstitutes(account)) {
			subsUserIds.add(subs.getSubs().getId());
		}
		return subsUserIds;
	}
	
	@Override
	public Set<String> getSubsUserPermissions() {
		String account = null;
		try {
			account = SecurityUtils.getCurrentUsername();
		} catch (Exception e) {
			return Collections.emptySet();
		}

		Set<String> elPermissions = new HashSet<>();
//    	若有的話，加入代理對象的許可權
    	for (Substitute subs : getSubstitutes(account)) {
    		UserDetails subsdetail = SecurityUtils.getSpecificUser(subs.getSubs().getAccount());
    		elPermissions.addAll(subsdetail.getAuthorities().stream().map(GrantedAuthority::getAuthority).collect(Collectors.toSet()));
    	}
    	return elPermissions;
	}
	
	@Override
	public Set<Long> getSubsUserDatascope() {
		String account = null;
		try {
			account = SecurityUtils.getCurrentUsername();
		} catch (Exception e) {
			return Collections.emptySet();
		}
		
		Set<Long> dataScopes = new HashSet<>();
//    	若有的話，加入代理對象的資料權限
    	for (Substitute subs : getSubstitutes(account)) {
    		dataScopes.addAll(SecurityUtils.getSpecificUserDataScope(subs.getSubs().getAccount()));
    	}
    	return dataScopes;
	}
	
	@Override
	public List<User> getSelectableUsers(User user) {
		List<Dept> depts = new ArrayList<>();
		depts.add(user.getDept());
		addSubDepts(depts, user.getDept());

		Map<Long, Dept> map = new HashMap<>();
		for (Dept d : depts) {
			if (!map.containsKey(d.getId())) {
				map.put(d.getId(), d);
			}
		}
		
		return userRepository.findByDeptInAndAccountNot(new ArrayList<>(map.values()), user.getAccount());
	}
	
	@Override
	public void addNewSubstitute(String account, String begin, String end) {
		String currentUserAccount = SecurityUtils.getCurrentUsername();
		User subs = userRepository.findByAccount(currentUserAccount);
		User main = userRepository.findByAccount(account);

/*		避免同一人在同一時段被重複指定為代理人，條件如下: 
//		1.指定時間段完全在現有時間段內
//		2.現有時間段完全在指定時間段內
//		3.指定時間段與現有時間段有交叉 */
		Integer overlapCount = substituteRepository.countByDateOverlap(main.getId(), subs.getId(), begin, end);
		if (overlapCount > 0) {
			throw new BadRequestException("代理人「" + main.getName() + "/" + main.getAccount() + "」在指定時段內已被指定過");
		}
		
		Substitute newSubs = new Substitute();
		newSubs.setSubs(subs);
		newSubs.setMain(main);
		newSubs.setBegins(Timestamp.valueOf(begin));
		newSubs.setEnds(Timestamp.valueOf(end));
		newSubs.setActive(false);
		substituteRepository.saveAndFlush(newSubs);
	}
	
	@Override
	public List<Substitute> queryRecords(Integer queryType) {
		String currentUserAccount = SecurityUtils.getCurrentUsername();
		User user = userRepository.findByAccount(currentUserAccount);
		if (queryType == 1) {
//			自己代理別人
			return substituteRepository.findByMainOrderByBegins(user);
		}
//		指定別人代理自己
		return substituteRepository.findBySubsOrderByBegins(user);
	}

	@Override
	public String getCurrentOpUser() {
		String account = null;
		try {
			account = SecurityUtils.getCurrentUsername();
		} catch (Exception e) {
			return "";
		}
		
		List<Substitute> subs = getSubstitutes(account);
		if (subs.isEmpty()) {
//			無代理對象時，回傳登入者自身帳號
			return userRepository.findByAccount(account).getAccount(); // sys_user
		}
		return subs.get(0).getSubs().getAccount();
	}
	
	private void addSubDepts(List<Dept> depts, Dept current) {
		List<Dept> subdepts = deptRepository.findByPid(current.getId());
		if (!subdepts.isEmpty()) {
			for (Dept dept : subdepts) {
				addSubDepts(depts, dept);
				depts.add(dept);
			}
		}
	}

//	查詢代理中的對象
	private List<Substitute> getSubstitutes(String account) {
		User user = userRepository.findByAccount(account);
		return substituteRepository.findByMainAndActiveAndEndsGreaterThanOrderByBegins(user, true, Timestamp.valueOf(LocalDateTime.now()));
	}


}
