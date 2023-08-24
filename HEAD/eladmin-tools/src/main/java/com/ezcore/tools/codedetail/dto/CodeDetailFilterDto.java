package com.ezcore.tools.codedetail.dto;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class CodeDetailFilterDto {
    private Long pid;
    private List<Long> fid;
    private Long id;
}
