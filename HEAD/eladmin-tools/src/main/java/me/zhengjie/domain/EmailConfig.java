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

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;

/**
 * 郵件配置類，數據存覆蓋式存入數據存
 * @author Zheng Jie
 * @date 2018-12-26
 */
@Entity
@Data
@Table(name = "tool_email_config")
public class EmailConfig implements Serializable {

    @Id
    @Column(name = "config_id")
    @ApiModelProperty(value = "ID", hidden = true)
    private Long id;

    @NotBlank
    @ApiModelProperty(value = "郵件伺服器SMTP地址")
    private String host;

    @NotBlank
    @ApiModelProperty(value = "郵件伺服器 SMTP 埠")
    private String port;

    @NotBlank
    @ApiModelProperty(value = "發件者使用者名稱")
    private String user;

    @NotBlank
    @ApiModelProperty(value = "密碼")
    private String pass;

    @NotBlank
    @ApiModelProperty(value = "收件人")
    private String fromUser;
}
