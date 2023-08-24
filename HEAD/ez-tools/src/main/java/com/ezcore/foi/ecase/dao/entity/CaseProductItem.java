package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.LastModifiedBy;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@Getter
@Setter
@Entity
@NoArgsConstructor
@SuperBuilder
@Table(name = "CASE_PRODUCT_ITEM")
public class CaseProductItem implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "資料來源")
    private Long ownerTypeCid;

    @ApiModelProperty(value = "顯示次序")
    private Integer seqNo;

    @ApiModelProperty(value = "商品種類")
    private Long itemTypeCid;

    @ApiModelProperty(value = "商品項目")
    private Long itemKindCid;

    @ApiModelProperty(value = "商品名稱")
    private String itemName;
    
	@CreatedBy
    @Column(name = "create_by", updatable = false)
    @ApiModelProperty(value = "建立人", hidden = true)
    private String createBy;

    @LastModifiedBy
    @Column(name = "update_by")
    @ApiModelProperty(value = "更新人", hidden = true)
    private String updateBy;

    @CreationTimestamp
    @Column(name = "create_time", updatable = false)
    @ApiModelProperty(value = "建立時間", hidden = true)
    private Timestamp createTime;

    @UpdateTimestamp
    @Column(name = "update_time")
    @ApiModelProperty(value = "更新時間", hidden = true)
    private Timestamp updateTime;

}
