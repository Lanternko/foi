package me.zhengjie.modules.system.domain;

import java.io.Serializable;
import java.util.Date;

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

@Entity
@Getter
@Setter
@Table(name="user_log")
public class UserLog extends BaseEntity implements Serializable {

	@Id
    @Column(name = "log_id")
    @NotNull(groups = Update.class)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @ApiModelProperty(value = "ID", hidden = true)
	private Long logId;
	
	@NotNull
    @Column(name = "account")
    @ApiModelProperty(value = "使用者帳號")
    private String account;
	
	@NotNull
    @Column(name = "usr_op")
    @ApiModelProperty(value = "操作類型")
    private String usrOp;
	
	@Column(name = "verify")
    @ApiModelProperty(value = "隨機檢核碼")
    private String verify;
	
	@Column(name = "used")
    @ApiModelProperty(value = "檢核碼、臨時密碼使用後失效標計")
    private Integer used;
	
	@Column(name = "temp_pw")
    @ApiModelProperty(value = "臨時密碼")
    private String tempPw;

	@NotNull
	@Column(name = "prev_pw_sort")
    @ApiModelProperty(value = "舊密碼排序")
    private Integer prevPwSort;
	
	@Column(name = "prev_pw")
    @ApiModelProperty(value = "舊密碼")
    private String prevPw;
	
}
