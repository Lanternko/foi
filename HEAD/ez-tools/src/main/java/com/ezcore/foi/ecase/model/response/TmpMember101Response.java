//package com.ezcore.foi.ecase.model.response;
//
//import java.util.List;
//
//import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
//import com.ezcore.foi.ecase.model.bo.casefilebo.CaseFileBoData;
//import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager121Response;
//import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
//
//import io.swagger.annotations.ApiModelProperty;
//import lombok.AllArgsConstructor;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//import lombok.NonNull;
//import lombok.experimental.SuperBuilder;
//
//@Data
//@SuperBuilder
//@NoArgsConstructor
//@AllArgsConstructor
//@JsonIgnoreProperties(ignoreUnknown = true)
//public class TmpMember101Response {
//    @NonNull
//    @ApiModelProperty(value = "出席費識別值")
//    private String memberFeeCid;
//    
//    @NonNull
//    @ApiModelProperty(value = "費用類型")
//    private String type;
//    
//    @ApiModelProperty(value = "案件標籤")
//    private List<TagSelectedBo> tags;
//    
//    @ApiModelProperty(value = "項目名稱")
//    private String name;
//    
//    @NonNull
//    @ApiModelProperty(value = "金額")
//    private int price;
//    
//    // 生成者和訪問器
//    // ...
//}
