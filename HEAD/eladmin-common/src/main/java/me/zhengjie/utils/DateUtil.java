/*
 * Copyright 2019-2020 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package me.zhengjie.utils;

import java.sql.Timestamp;
import java.time.*;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;

/**
 * @author: liaojinlong
 * @date: 2020/6/11 16:28
 * @apiNote: JDK 8  新日期類 格式化與字串轉換 工具類
 */
public class DateUtil {

    public static final DateTimeFormatter DFY_MD_HMS = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    public static final DateTimeFormatter DFY_MD = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    /**
     * LocalDateTime 轉時間戳
     *
     * @param localDateTime /
     * @return /
     */
    public static Long getTimeStamp(LocalDateTime localDateTime) {
        return localDateTime.atZone(ZoneId.systemDefault()).toEpochSecond();
    }

    /**
     * 時間戳轉LocalDateTime
     *
     * @param timeStamp /
     * @return /
     */
    public static LocalDateTime fromTimeStamp(Long timeStamp) {
        return LocalDateTime.ofEpochSecond(timeStamp, 0, OffsetDateTime.now().getOffset());
    }

    /**
     * LocalDateTime 轉 Date
     * Jdk8 后 不推薦使用 {@link Date} Date
     *
     * @param localDateTime /
     * @return /
     */
    public static Date toDate(LocalDateTime localDateTime) {
        return Date.from(localDateTime.atZone(ZoneId.systemDefault()).toInstant());
    }

    /**
     * LocalDate 轉 Date
     * Jdk8 后 不推薦使用 {@link Date} Date
     *
     * @param localDate /
     * @return /
     */
    public static Date toDate(LocalDate localDate) {
        return toDate(localDate.atTime(LocalTime.now(ZoneId.systemDefault())));
    }


    /**
     * Date轉 LocalDateTime
     * Jdk8 后 不推薦使用 {@link Date} Date
     *
     * @param date /
     * @return /
     */
    public static LocalDateTime toLocalDateTime(Date date) {
    	if (date == null) {
    		date = new Date();
    	}
        return LocalDateTime.ofInstant(date.toInstant(), ZoneId.systemDefault());
    }

    /**
     * 日期 格式化
     *
     * @param localDateTime /
     * @param patten /
     * @return /
     */
    public static String localDateTimeFormat(LocalDateTime localDateTime, String patten) {
        DateTimeFormatter df = DateTimeFormatter.ofPattern(patten);
        return df.format(localDateTime);
    }

    /**
     * 日期 格式化
     *
     * @param localDateTime /
     * @param df /
     * @return /
     */
    public static String localDateTimeFormat(LocalDateTime localDateTime, DateTimeFormatter df) {
        return df.format(localDateTime);
    }

    /**
     * 日期格式化 yyyy-MM-dd HH:mm:ss
     *
     * @param localDateTime /
     * @return /
     */
    public static String localDateTimeFormatyMdHms(LocalDateTime localDateTime) {
        return DFY_MD_HMS.format(localDateTime);
    }

    /**
     * 日期格式化 yyyy-MM-dd
     *
     * @param localDateTime /
     * @return /
     */
    public String localDateTimeFormatyMd(LocalDateTime localDateTime) {
        return DFY_MD.format(localDateTime);
    }

    /**
     * 字串轉 LocalDateTime ，字串格式 yyyy-MM-dd
     *
     * @param localDateTime /
     * @return /
     */
    public static LocalDateTime parseLocalDateTimeFormat(String localDateTime, String pattern) {
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern(pattern);
        return LocalDateTime.from(dateTimeFormatter.parse(localDateTime));
    }

    /**
     * 字串轉 LocalDateTime ，字串格式 yyyy-MM-dd
     *
     * @param localDateTime /
     * @return /
     */
    public static LocalDateTime parseLocalDateTimeFormat(String localDateTime, DateTimeFormatter dateTimeFormatter) {
        return LocalDateTime.from(dateTimeFormatter.parse(localDateTime));
    }

