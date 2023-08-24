package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.util.Calendar;

import com.ezcore.foi.common.FoiConstants;
import com.ezcore.foi.ecase.dao.entity.CaseUserAgent;
import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import me.zhengjie.utils.AES256Encryption;

@Data
@SuperBuilder
@NoArgsConstructor
@EqualsAndHashCode(callSuper = true)
@JsonIgnoreProperties(ignoreUnknown = true)
public class AgentUser extends ApplicantUser implements Serializable, CaseUserType {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "代理人類型")
    private ShowCodeBo agentKind;

    @ApiModelProperty(value = "代理人身分別")
    private ShowCodeBo agentType;

    @ApiModelProperty(value = "身分別-其他之註釋")
    private String otherRemark;
    
    @Override
    public void decryptFields() throws NoSuchAlgorithmException {
        AES256Encryption aesEncryption = new AES256Encryption();
        this.setEmail(aesEncryption.decrypt(this.getEmail()));
        this.setAddress(aesEncryption.decrypt(this.getAddress()));
        this.setPhone2No(aesEncryption.decrypt(this.getPhone2No()));
        this.setPhone1No(aesEncryption.decrypt(this.getPhone1No()));
        this.setIdno(aesEncryption.decrypt(this.getIdno()));
    }
    @Override
    public Timestamp adjustBirthDate(Timestamp originalBirthDate) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(originalBirthDate.getTime());
        calendar.add(Calendar.DATE, FoiConstants.C_CRYPT_DATE_ADD * -1);
        return new Timestamp(calendar.getTime().getTime());
    }
    public void copyFromCaseUserAgent(CaseUserAgent caseUserAgent) {
    	this.agentKind = new ShowCodeBo(caseUserAgent.getAgentKindCid());
    	this.agentType = new ShowCodeBo(caseUserAgent.getAgentTypeCid());
    	this.otherRemark = caseUserAgent.getOtherRemark();
    }
    
    @Override
    public String getUserKind() {
        return FoiConstants.AGENT;
    }

}
