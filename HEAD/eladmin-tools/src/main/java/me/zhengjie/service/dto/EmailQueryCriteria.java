package me.zhengjie.service.dto;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

import lombok.Data;
import me.zhengjie.annotation.Query;
import me.zhengjie.domain.Contacts;
import me.zhengjie.domain.Email;

@Data
public class EmailQueryCriteria {

	@Query(type = Query.Type.IN)
	private Set<Long> id;
	
    @Query(blurry = "subject,fromApi,content")
    private String blurry;

    @Query(type = Query.Type.IN)
    private Set<String> status;

    @Query
    private Contacts from;
    
    @Query(type = Query.Type.BETWEEN)
    private List<Timestamp> createTime;
}
