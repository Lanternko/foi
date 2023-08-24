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
@Table(name="sys_attachment")
public class Attatchment extends BaseEntity implements Serializable {

	@Id
    @Column(name = "attachment_id")
    @NotNull(groups = Update.class)
    @ApiModelProperty(value = "ID", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String fileName;
	
	private String filePath;
	
	@JSONField(serialize = false)
	@ManyToMany(mappedBy = "attachments")
	private Set<Email> attachments;
	
	public Attatchment() {
	}
	
	public Attatchment(String fileName, String filePath) {
		this.fileName = fileName;
		this.filePath = filePath;
	}
}
