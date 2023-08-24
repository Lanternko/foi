package me.zhengjie.modules.system.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import me.zhengjie.modules.system.domain.UrlMapping;

public interface UrlMappingRepository extends JpaRepository<UrlMapping, Integer>, JpaSpecificationExecutor<UrlMapping> {

	@Query("select 1 from UrlMapping where id = ?1")
	Integer checkExists(int num);
	
}
