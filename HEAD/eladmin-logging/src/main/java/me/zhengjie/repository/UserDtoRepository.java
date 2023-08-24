package me.zhengjie.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import me.zhengjie.service.dto.UserDto;

@Repository
public interface UserDtoRepository extends JpaRepository<UserDto, String>, JpaSpecificationExecutor<UserDto> {

	@Query(value = "select 1 from sys_user where account = ?1", nativeQuery = true)
	Integer isUser(String account);

}
