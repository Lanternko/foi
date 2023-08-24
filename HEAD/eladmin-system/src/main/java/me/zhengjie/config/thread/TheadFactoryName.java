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

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

import org.springframework.stereotype.Component;

import me.zhengjie.utils.StringUtils;

/**
 * 自定義執行緒名稱
 * @author Zheng Jie
 * @date 2019年10月31日17:49:55
 */
@Component
public class TheadFactoryName implements ThreadFactory {

    private static final AtomicInteger POOL_NUMBER = new AtomicInteger(1);
    private final ThreadGroup group;
    private final AtomicInteger threadNumber = new AtomicInteger(1);
    private final String namePrefix;

    private final static String DEF_NAME = "el-pool-";

    public TheadFactoryName() {
        this(DEF_NAME);
    }

    public TheadFactoryName(String name){
        SecurityManager s = System.getSecurityManager();
        group = (s != null) ? s.getThreadGroup() :
                Thread.currentThread().getThreadGroup();
        //此時namePrefix就是 name + 第幾個用這個工廠建立執行緒池的
        this.namePrefix = (StringUtils.isNotBlank(name) ? name : DEF_NAME) + "-" + POOL_NUMBER.getAndIncrement();
    }

    @Override
    public Thread newThread(Runnable r) {
        //此時執行緒的名字 就是 namePrefix + -exec- + 這個執行緒池中第幾個執行的執行緒
        Thread t = new Thread(group, r,
                namePrefix + "-exec-"+threadNumber.getAndIncrement(),
                0);
        if (t.isDaemon()) {
            t.setDaemon(false);
        }
        if (t.getPriority() != Thread.NORM_PRIORITY) {
            t.setPriority(Thread.NORM_PRIORITY);
        }
        return t;
    }
}
