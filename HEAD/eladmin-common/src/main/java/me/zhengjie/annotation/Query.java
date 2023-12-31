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
package me.zhengjie.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @author Zheng Jie
 * @date 2019-6-4 13:52:30
 */
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
public @interface Query {

    // Dong ZhaoYang 2017/8/7 基本對象的屬性名
    String propName() default "";
    // Dong ZhaoYang 2017/8/7 查詢方式
    Type type() default Type.EQUAL;

    /**
     * 連線查詢的屬性名，如User類中的dept
     */
    String joinName() default "";

    /**
     * 預設左連線
     */
    Join join() default Join.LEFT;

    /**
     * 多欄位模糊搜索，僅支援String型別欄位，多個用逗號隔開, 如@Query(blurry = "email,username")
     */
    String blurry() default "";

    enum Type {
        // jie 2019/6/4 相等
        EQUAL
        // Dong ZhaoYang 2017/8/7 大於等於
        , GREATER_THAN
        // Dong ZhaoYang 2017/8/7 小於等於
        , LESS_THAN
        // Dong ZhaoYang 2017/8/7 中模糊查詢
        , INNER_LIKE
        // Dong ZhaoYang 2017/8/7 左模糊查詢
        , LEFT_LIKE
        // Dong ZhaoYang 2017/8/7 右模糊查詢
        , RIGHT_LIKE
        // Dong ZhaoYang 2017/8/7 小於
        , LESS_THAN_NQ
        // jie 2019/6/4 包含
        , IN
        // 不包含
        , NOT_IN
        // 不等於
        ,NOT_EQUAL
        // between
        ,BETWEEN
        // 不為空
        ,NOT_NULL
        // 為空
        ,IS_NULL
    }

    /**
     * @author Zheng Jie
     * 適用於簡單連線查詢，複雜的請自定義該註解，或者使用sql查詢
     */
    enum Join {
        /** jie 2019-6-4 13:18:30 */
        LEFT, RIGHT, INNER
    }

}

