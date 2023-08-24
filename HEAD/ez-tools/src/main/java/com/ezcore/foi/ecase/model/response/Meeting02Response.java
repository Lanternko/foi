package com.ezcore.foi.ecase.model.response;

import java.util.Arrays;
import java.util.List;

import com.ezcore.foi.ecase.model.bo.meetingbo.Decide;
import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingBo;
import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingCase;
import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingFile;
import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingMember;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@EqualsAndHashCode(callSuper = true)
@JsonIgnoreProperties(ignoreUnknown = true)
public class Meeting02Response extends MeetingBo{
	
	@ApiModelProperty(value = "會次委員清冊")
    @NonNull
	private List<MeetingMember> members;
	
	@ApiModelProperty(value = "提會案件之案件資訊")
    @NonNull
    private List<MeetingCase> cases;
	
	@ApiModelProperty(value = "會議檔案")
    private List<MeetingFile> files;
	
	@ApiModelProperty(value = "提會案件之決議資訊")
    @NonNull
    private List<Decide> decides;
	
	public Meeting02Response() {
		super();
		this.members = Arrays.asList(new MeetingMember());
		this.cases = Arrays.asList(new MeetingCase());
		this.files = Arrays.asList(new MeetingFile());
		this.decides = Arrays.asList(new Decide());
	}
	
}
