package com.ezcore.foi.ecase.model.request;

import java.sql.Timestamp;
import java.util.Arrays;
import java.util.List;

import com.ezcore.foi.ecase.model.bo.casedatabo.QueryColumn;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
public class TmpCaseManager108Request {

    @ApiModelProperty(value = "用在限定的組合條件")
    private List<QueryColumn> logicCondition;

    @ApiModelProperty(value = "申請日期（起）")
    private Timestamp beginDate;

    @ApiModelProperty(value = "申請日期（迄）")
    private Timestamp endDate;

    @ApiModelProperty(value = "承辦人")
    private String centerOwnerAccount;

    @ApiModelProperty(value = "案號")
    private String caseNo;

    @ApiModelProperty(value = "申請人")
    private String applicantName;

    public TmpCaseManager108Request() {
        this.logicCondition = Arrays.asList(new QueryColumn()); 
        this.beginDate = new Timestamp(1684160541033L);
        this.endDate = new Timestamp(1684160541033L);
        this.centerOwnerAccount = "admin";
        this.caseNo = "00000123";
        this.applicantName = "林OO";
    }
    
    // 如果需要，您可以添加其他方法或建構函數
}
