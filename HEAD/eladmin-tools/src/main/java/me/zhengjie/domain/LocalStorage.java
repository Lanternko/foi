/*
 *  Copyright 2019-2020 Zheng Jie
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
package me.zhengjie.domain;

import java.io.Serializable;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

/**
* @author Zheng Jie
* @date 2019-09-05
*/
@Getter
@Setter
@Entity
@Table(name = "tool_local_storage")
@NoArgsConstructor
public class LocalStorage extends BaseEntity implements Serializable {

    private static final long serialVersionUID = 3115283301475653671L;

	@Id
    @Column(name = "storage_id")
    @ApiModelProperty(value = "ID", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "guid識別值")
    private String storageUuid;
    
    @ApiModelProperty(value = "真實檔名")
    private String realName;

    @ApiModelProperty(value = "檔名")
    private String name;

    @ApiModelProperty(value = "後綴")
    private String suffix;

    @ApiModelProperty(value = "路徑")
    private String path;

    @ApiModelProperty(value = "型別")
    private String type;

    @ApiModelProperty(value = "大小")
    private String size;
    
    @ApiModelProperty(value = "校驗值")
    private String sha2;
    
    @ApiModelProperty(value = "上傳程式")
    private String fromPageCode;

    public LocalStorage(String realName, String name, String suffix, String path, String type, String size, String sha2, String fromPageCode, String storageUuid) {
        this.realName = realName;
        this.name = name;
        this.suffix = suffix;
        this.path = path;
        this.type = type;
        this.size = size;
        this.sha2 = sha2;
        this.fromPageCode = fromPageCode;
        this.storageUuid = storageUuid;
    }

    public void copy(LocalStorage source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}