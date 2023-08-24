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
package me.zhengjie.modules.mnt.service.dto;

import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseDTO;
import java.io.Serializable;

/**
* @author zhanghouying
* @date 2019-08-24
*/
@Getter
@Setter
public class AppDto extends BaseDTO implements Serializable {

	/**
	 * 應用編號
	 */
    private Long id;

	/**
	 * 應用名稱
	 */
	private String name;

	/**
	 * 埠
	 */
	private Integer port;

	/**
	 * 上傳目錄
	 */
	private String uploadPath;

	/**
	 * 部署目錄
	 */
	private String deployPath;

	/**
	 * 備份目錄
	 */
	private String backupPath;

	/**
	 * 啟動指令碼
	 */
	private String startScript;

	/**
	 * 部署指令碼
	 */
	private String deployScript;

}
