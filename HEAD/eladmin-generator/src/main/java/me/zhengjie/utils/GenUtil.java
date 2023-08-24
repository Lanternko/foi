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

import cn.hutool.core.util.StrUtil;
import cn.hutool.extra.template.*;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.domain.GenConfig;
import me.zhengjie.domain.ColumnInfo;
import org.springframework.util.ObjectUtils;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.time.LocalDate;
import java.util.*;

import static me.zhengjie.utils.FileUtil.SYS_TEM_DIR;

/**
 * 程式碼產生
 *
 * @author Zheng Jie
 * @date 2019-01-02
 */
@Slf4j
@SuppressWarnings({"unchecked", "all"})
public class GenUtil {

    private static final String TIMESTAMP = "Timestamp";

    private static final String BIGDECIMAL = "BigDecimal";

    public static final String PK = "PRI";

    public static final String EXTRA = "auto_increment";

    /**
     * 獲取後端程式碼模板名稱
     *
     * @return List
     */
    private static List<String> getAdminTemplateNames() {
        List<String> templateNames = new ArrayList<>();
        templateNames.add("Entity");
        templateNames.add("Dto");
        templateNames.add("Mapper");
        templateNames.add("Controller");
        templateNames.add("QueryCriteria");
        templateNames.add("Service");
        templateNames.add("ServiceImpl");
        templateNames.add("Repository");
        return templateNames;
    }

    /**
     * 獲取前端程式碼模板名稱
     *
     * @return List
     */
    private static List<String> getFrontTemplateNames() {
        List<String> templateNames = new ArrayList<>();
        templateNames.add("index");
        templateNames.add("api");
        return templateNames;
    }

    public static List<Map<String, Object>> preview(List<ColumnInfo> columns, GenConfig genConfig) {
        Map<String, Object> genMap = getGenMap(columns, genConfig);
        List<Map<String, Object>> genList = new ArrayList<>();
        // 獲取後端模版
        List<String> templates = getAdminTemplateNames();
        TemplateEngine engine = TemplateUtil.createEngine(new TemplateConfig("template", TemplateConfig.ResourceMode.CLASSPATH));
        for (String templateName : templates) {
            Map<String, Object> map = new HashMap<>(1);
            Template template = engine.getTemplate("generator/admin/" + templateName + ".ftl");
            map.put("content", template.render(genMap));
            map.put("name", templateName);
            genList.add(map);
        }
        // 獲取前端模版
        templates = getFrontTemplateNames();
        for (String templateName : templates) {
            Map<String, Object> map = new HashMap<>(1);
            Template template = engine.getTemplate("generator/front/" + templateName + ".ftl");
            map.put(templateName, template.render(genMap));
            map.put("content", template.render(genMap));
            map.put("name", templateName);
            genList.add(map);
        }
        return genList;
    }

    public static String download(List<ColumnInfo> columns, GenConfig genConfig) throws IOException {
        // 拼接的路徑：/tmpeladmin-gen-temp/，這個路徑在Linux下需要root使用者才有許可權建立,非root使用者會許可權錯誤而失敗，更改為： /tmp/eladmin-gen-temp/
        // String tempPath =SYS_TEM_DIR + "eladmin-gen-temp" + File.separator + genConfig.getTableName() + File.separator;
        String tempPath = SYS_TEM_DIR + "eladmin-gen-temp" + File.separator + genConfig.getTableName() + File.separator;
        Map<String, Object> genMap = getGenMap(columns, genConfig);
        TemplateEngine engine = TemplateUtil.createEngine(new TemplateConfig("template", TemplateConfig.ResourceMode.CLASSPATH));
        // 產生後端程式碼
        List<String> templates = getAdminTemplateNames();
        for (String templateName : templates) {
            Template template = engine.getTemplate("generator/admin/" + templateName + ".ftl");
            String filePath = getAdminFilePath(templateName, genConfig, genMap.get("className").toString(), tempPath + "ez-admin" + File.separator);
            assert filePath != null;
            File file = new File(filePath);
            // 如果非覆蓋產生
            if (!genConfig.getCover() && FileUtil.exist(file)) {
                continue;
            }
            // 產生程式碼
            genFile(file, template, genMap);
        }
        // 產生前端程式碼
        templates = getFrontTemplateNames();
        for (String templateName : templates) {
            Template template = engine.getTemplate("generator/front/" + templateName + ".ftl");
            String path = tempPath + "eladmin-web" + File.separator;
            String apiPath = path + "src" + File.separator + "api" + File.separator;
            String srcPath = path + "src" + File.separator + "views" + File.separator + genMap.get("changeClassName").toString() + File.separator;
            String filePath = getFrontFilePath(templateName, apiPath, srcPath, genMap.get("changeClassName").toString());
            assert filePath != null;
            File file = new File(filePath);
            // 如果非覆蓋產生
            if (!genConfig.getCover() && FileUtil.exist(file)) {
                continue;
            }
            // 產生程式碼
            genFile(file, template, genMap);
        }
        return tempPath;
    }

