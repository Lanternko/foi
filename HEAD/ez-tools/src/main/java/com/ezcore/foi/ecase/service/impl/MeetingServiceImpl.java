package com.ezcore.foi.ecase.service.impl;

import org.springframework.stereotype.Service;

import com.ezcore.foi.ecase.model.bo.meetingbo.Decide;
import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingBo;
import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingCase;
import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingFile;
import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingMember;
import com.ezcore.foi.ecase.model.request.Meeting01Request;
import com.ezcore.foi.ecase.model.request.Meeting06Request;
import com.ezcore.foi.ecase.model.request.Meeting21Request;
import com.ezcore.foi.ecase.model.request.Meeting22Request;
import com.ezcore.foi.ecase.model.response.Meeting01Response;
import com.ezcore.foi.ecase.model.response.Meeting02Response;
import com.ezcore.foi.ecase.service.MeetingService;

@Service
public class MeetingServiceImpl implements MeetingService {

    @Override
    public Meeting01Response getMeetList(Meeting01Request req) {
        return new Meeting01Response();
    }

    @Override
    public Meeting02Response getMeetDetails(String meetingTid) {
        return new Meeting02Response();
    }

    @Override
    public MeetingBo getMeet(String meetingTid) {
        return new MeetingBo();
    }

    @Override
    public void modMeet(MeetingBo req) {
        // TODO Auto-generated method stub
    }

    @Override
    public MeetingMember getMember(String meetingTid) {
        return new MeetingMember();
    }

    @Override
    public void modMember(Meeting06Request req) {
        // TODO Auto-generated method stub
    }

    @Override
    public MeetingCase getCase(String meetingTid) {
        return new MeetingCase();
    }
    
    @Override
    public void modCase() {
    	/*this update method will not be used*/
    }

    @Override
    public MeetingFile getMeetFile(String meetingTid, String showall) {
        return new MeetingFile();
    }

    @Override
    public void modMeetFile(MeetingFile req) {
        // TODO Auto-generated method stub
    }

    @Override
    public Decide getDecision(String meetingTid) {
        return new Decide();
    }

    @Override
    public void modDecision(Decide req) {
        // TODO Auto-generated method stub
    }

    @Override
    public void addCase(Meeting21Request req) {
        // TODO Auto-generated method stub
    }

    @Override
    public void cancelCase(Meeting22Request req) {
        // TODO Auto-generated method stub
    }

    @Override
    public void downloadMenu(String meetingTid) {
        // TODO Auto-generated method stub
    }

    @Override
    public void downloadSchedule(String meetingTid) {
        // TODO Auto-generated method stub
    }

    @Override
    public void downloadGeneratedMinute(String meetingTid) {
        // TODO Auto-generated method stub
    }
    
    @Override
    public void downloadMeetingFile(String meetingFileTid) {
    	// TODO
    }

}
