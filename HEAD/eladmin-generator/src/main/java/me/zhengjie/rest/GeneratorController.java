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
package me.zhengjie.rest;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.domain.ColumnInfo;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.exception.handler.SysErrLev;
import me.zhengjie.service.GenConfigService;
import me.zhengjie.service.GeneratorService;
import me.zhengjie.utils.PageUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author Zheng Jie
 * @date 2019-01-02
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("/api/generator")
@Api(tags = "系統：程式碼產生管理")
public class GeneratorController {

    private final GeneratorService generatorService;
    private final GenConfigService genConfigService;

    @Value("${generator.enabled}")
    private Boolean generatorEnabled;

    @ApiOperation("查詢數據庫數據")
    @GetMapping(value = "/tables/all")
    public ResponseEntity<Object> queryAllTables(){
        return new ResponseEntity<>(generatorService.getTables(), HttpStatus.OK);
    }

    @ApiOperation("查詢數據庫數據")
    @GetMapping(value = "/tables")
    public ResponseEntity<Object> queryTables(@RequestParam(defaultValue = "") String name,
                                    @RequestParam(defaultValue = "0")Integer page,
                                    @RequestParam(defaultValue = "10")Integer size){
        int[] startEnd = PageUtil.transToStartEnd(page, size);
        return new ResponseEntity<>(generatorService.getTables(name,startEnd), HttpStatus.OK);
    }

    @ApiOperation("查詢欄位數據")
    @GetMapping(value = "/columns")
    public ResponseEntity<Object> queryColumns(@RequestParam String tableName){
        List<ColumnInfo> columnInfos = generatorService.getColumns(tableName);
        return new ResponseEntity<>(PageUtil.toPage(columnInfos,columnInfos.size()), HttpStatus.OK);
    }

    @ApiOperation("儲存欄位數據")
    @PutMapping
    public ResponseEntity<HttpStatus> saveColumn(@RequestBody List<ColumnInfo> columnInfos){
        generatorService.save(columnInfos);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @ApiOperation("同步欄位數據")
    @PostMapping(value = "sync")
    public ResponseEntity<HttpStatus> syncColumn(@RequestBody List<String> tables){
        for (String table : tables) {
            generatorService.sync(generatorService.getColumns(table), generatorService.query(table));
        }
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @ApiOperation("產生程式碼")
    @PostMapping(value = "/{tableName}/{type}")
    public ResponseEntity<Object> generatorCode(@PathVariable String tableName, @PathVariable Integer type, HttpServletRequest request, HttpServletResponse response){
        if(!generatorEnabled && type == 0){
            throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "此環境不允許產生程式碼，請選擇預覽或者下載檢視！");
        }
        switch (type){
            // 產生程式碼
            case 0: generatorService.generator(genConfigService.find(tableName), generatorService.getColumns(tableName));
                    break;
            // 預覽
            case 1: return generatorService.preview(genConfigService.find(tableName), generatorService.getColumns(tableName));
            // 打包
            case 2: generatorService.download(genConfigService.find(tableName), generatorService.getColumns(tableName), response);
                    break;
            default: throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "沒有這個選項");
        }
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