    public static void generatorCode(List<ColumnInfo> columnInfos, GenConfig genConfig) throws IOException {
        Map<String, Object> genMap = getGenMap(columnInfos, genConfig);
        TemplateEngine engine = TemplateUtil.createEngine(new TemplateConfig("template", TemplateConfig.ResourceMode.CLASSPATH));
        // 產生後端程式碼
        List<String> templates = getAdminTemplateNames();
        for (String templateName : templates) {
            Template template = engine.getTemplate("generator/admin/" + templateName + ".ftl");
            String rootPath = System.getProperty("user.dir");
            String filePath = getAdminFilePath(templateName, genConfig, genMap.get("className").toString(), rootPath);

            assert filePath != null;
            File file = new File(filePath);

            // 如果非覆蓋產生
            if (!genConfig.getCover() && FileUtil.exist(file)) {
                continue;
            }
            // 產生程式碼
            genFile(file, template, genMap);
        }

        // 產生前端程式碼
        templates = getFrontTemplateNames();
        for (String templateName : templates) {
            Template template = engine.getTemplate("generator/front/" + templateName + ".ftl");
            String filePath = getFrontFilePath(templateName, genConfig.getApiPath(), genConfig.getPath(), genMap.get("changeClassName").toString());

            assert filePath != null;
            File file = new File(filePath);

            // 如果非覆蓋產生
            if (!genConfig.getCover() && FileUtil.exist(file)) {
                continue;
            }
            // 產生程式碼
            genFile(file, template, genMap);
        }
    }

