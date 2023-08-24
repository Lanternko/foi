package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class MemberBo implements Serializable {

	private static final long serialVersionUID = -6919556490650715440L;

	@ApiModelProperty(value = "資料識別值")
	private String id;
	
	@ApiModelProperty(value = "委員身分別Cid")
	private Long memberTypeCid;
	
	@ApiModelProperty(value = "委員身分別名稱")
	private String memberTypeName;
	
	@ApiModelProperty(value = "帳號")
	private String account;
	
	@ApiModelProperty(value = "姓名")
	private String name;
	
	@ApiModelProperty(value = "專長領域Cid")
	private Long domainCid;
	
	@ApiModelProperty(value = "專長領域名稱")
	private String domainName;
	
	@ApiModelProperty(value = "性別: M:男 F:女")
	private String sex;
	
	@ApiModelProperty(value = "電話")
	private String telNo;
	
	@ApiModelProperty(value = "分機")
	private String extNo;
	
	@ApiModelProperty(value = "主要郵件")
	private String email1;
	
	@ApiModelProperty(value = "副本郵件")
	private String email2;
	
	@ApiModelProperty(value = "匯款銀行")
	private String bankDesc;
	
	@ApiModelProperty(value = "匯款帳號")
	private String bankAccount;
	
	@ApiModelProperty(value = "刪除註記: 1:已停用 0:使用中")
	private Integer delFlag;
	
}
