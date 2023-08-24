package com.ezcore.tools.demo.dao.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

@Getter
@Setter
@Entity
@Table(name = "__demo")
public class Demo extends BaseEntity implements Serializable {
	
	@Id
	@Column(name = "__demo_id")
    @NotNull(groups = {Update.class})
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @ApiModelProperty(value = "ID", hidden = true)
	private Long id;
	
	@Column(name = "__demo_msg_a")
    @ApiModelProperty(value = "名稱")
    private String demoMsga;
	
	@Column(name = "__demo_msg_b")
    @ApiModelProperty(value = "年度")
    private String demoMsgb;
	
	@Column(name = "__demo_msg_c")
    @ApiModelProperty(value = "說明")
    private String demoMsgc;
	
}
