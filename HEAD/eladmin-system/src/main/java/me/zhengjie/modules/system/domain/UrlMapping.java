package me.zhengjie.modules.system.domain;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.CreationTimestamp;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name="url_mapping")
public class UrlMapping {
	
	@Id
    private int id;
	
	private String fullUrl;
	
	@CreationTimestamp
    private Timestamp createTime;
	
}
