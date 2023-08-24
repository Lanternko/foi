package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.util.Calendar;

import javax.crypto.NoSuchPaddingException;

import com.ezcore.foi.common.FoiConstants;
import com.ezcore.foi.ecase.dao.entity.CaseUser;
import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;
import me.zhengjie.utils.AES256Encryption;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class ApplicantUser implements Serializable, CaseUserType {

    private static final long serialVersionUID = 7055779593788640602L;

    @NonNull
    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @NonNull
    @ApiModelProperty(value = "識別值")
    private String caseUserTid;

    @ApiModelProperty(value = "姓名")
    private String name;

    @ApiModelProperty(value = "證號類型")
    private ShowCodeBo idnoType;

    @ApiModelProperty(value = "證號")
    private String idno;

    @ApiModelProperty(value = "性別(M/F)")
    private String sex;

    @ApiModelProperty(value = "生日")
    private Timestamp birthDate;

    @ApiModelProperty(value = "電話1")
    private String phone1No;

    @ApiModelProperty(value = "電話1分機")
    private String phone1Ext;

    @ApiModelProperty(value = "電話2")
    private String phone2No;

    @ApiModelProperty(value = "電話2分機")
    private String phone2Ext;

    @ApiModelProperty(value = "電子郵件")
    private String email;

    @ApiModelProperty(value = "郵遞區號")
    private String zipCode;

    @ApiModelProperty(value = "縣市")
    private ShowCodeBo sysCity;

    @ApiModelProperty(value = "區處")
    private ShowCodeBo sysDistrict;

    @ApiModelProperty(value = "地址")
    private String address;

    @ApiModelProperty(value = "設定為代表人時間(排序用)")
    private Timestamp assignTime;
    
    public void copyFromCaseUser(CaseUser caseUser) {
        this.caseMasterTid = caseUser.getCaseMasterTid();
        this.caseUserTid = caseUser.getId();
        this.name = caseUser.getName();
        this.idnoType = new ShowCodeBo(caseUser.getIdnoTypeCid());  
        this.idno = caseUser.getIdnoCrypt();  
        this.sex = caseUser.getSex();
        this.birthDate = caseUser.getBirthDate();
        this.phone1No = caseUser.getPhone1NoCrypt();
        this.phone1Ext = caseUser.getPhone1Ext();
        this.phone2No = caseUser.getPhone2NoCrypt(); 
        this.phone2Ext = caseUser.getPhone2Ext();
        this.email = caseUser.getEmailCrypt(); 
        this.zipCode = caseUser.getZipCode();
        this.sysCity = new ShowCodeBo(caseUser.getSysCityCid()); 
        this.sysDistrict = new ShowCodeBo(caseUser.getSysDistrictCid()); 
        this.address = caseUser.getAddressCrypt();  // Ensure that you decrypt this field if necessary
        this.assignTime = caseUser.getAssignTime();
    }
    
    public void decryptFields() throws NoSuchAlgorithmException {
        AES256Encryption aesEncryption = new AES256Encryption();
        this.email = aesEncryption.decrypt(this.email);
        this.address = aesEncryption.decrypt(this.address);
        this.phone2No = aesEncryption.decrypt(this.phone2No);
        this.phone1No = aesEncryption.decrypt(this.phone1No);
        this.idno = aesEncryption.decrypt(this.idno);
    }
    public void encryptFields() throws NoSuchAlgorithmException, NoSuchPaddingException {
    	AES256Encryption aesEncryption = new AES256Encryption();
    	this.email = aesEncryption.encrypt(this.email);
    	this.address = aesEncryption.encrypt(this.address);
    	this.phone2No = aesEncryption.encrypt(this.phone2No);
    	this.phone1No = aesEncryption.encrypt(this.phone1No);
    	this.idno = aesEncryption.encrypt(this.idno);	
    }
    public Timestamp adjustBirthDate(Timestamp originalBirthDate) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(originalBirthDate.getTime());
        calendar.add(Calendar.DATE, FoiConstants.C_CRYPT_DATE_ADD * -1); // * -1
        return new Timestamp(calendar.getTime().getTime());
    }
    
    /* ---------------------------------------------------------------------------------------     */
	 // You must include this method because it's declared in CaseUserType interface
	    @Override
	    public String getCaseMasterTid() {
	    	return caseMasterTid;
	    }
	    
	    @Override
	    public String getCaseUserTid() {
	        return caseUserTid;
	    }

	    @Override
	    public String getName() {
	        return name;
	    }

	    @Override
	    public ShowCodeBo getIdnoType() {
	        return idnoType;
	    }

	    @Override
	    public String getIdno() {
	        return idno;
	    }

	    @Override
	    public String getSex() {
	        return sex;
	    }

	    @Override
	    public Timestamp getBirthDate() {
	        return birthDate;
	    }

	    @Override
	    public String getPhone1No() {
	        return phone1No;
	    }

	    @Override
	    public String getPhone1Ext() {
	        return phone1Ext;
	    }

	    @Override
	    public String getPhone2No() {
	        return phone2No;
	    }

	    @Override
	    public String getPhone2Ext() {
	        return phone2Ext;
	    }

	    @Override
	    public String getEmail() {
	        return email;
	    }

	    @Override
	    public String getZipCode() {
	        return zipCode;
	    }

	    @Override
	    public ShowCodeBo getSysCity() {
	        return sysCity;
	    }

	    @Override
	    public ShowCodeBo getSysDistrict() {
	        return sysDistrict;
	    }

	    @Override
	    public String getAddress() {
	        return address;
	    }
	    
	    @Override
	    public String getUserKind() {
	        return FoiConstants.APPLICANT;
	    }

	    @Override
	    public Timestamp getAssignTime() {
	        return assignTime;
	    }
}
