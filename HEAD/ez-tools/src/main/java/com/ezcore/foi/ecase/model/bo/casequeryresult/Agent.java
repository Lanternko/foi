package com.ezcore.foi.ecase.model.bo.casequeryresult;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class Agent extends Applicant {

	@ApiModelProperty(value = "代理人類別")
    private Integer agentKindCid;

	@ApiModelProperty(value = "法定代理人選項")
    private Integer agentTypeCid;

	@ApiModelProperty(value = "其他選項之備註")
    private String otherRemark;

}
