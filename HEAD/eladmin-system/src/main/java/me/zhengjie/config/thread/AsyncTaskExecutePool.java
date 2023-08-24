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
package me.zhengjie.config.thread;

import lombok.extern.slf4j.Slf4j;
import org.springframework.aop.interceptor.AsyncUncaughtExceptionHandler;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.AsyncConfigurer;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

/**
 * 非同步任務執行緒池裝配類
 * @author https://juejin.im/entry/5abb8f6951882555677e9da2
 * @date 2019年10月31日15:06:18
 */
@Slf4j
@Configuration
public class AsyncTaskExecutePool implements AsyncConfigurer {

    @Override
    public Executor getAsyncExecutor() {
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        //核心執行緒池大小
        executor.setCorePoolSize(AsyncTaskProperties.corePoolSize);
        //最大執行緒數
        executor.setMaxPoolSize(AsyncTaskProperties.maxPoolSize);
        //佇列容量
        executor.setQueueCapacity(AsyncTaskProperties.queueCapacity);
        //活躍時間
        executor.setKeepAliveSeconds(AsyncTaskProperties.keepAliveSeconds);
        //執行緒工廠
        executor.setThreadFactory(new TheadFactoryName("el-async"));
        // setRejectedExecutionHandler：當pool已經達到max size的時候，如何處理新任務
        // CallerRunsPolicy：不在新執行緒中執行任務，而是由呼叫者所在的執行緒來執行
        executor.setRejectedExecutionHandler(new ThreadPoolExecutor.CallerRunsPolicy());
        executor.initialize();
        return executor;
    }

    @Override
    public AsyncUncaughtExceptionHandler getAsyncUncaughtExceptionHandler() {
        return (throwable, method, objects) -> {
            log.error("===="+throwable.getMessage()+"====", throwable);
            log.error("exception method:"+method.getName());
        };
    }
}
