package com.ezcore.foi.ecase.model.bo.casedatabo;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;
import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.ezcore.foi.ecase.model.bo.caseflowbo.QueryData;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class Info {

    @ApiModelProperty(value = "案件識別值(新增時會先配redis)", required = true)
    @NonNull
    private String caseMasterTid;
    
    /* readOnly：唯讀區塊   案件已結/非承辦ＸＸ
	 * updateByOwner：承辦人
	 * updateByManager：承辦人之主管
	 * updateByMember：承辦單位
	 * updateByCompanyOwner：承辦業者 */
    @ApiModelProperty(value = "檢視模式", required = true)
    @NonNull
    private String viewType;

    @ApiModelProperty(value = "收件方式", required = true)
    @NonNull
    private ShowCodeBo caseType;

    @ApiModelProperty(value = "已結案", required = true)
    @NonNull
    private Boolean isClose;

    @ApiModelProperty(value = "案件承辦人", required = true)
    @NonNull
    private String centerOwnerAccount;

    @ApiModelProperty(value = "目前案件進度", required = false)	//新增案件時，不會有案件進度
    private QueryData flow;

    // Other fields and methods

}
