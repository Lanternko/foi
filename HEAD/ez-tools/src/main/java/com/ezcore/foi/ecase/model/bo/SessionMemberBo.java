package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;
import java.util.List;
import java.util.UUID;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SessionMemberBo implements Serializable {

	@ApiModelProperty(value = "委員資料識別值")
	private String memberTid;

	@ApiModelProperty(value = "是否選用: 0:未選用 1:選用")
	private Integer selected;

	@ApiModelProperty(value = "顯示次序")
	private Integer seqNo;

	@ApiModelProperty(value = "委員姓名")
	private String name;

	@ApiModelProperty(value = "專長領域")
	private String domainName;

	@ApiModelProperty(value = "迴避公司清單")
	private List<SessionMemberAvoidBo> avoids;

	@ApiModelProperty(value = "刪除註記: 0:使用中 1:已刪除")
	private Integer delFlag;

	public SessionMemberBo(String memberTid, Integer selected, Integer seqNo, String name, String domainName, Integer delFlag) {
		this.memberTid = memberTid;
		this.selected = selected;
		this.seqNo = seqNo;
		this.name = name;
		this.domainName = domainName;
		this.delFlag = delFlag;
	}
	
}
