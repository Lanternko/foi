package com.ezcore.foi.ecase.service;

import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingCase;
import com.ezcore.foi.ecase.model.bo.meetingbo.Decide;
import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingBo;
import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingFile;
import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingMember;
import com.ezcore.foi.ecase.model.request.Meeting01Request;
import com.ezcore.foi.ecase.model.request.Meeting06Request;
import com.ezcore.foi.ecase.model.request.Meeting21Request;
import com.ezcore.foi.ecase.model.request.Meeting22Request;
import com.ezcore.foi.ecase.model.response.Meeting01Response;
import com.ezcore.foi.ecase.model.response.Meeting02Response;

public interface MeetingService {

    /**
     * 1 取得會次清單
     */
    Meeting01Response getMeetList(Meeting01Request req);

    /**
     * 2 取得會次完整資料
     */
    Meeting02Response getMeetDetails(String meetingTid);

    /**
     * 3 會次資料-查詢
     */
    MeetingBo getMeet(String meetingTid);

    /**
     * 4 會次資料-異動
     */
    void modMeet(MeetingBo req);

    /**
     * 5 出席委員-查詢
     */
    MeetingMember getMember(String meetingTid);

    /**
     * 6 出席委員-出席異動
     */
    void modMember(Meeting06Request req);

    /**
     * 7 提會案件-查詢
     */
    MeetingCase getCase(String meetingTid);

    /**
     * 8 提會案件-異動
     */
    void modCase();

    /**
     * 9 會議檔案資料-查詢
     */
    MeetingFile getMeetFile(String meetingTid, String showall);

    /**
     * 10 會議檔案資料-異動
     */
    void modMeetFile(MeetingFile req);

    /**
     * 11 會議決議-查詢
     */
    Decide getDecision(String meetingTid);

    /**
     * 12 會議決議-異動
     */
    void modDecision(Decide req);

    /**
     * 21 案件加入提案
     */
    void addCase(Meeting21Request req);

    /**
     * 22 案件取消提案
     */
    void cancelCase(Meeting22Request req);

    /**
     * 51 產製會議目錄
     */
    void downloadMenu(String meetingTid);

    /**
     * 52 下載會議議程
     */
    void downloadSchedule(String meetingTid);

    /**
     * 53 下載預產會議紀錄
     */
    void downloadGeneratedMinute(String meetingTid);
    
    /**
     * 54 下載會議檔案
     */
    void downloadMeetingFile(String meetingFileTid);

}


