package com.ezcore.foi.ecase.model.response.tmpcasemanager;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;
import io.swagger.annotations.ApiModelProperty;
import java.util.List;

import com.ezcore.common.model.BasePageResponse;

@Data
@NoArgsConstructor
@SuperBuilder
@AllArgsConstructor
public class TmpCaseManager104Response {
	
	@NonNull
    @ApiModelProperty(value = "content型別", required = true)
    private List<TmpCaseManager104ResponseChild> content;
	
	
    @ApiModelProperty(value = "分頁資訊", required = false)
    private BasePageResponse page;

    // 你可以根據需求繼續添加其他欄位
}