    // 獲取模版數據
    private static Map<String, Object> getGenMap(List<ColumnInfo> columnInfos, GenConfig genConfig) {
        // 儲存模版欄位數據
        Map<String, Object> genMap = new HashMap<>(16);
        // 介面別名
        genMap.put("apiAlias", genConfig.getApiAlias());
        // 包名稱
        genMap.put("package", genConfig.getPack());
        // 模組名稱
        genMap.put("moduleName", genConfig.getModuleName());
        // 作者
        genMap.put("author", genConfig.getAuthor());
        // 建立日期
        genMap.put("date", LocalDate.now().toString());
        // 表名
        genMap.put("tableName", genConfig.getTableName());
        // 大寫開頭的類名
        String className = StringUtils.toCapitalizeCamelCase(genConfig.getTableName());
        // 小寫開頭的類名
        String changeClassName = StringUtils.toCamelCase(genConfig.getTableName());
        // 判斷是否去除表字首
        if (StringUtils.isNotEmpty(genConfig.getPrefix())) {
            className = StringUtils.toCapitalizeCamelCase(StrUtil.removePrefix(genConfig.getTableName(), genConfig.getPrefix()));
            changeClassName = StringUtils.toCamelCase(StrUtil.removePrefix(genConfig.getTableName(), genConfig.getPrefix()));
            changeClassName = StringUtils.uncapitalize(changeClassName);
        }
        // 儲存類名
        genMap.put("className", className);
        // 儲存小寫開頭的類名
        genMap.put("changeClassName", changeClassName);
        // 存在 Timestamp 欄位
        genMap.put("hasTimestamp", false);
        // 查詢類中存在 Timestamp 欄位
        genMap.put("queryHasTimestamp", false);
        // 存在 BigDecimal 欄位
        genMap.put("hasBigDecimal", false);
        // 查詢類中存在 BigDecimal 欄位
        genMap.put("queryHasBigDecimal", false);
        // 是否需要建立查詢
        genMap.put("hasQuery", false);
        // 自增主鍵
        genMap.put("auto", false);
        // 存在字典
        genMap.put("hasDict", false);
        // 存在日期註解
        genMap.put("hasDateAnnotation", false);
        // 儲存欄位資訊
        List<Map<String, Object>> columns = new ArrayList<>();
        // 儲存查詢欄位的資訊
        List<Map<String, Object>> queryColumns = new ArrayList<>();
        // 儲存字典資訊
        List<String> dicts = new ArrayList<>();
        // 儲存 between 資訊
        List<Map<String, Object>> betweens = new ArrayList<>();
        // 儲存不為空的欄位資訊
        List<Map<String, Object>> isNotNullColumns = new ArrayList<>();

        for (ColumnInfo column : columnInfos) {
            Map<String, Object> listMap = new HashMap<>(16);
            // 欄位說明
            listMap.put("remark", column.getRemark());
            // 欄位型別
            listMap.put("columnKey", column.getKeyType());
            // 主鍵型別
            String colType = ColUtil.cloToJava(column.getColumnType());
            // 小寫開頭的欄位名
            String changeColumnName = StringUtils.toCamelCase(column.getColumnName());
            // 大寫開頭的欄位名
            String capitalColumnName = StringUtils.toCapitalizeCamelCase(column.getColumnName());
            if (PK.equals(column.getKeyType())) {
                // 儲存主鍵型別
                genMap.put("pkColumnType", colType);
                // 儲存小寫開頭的欄位名
                genMap.put("pkChangeColName", changeColumnName);
                // 儲存大寫開頭的欄位名
                genMap.put("pkCapitalColName", capitalColumnName);
            }
            // 是否存在 Timestamp 型別的欄位
            if (TIMESTAMP.equals(colType)) {
                genMap.put("hasTimestamp", true);
            }
            // 是否存在 BigDecimal 型別的欄位
            if (BIGDECIMAL.equals(colType)) {
                genMap.put("hasBigDecimal", true);
            }
            // 主鍵是否自增
            if (EXTRA.equals(column.getExtra())) {
                genMap.put("auto", true);
            }
            // 主鍵存在字典
            if (StringUtils.isNotBlank(column.getDictName())) {
                genMap.put("hasDict", true);
                if(!dicts.contains(column.getDictName()))
                    dicts.add(column.getDictName());
            }

            // 儲存欄位型別
            listMap.put("columnType", colType);
            // 儲存字原始段名稱
            listMap.put("columnName", column.getColumnName());
            // 不為空
            listMap.put("istNotNull", column.getNotNull());
            // 欄位列表顯示
            listMap.put("columnShow", column.getListShow());
            // 表單顯示
            listMap.put("formShow", column.getFormShow());
            // 表單元件型別
            listMap.put("formType", StringUtils.isNotBlank(column.getFormType()) ? column.getFormType() : "Input");
            // 小寫開頭的欄位名稱
            listMap.put("changeColumnName", changeColumnName);
            //大寫開頭的欄位名稱
            listMap.put("capitalColumnName", capitalColumnName);
            // 字典名稱
            listMap.put("dictName", column.getDictName());
            // 日期註解
            listMap.put("dateAnnotation", column.getDateAnnotation());
            if (StringUtils.isNotBlank(column.getDateAnnotation())) {
                genMap.put("hasDateAnnotation", true);
            }
            // 新增非空欄位資訊
            if (column.getNotNull()) {
                isNotNullColumns.add(listMap);
            }
            // 判斷是否有查詢，如有則把查詢的欄位set進columnQuery
            if (!StringUtils.isBlank(column.getQueryType())) {
                // 查詢型別
                listMap.put("queryType", column.getQueryType());
                // 是否存在查詢
                genMap.put("hasQuery", true);
                if (TIMESTAMP.equals(colType)) {
                    // 查詢中儲存 Timestamp 型別
                    genMap.put("queryHasTimestamp", true);
                }
                if (BIGDECIMAL.equals(colType)) {
                    // 查詢中儲存 BigDecimal 型別
                    genMap.put("queryHasBigDecimal", true);
                }
                if ("between".equalsIgnoreCase(column.getQueryType())) {
                    betweens.add(listMap);
                } else {
                    // 新增到查詢列表中
                    queryColumns.add(listMap);
                }
            }
            // 新增到欄位列表中
            columns.add(listMap);
        }
        // 儲存欄位列表
        genMap.put("columns", columns);
        // 儲存查詢列表
        genMap.put("queryColumns", queryColumns);
        // 儲存欄位列表
        genMap.put("dicts", dicts);
        // 儲存查詢列表
        genMap.put("betweens", betweens);
        // 儲存非空欄位資訊
        genMap.put("isNotNullColumns", isNotNullColumns);
        return genMap;
    }

