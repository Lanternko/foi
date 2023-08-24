package com.ezcore.foi.ecase.model.request.tmpcasemanager;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class TmpCaseManager121Request {

    @ApiModelProperty(value = "已審核日期", required = false)
    private Long signTime;

    // 可以根據需要添加其他欄位
}
