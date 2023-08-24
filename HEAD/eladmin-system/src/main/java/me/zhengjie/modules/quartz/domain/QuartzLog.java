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
package me.zhengjie.modules.quartz.domain;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;
import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * @author Zheng Jie
 * @date 2019-01-07
 */
@Entity
@Data
@Table(name = "sys_quartz_log")
public class QuartzLog implements Serializable {

    @Id
    @Column(name = "log_id")
    @ApiModelProperty(value = "ID", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ApiModelProperty(value = "任務名稱", hidden = true)
    private String jobName;

    @ApiModelProperty(value = "bean名稱", hidden = true)
    private String beanName;

    @ApiModelProperty(value = "方法名稱", hidden = true)
    private String methodName;

    @ApiModelProperty(value = "參數", hidden = true)
    private String params;

    @ApiModelProperty(value = "cron表達式", hidden = true)
    private String cronExpression;

    @ApiModelProperty(value = "狀態", hidden = true)
    private Boolean isSuccess;

    @ApiModelProperty(value = "異常詳情", hidden = true)
    private String exceptionDetail;

    @ApiModelProperty(value = "執行耗時", hidden = true)
    private Long time;

    @CreationTimestamp
    @ApiModelProperty(value = "建立時間", hidden = true)
    private Timestamp createTime;
}
