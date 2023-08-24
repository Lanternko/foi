//package com.ezcore.foi.ecase.model.bo.memberbo;
//
//import java.util.List;
//
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
//public class MemberTreeSelected {
//	@NonNull
//    @ApiModelProperty(value = "委員樹狀資料識別值")
//    private String memberTreeCid;
//    
//    @NonNull
//    @ApiModelProperty(value = "選定節點識別值")
//    private Long selectedCid;
//    
//    @NonNull
//    @ApiModelProperty(value = "選定節點完整名稱")
//    private String selectedName;
//    
//    @ApiModelProperty(value = "代碼識別詳情")
//    private List<TreeSelectedDetailBo> nodeCids;
//}
