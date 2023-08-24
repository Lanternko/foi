package com.ezcore.foi.ecase.model.bo.casefilebo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class CaseFileBoLogData extends CaseFileBoData {

    @NonNull
    private String action;

    // Other fields and methods

}
 