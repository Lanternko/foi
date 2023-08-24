package com.ezcore.foi.ecase.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import com.ezcore.foi.ecase.model.response.TmpMeeting101Response;
import com.ezcore.foi.ecase.service.TmpMeetingService;

@Service
public class TmpMeetingServiceImpl implements TmpMeetingService{
	@Override
	public List<TmpMeeting101Response> meeting101() {
		// 依照當前的系統時間，抓取當期的會議資料
		return new ArrayList<>(Arrays.asList(new TmpMeeting101Response()));
	}
}
