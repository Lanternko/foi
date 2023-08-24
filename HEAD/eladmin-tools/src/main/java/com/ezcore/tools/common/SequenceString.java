package com.ezcore.tools.common;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import me.zhengjie.domain.SerialNoRecord;
import me.zhengjie.domain.compositeid.SerialNoRecordId;
import me.zhengjie.repository.SerialNoRecordRepository;
import me.zhengjie.utils.StringUtils;

/**
 * 用來產生有序及有規則的字串，目前用於:<br>
 * 1.foi2022專案的案件編號<br>
 * <br>
 * 目前依存於資料表me.zhengjie.domain.SerialNoRecord與其相關物件
 */
@Component
public class SequenceString {

	@Autowired
	private SerialNoRecordRepository serialNoRecordRepository;
	
	/**
	 * 依傳入規則查詢serial_no_record並產生序號/流水號
	 * @param type 規則1
	 * @param label 規則2
	 * @param maxSeqLength 最終序號/流水號長度(未用到的部分會補0)
	 * @return 組合完成的字串
	 */
	@Transactional(rollbackFor = { SQLException.class })
	public String createSequenceStrByRules(String type, String label, int maxSeqLength) {
//		1.依傳入規則type、label查本次使用的流水號種類，查無紀錄時建立一筆next_no為1的初始資料
//		2.流水號補0
//		3.更新資料表serial_no_record的next_no欄位

//		1
		SerialNoRecord serialNoRecord = serialNoRecordRepository.findById(new SerialNoRecordId(type, label))
																.orElse(new SerialNoRecord(type, label, 1));
		Integer nextSeqNumber = serialNoRecord.getNextNo();
//		2
		String newSeqNo = StringUtils.paddingZeros(nextSeqNumber, maxSeqLength);
//		3
		nextSeqNumber ++;
		serialNoRecord.setNextNo(nextSeqNumber);
		serialNoRecordRepository.saveAndFlush(serialNoRecord);

		return String.format("%s%s%s", type, label, newSeqNo);
	}

	
}
