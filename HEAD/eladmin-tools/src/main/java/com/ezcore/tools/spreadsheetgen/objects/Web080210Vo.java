package com.ezcore.tools.spreadsheetgen.objects;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Web080210Vo {
    private String companyName;
    private Integer appealAttrib;
    private Integer dismisAttrib;
    private Integer conciliaAttrib;
    private Integer halfWeights;
    private Integer weights;
    private Integer other;
}