    /**
     * 字串轉 LocalDateTime ，字串格式 yyyy-MM-dd HH:mm:ss
     *
     * @param localDateTime /
     * @return /
     */
    public static LocalDateTime parseLocalDateTimeFormatyMdHms(String localDateTime) {
        return LocalDateTime.from(DFY_MD_HMS.parse(localDateTime));
    }
    
    /**
     * 毫秒轉換yyyy-MM-dd HH:mm:ss格式字串
     * @param long
     * @return string
     */
    public static String parseMillisecToDateString(Long millisec) {
    	if (millisec == null) {
    		return null;
    	}
        LocalDateTime dateTime = LocalDateTime.ofInstant(Instant.ofEpochMilli(millisec), ZoneId.systemDefault());
    	return dateTime.format(DFY_MD_HMS);
    }
    
    /**
     * 日期+時間字串轉換Timestamp格式<br>
     * 若日期是民國年(例: 112/07/15)，將轉為西元年
     * @param String
     * @return Timestamp
     */
    public static Timestamp parseStringToTimestamp(String dateString) {
    	String[] srcArr = dateString.split(" ");																// 以空格將來源字串分為日期、時間部分
    	
		String[] datePart = srcArr[0].split("/");																// 取得日期部分
		String[] timePart = srcArr.length > 1 ? srcArr[1].split(":") : new String[] {"00", "00", "00"};			// 取得時間部分，沒有的話給00:00:00											

		if (datePart[0].length() < 4) {																			// 四位數以下為民國年
			datePart[0] = String.valueOf(Integer.valueOf(datePart[0]) + 1911);
		}
		return Timestamp.valueOf(String.format("%s-%s-%s %s:%s:%s", datePart[0], datePart[1], datePart[2], timePart[0], timePart[1], timePart[2]));
    }
    
    /**
     * 任兩天的差異天數，必定回傳正數
     * 
     * @return Integer
     */
    public static Integer dateDiff(LocalDateTime date1, LocalDateTime date2) {
    	Duration duration = Duration.between(date1, date2);
    	return Math.abs((int) (duration.getSeconds() / 60 / 60 / 24));
    }
    
    /**
     * 任兩天的差異分鐘數，必定回傳正數
     * 
     * @return Integer
     */
    public static Integer secDiff(LocalDateTime date1, LocalDateTime date2) {
    	Duration duration = Duration.between(date1, date2);
    	return Math.abs((int) duration.getSeconds());
    }

    /**
     * 回傳當前系統時間in Timestamp型別(用於sql)
     * @return Timestamp
     */
    public static Timestamp getSystemTime() {
    	return new Timestamp(System.currentTimeMillis());
    }
    
    /**
     * @param requestPattern 可輸入以下格式: yyy、yyymm、yyymmdd
     * @return 符合傳入格式的字串
     */
    public static String getDateInRocFormat(String requestPattern) {
    	Calendar cal = Calendar.getInstance();
		cal.setTimeInMillis(System.currentTimeMillis());
		String year = String.valueOf(cal.get(Calendar.YEAR) - 1911);
		String month = StringUtils.paddingZeros(cal.get(Calendar.MONTH) + 1, 2);
		String day = StringUtils.paddingZeros(cal.get(Calendar.DAY_OF_MONTH), 2);
		
		switch (requestPattern.toLowerCase()) {
		case "yyy":
			return String.format("%s", year);
		case "yyymm":
			return String.format("%s%s", year, month);
		case "yyymmdd":
			return String.format("%s%s%s", year, month, day);
		default:
			return "";
		}
		
    }

//    -------------------------------------------------------------------------
//    日期工具測試
    public static void main(String[] args) {
    	LocalDateTime date1 = LocalDateTime.of(2023, 1, 5, 11, 15);
		System.out.println(dateDiff(date1, LocalDateTime.now()));
		System.out.println(secDiff(date1, LocalDateTime.now()));
	}
    
}
