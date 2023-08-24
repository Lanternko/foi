package com.ezcore.foi.ecase.model.request;

import java.util.List;

import com.ezcore.common.model.BaseRequest;
import com.ezcore.foi.ecase.model.bo.SessionMemberBo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@EqualsAndHashCode(callSuper = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
public class SessionMember03Request extends BaseRequest {

	@ApiModelProperty(value = "屆次識別值")
	private Integer sessionCid;
	
	@ApiModelProperty(value = "屆次")
	private String session;
	
	@ApiModelProperty(value = "屆次會議起日")
	private String beginDate;
	
	@ApiModelProperty(value = "屆次會議迄日")
	private String endDate;
	
	@ApiModelProperty(value = "與會人員: 如:張三、李四、王五)")
	private List<SessionMemberBo> members;
	
}
