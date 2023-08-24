package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class User implements Serializable {
	
	private static final long serialVersionUID = 2349281556902698534L;

    @ApiModelProperty(value = "案件識別值")
    private List<ApplicantUser> applicants;

    @ApiModelProperty(value = "識別值")
    private List<AgentUser> agents;
    
    public List<CaseUserType> getAllUsers() {
        List<CaseUserType> allUsers = new ArrayList<>();
        allUsers.addAll(applicants);
        allUsers.addAll(agents);
        return allUsers;
    }
	
}
