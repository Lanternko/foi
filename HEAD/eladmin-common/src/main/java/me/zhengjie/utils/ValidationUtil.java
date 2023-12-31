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
package me.zhengjie.utils;

import cn.hutool.core.lang.Validator;
import cn.hutool.core.util.ObjectUtil;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.exception.handler.SysErrLev;

/**
 * 驗證工具
 *
 * @author Zheng Jie
 * @date 2018-11-23
 */
public class ValidationUtil {

	/**
	 * 驗證空
	 */
	public static void isNull(Object obj, String entity, String parameter, Object value) {
		if (ObjectUtil.isNull(obj)) {
			String msg = entity + " 不存在: " + parameter + " is " + value;
			throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, msg);
		}
	}

	/**
	 * 驗證是否為郵箱
	 */
	public static boolean isEmail(String email) {
		return Validator.isEmail(email);
	}

}
