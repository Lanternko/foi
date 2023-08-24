package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;

import com.ezcore.foi.ecase.dao.dto.ChildKindListDto;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
public class ShowCodeBo implements Serializable {
	
	private static final long serialVersionUID = 4330465112431590313L;

	@ApiModelProperty(value = "資料識別值", required = true)
    @NonNull
    private Long cid;

    @ApiModelProperty(value = "代碼", required = true)
    @NonNull
    private String code;
	
    @ApiModelProperty(value = "顯示名稱", required = true)
    @NonNull
    private String name;

    public ShowCodeBo() {
        // 您可以在這裡設置一些默認值或進行其他操作
        System.out.println("ShowCodeBo的無參構造函數被調用(the input cid might be null)");
    }

    public ShowCodeBo(Long cid) {
        if (cid == null) {
//            System.out.println("a null cid is input to ShowCodeBo constructor");
            // 如果cid為null，您可能想調用無參構造函數
            new ShowCodeBo();
            return;
        }
        CodeDetailDto codeDetailDto = CodeDetailMap.get(cid);
        if (codeDetailDto != null) {
            this.cid = codeDetailDto.getCid();
            this.code = codeDetailDto.getCode();
            this.name = codeDetailDto.getName();
        } else {
            System.out.println("codedetail.get = null, cid=" + cid.toString());
        }
    }

	public ShowCodeBo(CodeDetailDto codedetail) {
		this.cid = codedetail.getCid();
		this.code = codedetail.getCode();
		this.name = codedetail.getName();
	}
	
	public ShowCodeBo(ChildKindListDto res) {	//用CodeDetailDto的較好
		this.cid = res.getCid();
		this.code = res.getCode();
		this.name = res.getName();
	}
	
	public ShowCodeBo(String code, String name, Long cid) {
		this.cid = cid;
		this.code = code;
		this.name = name;
	}
	
}
