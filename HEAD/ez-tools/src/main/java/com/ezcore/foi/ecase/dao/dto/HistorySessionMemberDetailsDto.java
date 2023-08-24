package com.ezcore.foi.ecase.dao.dto;

import java.util.List;

import com.ezcore.foi.ecase.model.bo.SessionMemberBo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class HistorySessionMemberDetailsDto {
	
	@ApiModelProperty(value = "屆次識別值")
	private Long sessionCid;
	
	@ApiModelProperty(value = "屆次")
	private String session;
	
	@ApiModelProperty(value = "屆次會議起日")
	private String beginDate;
	
	@ApiModelProperty(value = "屆次會議迄日")
	private String endDate;
	
	@ApiModelProperty(value = "與會人員: 如:張三、李四、王五)")
	private List<SessionMemberBo> members;

	public HistorySessionMemberDetailsDto(Long sessionCid, String session, String beginDate, String endDate) {
		this.sessionCid = sessionCid;
		this.session = session;
		this.beginDate = beginDate;
		this.endDate = endDate;
	}
	
}
