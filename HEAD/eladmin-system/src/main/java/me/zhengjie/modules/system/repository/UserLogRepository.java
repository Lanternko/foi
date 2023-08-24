package me.zhengjie.modules.system.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import me.zhengjie.modules.system.domain.UserLog;

public interface UserLogRepository extends JpaRepository<UserLog, Long>, JpaSpecificationExecutor<UserLog> {

	UserLog findByAccount(String account);
	
	UserLog findFirstByAccountAndUsrOpOrderByLogIdDesc(String account, String usrOp);

	UserLog findFirstByAccountAndUsrOpOrderByPrevPwSortDesc(String account, String usrOp);

	List<UserLog> findByAccountAndUsrOp(String account, String usrOp, Pageable pageable);
	
	List<UserLog> findByAccountAndUsrOpAndUsedAndCreateTimeGreaterThan(String account, String usrOp, Integer used, Date createTime);
	
	
}
