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

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author Jie
 * @date 2019-01-07
 */
@Slf4j
public class SpringContextHolder implements ApplicationContextAware, DisposableBean {

    private static ApplicationContext applicationContext = null;
    private static final List<CallBack> CALL_BACKS = new ArrayList<>();
    private static boolean addCallback = true;

    /**
     * 針對 某些初始化方法，在SpringContextHolder 未初始化時 提交回調方法。
     * 在SpringContextHolder 初始化后，進行回撥使用
     *
     * @param callBack 回撥函式
     */
    public synchronized static void addCallBacks(CallBack callBack) {
        if (addCallback) {
            SpringContextHolder.CALL_BACKS.add(callBack);
        } else {
            log.warn("CallBack：{} 已無法新增！立即執行", callBack.getCallBackName());
            callBack.executor();
        }
    }

    /**
     * 從靜態變數applicationContext中取得Bean, 自動轉型為所賦值對象的型別.
     */
    @SuppressWarnings("unchecked")
    public static <T> T getBean(String name) {
        assertContextInjected();
        return (T) applicationContext.getBean(name);
    }

    /**
     * 從靜態變數applicationContext中取得Bean, 自動轉型為所賦值對象的型別.
     */
    public static <T> T getBean(Class<T> requiredType) {
        assertContextInjected();
        return applicationContext.getBean(requiredType);
    }

    /**
     * 獲取SpringBoot 配置資訊
     *
     * @param property     屬性key
     * @param defaultValue 預設值
     * @param requiredType 返回型別
     * @return /
     */
    public static <T> T getProperties(String property, T defaultValue, Class<T> requiredType) {
        T result = defaultValue;
        try {
            result = getBean(Environment.class).getProperty(property, requiredType);
        } catch (Exception ignored) {}
        return result;
    }

    /**
     * 獲取SpringBoot 配置資訊
     *
     * @param property 屬性key
     * @return /
     */
    public static String getProperties(String property) {
        return getProperties(property, null, String.class);
    }

    /**
     * 獲取SpringBoot 配置資訊
     *
     * @param property     屬性key
     * @param requiredType 返回型別
     * @return /
     */
    public static <T> T getProperties(String property, Class<T> requiredType) {
        return getProperties(property, null, requiredType);
    }

    /**
     * 檢查ApplicationContext不為空.
     */
    private static void assertContextInjected() {
        if (applicationContext == null) {
            throw new IllegalStateException("applicaitonContext屬性未注入, 請在applicationContext" +
                    ".xml中定義SpringContextHolder或在SpringBoot啟動類中註冊SpringContextHolder.");
        }
    }

    /**
     * 清除SpringContextHolder中的ApplicationContext為Null.
     */
    private static void clearHolder() {
        log.debug("清除SpringContextHolder中的ApplicationContext:"
                + applicationContext);
        applicationContext = null;
    }

    @Override
    public void destroy() {
        SpringContextHolder.clearHolder();
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        if (SpringContextHolder.applicationContext != null) {
            log.warn("SpringContextHolder中的ApplicationContext被覆蓋, 原有ApplicationContext為:" + SpringContextHolder.applicationContext);
        }
        SpringContextHolder.applicationContext = applicationContext;
        if (addCallback) {
            for (CallBack callBack : SpringContextHolder.CALL_BACKS) {
                callBack.executor();
            }
            CALL_BACKS.clear();
        }
        SpringContextHolder.addCallback = false;
    }

    /**
     * 獲取 @Service 的所有 bean 名稱
     * @return /
     */
    public static List<String> getAllServiceBeanName() {
        return new ArrayList<>(Arrays.asList(applicationContext
                .getBeanNamesForAnnotation(Service.class)));
    }
}
