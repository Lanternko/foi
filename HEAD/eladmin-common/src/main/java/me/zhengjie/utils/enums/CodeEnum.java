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
package me.zhengjie.utils.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * <p>
 * 驗證碼業務場景對應的 Redis 中的 key
 * </p>
 * @author Zheng Jie
 * @date 2020-05-02
 */
@Getter
@AllArgsConstructor
public enum CodeEnum {

    /* 通過手機號碼重置郵箱 */
    PHONE_RESET_EMAIL_CODE("phone_reset_email_code_", "通過手機號碼重置郵箱"),

    /* 通過舊郵箱重置郵箱 */
    EMAIL_RESET_EMAIL_CODE("email_reset_email_code_", "通過舊郵箱重置郵箱"),

    /* 通過手機號碼重置密碼 */
    PHONE_RESET_PWD_CODE("phone_reset_pwd_code_", "通過手機號碼重置密碼"),

    /* 通過郵箱重置密碼 */
    EMAIL_RESET_PWD_CODE("email_reset_pwd_code_", "通過郵箱重置密碼");

    private final String key;
    private final String description;
}
