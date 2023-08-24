package me.zhengjie.modules.system.service;

import java.util.List;
import java.util.Set;

import me.zhengjie.modules.system.domain.Substitute;
import me.zhengjie.modules.system.domain.User;

public interface SubstituteService {

	/**
	 * 查詢可被登入者選擇的代理對象清單
	 * @return List<Substitute>
	 */
	List<Substitute> selectValidSubstitute(User user);
	
	/**
	 * 更新登入者所選的代理對象
	 * @return void
	 */
	void updateSubstituteStatus(User user, Long id, Integer action);
	
	/**
	 * 初始化代理對象<br>
	 * 目前不允許登入時為代理狀態
	 * @return void
	 */
	void resetSubstitutes(User user);
	
	/**
	 * 確認登入者是否有代理對象，有則查出對象使用者id(用於查功能選單)
	 * @return Set<Long>
	 */
	Set<Long> getSubsUserId();
	
	/**
	 * 確認登入者是否有代理對象，有則查出對象功能權限
	 * @return Set<String>
	 */
	Set<String> getSubsUserPermissions();
	
	/**
	 * 確認登入者是否有代理對象，有則查出對象資料權限
	 * @return Set<Long>
	 */
	Set<Long> getSubsUserDatascope();

	/**
	 * 取得可指定為代理對象的的人員清單<br>
	 * 目前為: 上級可代理有關聯的下級，下級僅可代理同級
	 * @param user
	 * @return List<User>
	 */
	List<User> getSelectableUsers(User user);
	
	/**
	 * 新增使用者指定的代理人、代理時間資訊<br>
	 * @return void
	 */
	void addNewSubstitute(String account, String begin, String end);
	
	/**
	 * 依類別查詢代理紀錄<br>
	 * @param queryType
	 * @return List<Substitute>
	 */
	List<Substitute> queryRecords(Integer queryType);
	
	/**
	 * 取得登入者當前操作對象(無代理對象時為自己)
	 * @return String sys_user.account
	 */
	String getCurrentOpUser();
	
}
