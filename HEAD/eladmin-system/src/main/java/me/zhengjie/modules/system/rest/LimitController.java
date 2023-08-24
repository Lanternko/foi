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
package me.zhengjie.modules.system.rest;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import me.zhengjie.annotation.Limit;
import me.zhengjie.annotation.rest.AnonymousGetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.atomic.AtomicInteger;

/**
 * @author /
 * 介面限流測試類
 */
@RestController
@RequestMapping("/api/limit")
@Api(tags = "系統：限流測試管理")
public class LimitController {

    private static final AtomicInteger ATOMIC_INTEGER = new AtomicInteger();

    /**
     * 測試限流注解，下面配置說明該介面 60秒內最多隻能訪問 10次，儲存到redis的鍵名為 limit_test，
     */
    @AnonymousGetMapping
    @ApiOperation("測試")
    @Limit(key = "test", period = 60, count = 10, name = "testLimit", prefix = "limit")
    public int testLimit() {
        return ATOMIC_INTEGER.incrementAndGet();
    }
}
