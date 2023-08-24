package com.ezcore.tools.codedetail.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.tools.codedetail.service.impl.CodeDetailServiceImpl;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.codedetail.dto.CodeDetailFilterDto;
import com.ezcore.tools.codedetail.model.loader.CodeDetailLoader;
import com.ezcore.tools.codedetail.model.request.CodeDetailRequest;
import com.ezcore.tools.codedetail.model.response.BaseStateResponse;
import com.ezcore.tools.codedetail.model.response.CommResponse;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import me.zhengjie.annotation.Log;

@RestController
@Api(tags = "系統 : 共用代碼管理")
@RequestMapping("tools/codedetail/api/v1/codedetail")
public class CodeDetailController extends BaseController {
    static final String JOBCODE = "codeDetail";

    @Autowired
    CodeDetailServiceImpl codeDetailMap;
    @Autowired
    CodeDetailLoader codeDetailLoader;

    @Log("代碼總覽")
    @ApiOperation("代碼總覽")
    @GetMapping("/list")
    @PreAuthorize("@el.check('code:list')")
    /**
     * 根據種類kind取得所有相應的代碼資訊。
     */
    public ResponseEntity<Object> getKind(@RequestParam String kind){
        CommResponse response = CommResponse.builder()
        .respTime(System.currentTimeMillis())
        .respState(BaseStateResponse.builder().code(0).build())
        .jobCode(JOBCODE)
        .content(codeDetailMap.getList(kind))
        .build();
    return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @Log("取得代碼")
    @ApiOperation("取得代碼")
    @GetMapping
    @PreAuthorize("@el.check('code:edit')")
    /**
     * 根據種類和代碼，取得具體的代碼詳細資訊。
     */
    public ResponseEntity<Object> getByKindCode(CodeDetailRequest request){
                
        CommResponse response = CommResponse.builder()
		    .respTime(System.currentTimeMillis())
            .respState(BaseStateResponse.builder().code(0).build())
            .jobCode(JOBCODE)
            .content(codeDetailMap.getCodeDetail(request.getKind(), request.getCode()))
            .build();
        return new ResponseEntity<>(response,HttpStatus.OK);
    }

    @Log("取得代碼")
    @ApiOperation("取得代碼")
    @GetMapping("/getById")
    @PreAuthorize("@el.check('code:edit')")
    /**
     * 根據ID，取得具體的代碼詳細資訊。
     */
    public ResponseEntity<Object> getById(Long id){
                
        CommResponse response = CommResponse.builder()
		    .respTime(System.currentTimeMillis())
            .respState(BaseStateResponse.builder().code(0).build())
            .jobCode(JOBCODE)
            .content(codeDetailMap.getCodeDetail(id))
            .build();
        return new ResponseEntity<>(response,HttpStatus.OK);
    }


    @Log("修改代碼")
    @ApiOperation("修改代碼")
    @PutMapping
    @PreAuthorize("@el.check('code:edit')")
    /**
     * 更新指定的代碼詳細資訊。
     */
    public ResponseEntity<Object> put(@RequestBody CodeDetailDto update){
        try {
            codeDetailMap.update(update);
        } catch (Exception e) {
            return new ResponseEntity<>(e, HttpStatus.BAD_REQUEST);
        }
        CommResponse response = CommResponse.builder() 
            .respTime(System.currentTimeMillis())
            .respState(BaseStateResponse.builder().code(0).build())
            .jobCode(JOBCODE)
            .build();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @Log("刪除代碼")
    @ApiOperation("刪除代碼")
    @DeleteMapping
    @PreAuthorize("@el.check('code:del')")
    /**
     * 根據ID刪除特定的代碼資訊。
     */
    public ResponseEntity<Object> delete(@RequestParam Long cid){
        try {
            codeDetailMap.delete(cid);
        } catch (Exception e) {
            return new ResponseEntity<>(e, HttpStatus.BAD_REQUEST);
        }
        CommResponse response = CommResponse.builder() 
            .respTime(System.currentTimeMillis())
            .respState(BaseStateResponse.builder().code(0).build())
            .jobCode(JOBCODE)
            .build();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
    
    @Log("新增代碼")
    @ApiOperation("新增代碼")
    @PostMapping
    @PreAuthorize("@el.check('code:add')")
    /**
     * 新增代碼詳細資訊。
     */
    public ResponseEntity<Object> post(@RequestBody CodeDetailDto post){
        CodeDetailDto result;
        try {
            result = codeDetailMap.insert(post);
        } catch (Exception e) {
            return new ResponseEntity<>(e, HttpStatus.BAD_REQUEST);
        }
        CommResponse response = CommResponse.builder() 
            .respTime(System.currentTimeMillis())
            .respState(BaseStateResponse.builder().code(0).build())
            .jobCode(JOBCODE)
            .content(result)
            .build();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @Log("匯出代碼")
    @ApiOperation("匯出代碼")
    @GetMapping("/export")
    @PreAuthorize("@el.check('code:export')")
    /**
     * 根據指定的代碼類型，將相關代碼資訊匯出為Excel文件。
     */
    public void downloadExcel(@RequestParam String kind,HttpServletResponse response) throws IOException {
        String filename = "codeDetail.xlsx";
        InputStream file = codeDetailMap.downloadByKind(kind);
        OutputStream out = null;
        try {
            response.setContentType("application/vnd.ms-excel");
            
            response.setHeader("Content-Disposition", "attachment; filename="+ URLEncoder.encode(filename, "UTF-8"));
            out = response.getOutputStream();
            int b = 0;
            byte[] buffer = new byte[1000000];
            while (b != -1) {
                b = file.read(buffer);
                if(b!=-1) out.write(buffer, 0, b);
            }
    
        } catch (Exception e) {
            System.out.println(e.getMessage());        
        }finally{
            file.close();
            if(out!=null){
                out.close();
                out.flush(); 
            }
        }
         return ;
    }

    @GetMapping("/reload")
    @PreAuthorize("@el.check('code:reload')")
    /**
     * 重新載入代碼資訊，
     * 用於代碼資訊有所更新時同步系統中的資訊。
     */
    public ResponseEntity<Object> reload(){
        try {
            codeDetailLoader.load();
        } catch (Exception e) {
            return new ResponseEntity<>(e, HttpStatus.BAD_REQUEST);
        }
        CommResponse response = CommResponse.builder() 
            .respTime(System.currentTimeMillis())
            .respState(BaseStateResponse.builder().code(0).build())
            .jobCode(JOBCODE)
            .build();
        return new ResponseEntity<>(response, HttpStatus.OK);
        
    }
    
    @Log("父節點選單")
    @ApiOperation("父節點選單")
    @GetMapping("/parent")
    /**
     * 提供子節點種類，返回相對應的父節點選單列表。
     */
    public ResponseEntity<Object> parentOptionList(@RequestParam String childKind) {
        List<CodeDetailDto> result;
        try {
            result = codeDetailMap.parentOptionList(childKind);
        } catch (Exception e) {
            return new ResponseEntity<>(e,HttpStatus.BAD_REQUEST);
        }
        CommResponse response = CommResponse.builder() 
        .respTime(System.currentTimeMillis())
        .respState(BaseStateResponse.builder().code(0).build())
        .jobCode(JOBCODE)
        .content(result)
        .build();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @Log("子節點選單")
    @ApiOperation("子節點選單")
    @GetMapping("/child")
    /**
     * 提供父節點ID，返回該父節點下的所有子節點列表。
     */
    public ResponseEntity<Object> childList(@RequestParam Long parentId) {
        List<CodeDetailDto> result;
        try {
            result = codeDetailMap.childList(parentId);
        } catch (Exception e) {
            return new ResponseEntity<>(e,HttpStatus.BAD_REQUEST);
        }
        CommResponse response = CommResponse.builder() 
        .respTime(System.currentTimeMillis())
        .respState(BaseStateResponse.builder().code(0).build())
        .jobCode(JOBCODE)
        .content(result)
        .build();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
    @Log("子節點KIND")
    @ApiOperation("子節點KIND")
    @GetMapping("/childKind")
    /**
     * 提供父節點種類，返回子節點的種類。
     */
    public ResponseEntity<Object> childKind(@RequestParam String parentKind) {
        String result;
        try {
            result = codeDetailMap.childKind(parentKind);
        } catch (Exception e) {
            return new ResponseEntity<>(e,HttpStatus.BAD_REQUEST);
        }
        CommResponse response = CommResponse.builder() 
        .respTime(System.currentTimeMillis())
        .respState(BaseStateResponse.builder().code(0).build())
        .jobCode(JOBCODE)
        .content(result)
        .build();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @Log("更新Filter code")
    @ApiOperation("更新Filter code")
    @PostMapping("/filter")
    /**
     * 根據提供的代碼過濾資訊來更新過濾代碼。
     */
    public ResponseEntity<Object> filterCode(@RequestBody CodeDetailFilterDto dto) {
        try {
            codeDetailMap.updateFilterCode(dto);
        } catch (Exception e) {
            return new ResponseEntity<>(e,HttpStatus.BAD_REQUEST);
        }
        CommResponse response = CommResponse.builder() 
        .respTime(System.currentTimeMillis())
        .respState(BaseStateResponse.builder().code(0).build())
        .jobCode(JOBCODE)
        .build();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
}
