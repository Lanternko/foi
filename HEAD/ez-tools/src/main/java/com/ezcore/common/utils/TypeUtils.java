package com.ezcore.common.utils;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.ZoneId;

public class TypeUtils {
	public static LocalDate timestampToLocalDate(Timestamp ts) {
		return ts.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
	}
}
