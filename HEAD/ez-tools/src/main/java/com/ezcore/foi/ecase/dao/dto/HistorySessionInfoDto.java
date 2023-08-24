package com.ezcore.foi.ecase.dao.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class HistorySessionInfoDto {
	
	@ApiModelProperty(value = "屆次")
	private String session;
	
	@ApiModelProperty(value = "屆次會議起日")
	private String beginDate;
	
	@ApiModelProperty(value = "屆次會議迄日")
	private String endDate;
	
	@ApiModelProperty(value = "會議人數: 如:【共3人】")
	private String memberCnt;
	
	@ApiModelProperty(value = "與會人員: 如:張三、李四、王五)")
	private String memberNames;
}
