package me.zhengjie.domain;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.alibaba.fastjson.annotation.JSONField;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

@Entity
@Getter
@Setter
@Table(name="sys_contacts")
public class Contacts extends BaseEntity implements Serializable {

	@Id
    @Column(name = "contacts_id")
    @NotNull(groups = Update.class)
    @ApiModelProperty(value = "ID", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String address;
	
//	@JSONField(serialize = false)
//	@OneToMany(mappedBy = "sender")
//	private Set<Email> sender;
	
	@JSONField(serialize = false)
	@ManyToMany(mappedBy = "to")
	private Set<Email> to;
	
	@JSONField(serialize = false)
	@ManyToMany(mappedBy = "cc")
	private Set<Email> cc;
	
	@JSONField(serialize = false)
	@ManyToMany(mappedBy = "bcc")
	private Set<Email> bcc;
	
	public Contacts() {
	}
	
	public Contacts(String address) {
		this.address = address;
	}
}
