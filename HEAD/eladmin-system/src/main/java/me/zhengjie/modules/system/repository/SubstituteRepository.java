package me.zhengjie.modules.system.repository;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import me.zhengjie.modules.system.domain.Substitute;
import me.zhengjie.modules.system.domain.User;

@Repository
public interface SubstituteRepository extends JpaRepository<Substitute, Long>, JpaSpecificationExecutor<Substitute> {

	List<Substitute> findByMainAndActive(User user, Boolean active);
	List<Substitute> findByMainAndEndsGreaterThanOrderByBegins(User user, Timestamp ends);
	List<Substitute> findByMainAndActiveAndEndsGreaterThanOrderByBegins(User user, Boolean active, Timestamp ends);
	
	/**
	 * 避免同一人在同一時段被重複指定為代理人，條件如下: 
	 * 1.指定時間段完全在現有時間段內
	 * 2.現有時間段完全在指定時間段內
	 * 3.指定時間段與現有時間段有交叉
	 * @param main
	 * @param subs
	 * @param begins
	 * @param ends
	 * @return Integer
	 */
	@Query(value = "select count(*) from substitute where main_id = :main and subs_id = :subs "
				 + "and ("
				 + "(begins = :begins and ends = :ends) "
				 + "or (begins < :begins and ends > :begins) "
				 + "or (begins < :ends and ends > :ends) "
				 + "or (begins > :begins and ends < :ends) "
				 + "or (begins < :begins and ends > :ends)"
				 + ")", 
				 nativeQuery = true)
	Integer countByDateOverlap(@Param("main") Long main, @Param("subs") Long subs, 
							   @Param("begins") String begins, @Param("ends") String ends);
	
	/**
	 * 查詢「自己代理別人」
	 * @param user
	 * @return List<Substitute>
	 */
	List<Substitute> findByMainOrderByBegins(User user);
	
	/**
	 * 查詢「指定別人代理自己」
	 * @param user
	 * @return List<Substitute>
	 */
	List<Substitute> findBySubsOrderByBegins(User user);
}