    /**
     * 定義後端檔案路徑以及名稱
     */
    private static String getAdminFilePath(String templateName, GenConfig genConfig, String className, String rootPath) {
        String projectPath = rootPath + File.separator + genConfig.getModuleName();
        String packagePath = projectPath + File.separator + "src" + File.separator + "main" + File.separator + "java" + File.separator;
        if (!ObjectUtils.isEmpty(genConfig.getPack())) {
            packagePath += genConfig.getPack().replace(".", File.separator) + File.separator;
        }

        if ("Entity".equals(templateName)) {
            return packagePath + "domain" + File.separator + className + ".java";
        }

        if ("Controller".equals(templateName)) {
            return packagePath + "rest" + File.separator + className + "Controller.java";
        }

        if ("Service".equals(templateName)) {
            return packagePath + "service" + File.separator + className + "Service.java";
        }

        if ("ServiceImpl".equals(templateName)) {
            return packagePath + "service" + File.separator + "impl" + File.separator + className + "ServiceImpl.java";
        }

        if ("Dto".equals(templateName)) {
            return packagePath + "service" + File.separator + "dto" + File.separator + className + "Dto.java";
        }

        if ("QueryCriteria".equals(templateName)) {
            return packagePath + "service" + File.separator + "dto" + File.separator + className + "QueryCriteria.java";
        }

        if ("Mapper".equals(templateName)) {
            return packagePath + "service" + File.separator + "mapstruct" + File.separator + className + "Mapper.java";
        }

        if ("Repository".equals(templateName)) {
            return packagePath + "repository" + File.separator + className + "Repository.java";
        }

        return null;
    }

    /**
     * 定義前端檔案路徑以及名稱
     */
    private static String getFrontFilePath(String templateName, String apiPath, String path, String apiName) {

        if ("api".equals(templateName)) {
            return apiPath + File.separator + apiName + ".js";
        }

        if ("index".equals(templateName)) {
            return path + File.separator + "index.vue";
        }

        return null;
    }

    private static void genFile(File file, Template template, Map<String, Object> map) throws IOException {
        // 產生目標檔案
        Writer writer = null;
        try {
            FileUtil.touch(file);
            writer = new FileWriter(file);
            template.render(map, writer);
        } catch (TemplateException | IOException e) {
            throw new RuntimeException(e);
        } finally {
            assert writer != null;
            writer.close();
        }
    }
}
