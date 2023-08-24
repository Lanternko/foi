package com.ezcore.common.utils;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Memory {
	
	/**
	 * 印出記憶體使用情況
	 * @param i 用於分辨時序的流水號
	 */
	public static void print(int i) {
		log.debug("% 3d max:  %,d bytes%n", i, getMaxMemory());
		log.debug("% 3d used: %,d bytes%n", i, getUsedMemory());
		log.debug("--------------------------%n");
	}
	
	private static long getMaxMemory() {
	    return Runtime.getRuntime().maxMemory();
	}

	private static long getFreeMemory() {
	    return Runtime.getRuntime().freeMemory();
	}
	
	private static long getUsedMemory() {
		return getMaxMemory() - getFreeMemory();
	}
	
	private Memory() {
	}

}
