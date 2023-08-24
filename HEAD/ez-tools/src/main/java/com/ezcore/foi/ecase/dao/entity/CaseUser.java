package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;

import com.ezcore.foi.common.FoiConstants;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import me.zhengjie.utils.AES256Encryption;


@Entity
@Data
@SuperBuilder
@NoArgsConstructor
@Table(name = "CASE_USER")
public class CaseUser implements Serializable {

	private static final long serialVersionUID = -639873456244955796L;

    @Id
	@NotNull
	@Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @NotNull
	@Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String caseMasterTid;

    @NotNull
    @ApiModelProperty(value = "案件人名類型")
    private Long caseUserKindCid;

    @ApiModelProperty(value = "姓名")
    private String name;

    @ApiModelProperty(value = "證號類型")
    private Long idnoTypeCid;

    @ApiModelProperty(value = "證號(加密)")
    private String idnoCrypt;

    @ApiModelProperty(value = "性別")
    private String sex;

    @ApiModelProperty(value = "生日")
    private Timestamp birthDate;

    @ApiModelProperty(value = "年齡")
    private Integer age;

    @ApiModelProperty(value = "*電話1")
    @Column(name = "phone1_no_crypt")
    private String phone1NoCrypt;

    @ApiModelProperty(value = "電話1分機")
    @Column(name = "phone1_ext")
    private String phone1Ext;

    @ApiModelProperty(value = "*電話2")
    @Column(name = "phone2_no_crypt")
    private String phone2NoCrypt;

    @ApiModelProperty(value = "電話2分機")
    @Column(name = "phone2_ext")
    private String phone2Ext;

    @ApiModelProperty(value = "*電子郵件")
    private String emailCrypt;

    @ApiModelProperty(value = "郵遞區號")
    private String zipCode;

    @ApiModelProperty(value = "縣市")
    private Long sysCityCid;

    @ApiModelProperty(value = "區處")
    private Long sysDistrictCid;

    @ApiModelProperty(value = "*地址")
    private String addressCrypt;

    @ApiModelProperty(value = "設定為代表人時間(排序用)")
    private Timestamp assignTime;

    @NotNull
    @CreatedBy
    @ApiModelProperty(value = "建立者")
    private String createBy;

    @NotNull
    @CreatedDate
    @ApiModelProperty(value = "建立時間")
    private Timestamp createTime;
    
    @LastModifiedBy
    @ApiModelProperty(value = "異動者")
    private String updateBy;

    @LastModifiedDate
    @ApiModelProperty(value = "異動時間")
    private Timestamp updateTime;
    
    public void decryptFields() throws NoSuchAlgorithmException {
	    AES256Encryption aesEncryption = new AES256Encryption();
	    this.emailCrypt = aesEncryption.decrypt(this.emailCrypt);
	    this.addressCrypt = aesEncryption.decrypt(this.addressCrypt);
	    this.phone2NoCrypt = aesEncryption.decrypt(this.phone2NoCrypt);
	    this.phone1NoCrypt = aesEncryption.decrypt(this.phone1NoCrypt);
	    this.idnoCrypt = aesEncryption.decrypt(this.idnoCrypt);	
    }
    public void encryptFields() throws NoSuchAlgorithmException {
    	AES256Encryption aesEncryption = new AES256Encryption();
    	this.emailCrypt = aesEncryption.encrypt(this.emailCrypt);
    	this.addressCrypt = aesEncryption.encrypt(this.addressCrypt);
    	this.phone2NoCrypt = aesEncryption.encrypt(this.phone2NoCrypt);
    	this.phone1NoCrypt = aesEncryption.encrypt(this.phone1NoCrypt);
    	this.idnoCrypt = aesEncryption.encrypt(this.idnoCrypt);	
    }
    public Timestamp adjustBirthDate(Timestamp originalBirthDate) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(originalBirthDate.getTime());
        calendar.add(Calendar.DATE, FoiConstants.C_CRYPT_DATE_ADD * -1);
        return new Timestamp(calendar.getTime().getTime());
    }


}