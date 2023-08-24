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
package me.zhengjie.modules.system.domain;

import com.alibaba.fastjson.annotation.JSONField;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Objects;
import java.util.Set;

/**
 * @author Zheng Jie
 * @date 2018-12-17
 */
@Entity
@Getter
@Setter
@Table(name = "sys_menu")
public class Menu extends BaseEntity implements Serializable {

    @Id
    @Column(name = "menu_id")
    @NotNull(groups = {Update.class})
    @ApiModelProperty(value = "ID", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @JSONField(serialize = false)
    @ManyToMany(mappedBy = "menus")
    @ApiModelProperty(value = "選單角色")
    private Set<Role> roles;

    @ApiModelProperty(value = "選單標題")
    private String title;

    @Column(name = "name")
    @ApiModelProperty(value = "選單元件名稱")
    private String componentName;

    @ApiModelProperty(value = "排序")
    private Integer menuSort = 999;

    @ApiModelProperty(value = "元件路徑")
    private String component;

    @ApiModelProperty(value = "路由地址")
    private String path;

    @ApiModelProperty(value = "選單型別，目錄、選單、按鈕")
    private Integer type;

    @ApiModelProperty(value = "許可權標識")
    private String permission;

    @ApiModelProperty(value = "選單圖示")
    private String icon;

    @Column(columnDefinition = "bit(1) default 0")
    @ApiModelProperty(value = "快取")
    private Boolean cache;

    @Column(columnDefinition = "bit(1) default 0")
    @ApiModelProperty(value = "是否隱藏")
    private Boolean hidden;

    @ApiModelProperty(value = "上級選單")
    private Long pid;

    @ApiModelProperty(value = "子節點數目", hidden = true)
    private Integer subCount = 0;

    @ApiModelProperty(value = "外鏈選單")
    private Boolean iFrame;

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Menu menu = (Menu) o;
        return Objects.equals(id, menu.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}