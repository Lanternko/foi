package me.zhengjie.repository;

import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import me.zhengjie.domain.Contacts;

public interface ContactsRepository extends JpaRepository<Contacts, Long>, JpaSpecificationExecutor<Contacts>  {

	Contacts findByAddress(String address);
	
	Set<Contacts> findByAddressContaining(String addr);
	
}
