package me.zhengjie.exception.handler;

public class SysErrLev {

//	登入
	/** 登入狀態逾期 */
	public static final Integer TOKEN_EXPIRED = 900;
	/** 圖形驗證碼錯誤 */
	public static final Integer CAPTCHA_ERROR = 901;
	/** 兩段驗證碼錯誤 */
	public static final Integer TWO_FACTOR_ERROR = 902;
	/** 登入資訊錯誤 */
	public static final Integer USER_INPUT_ERROR = 903;
	/** 帳號暫時鎖定 */
	public static final Integer ACCOUNT_LOCKED_TEMPORARY = 904;
	/** 帳號永久鎖定 */
	public static final Integer ACCOUNT_LOCKED = 905;
	
//	檔案
	/** 檔案大小超出限制 */
	public static final Integer FILE_SIZE_LIMIT_EXCEED = 910;
	
//	設定
	/** 系統設定錯誤 */
	public static final Integer SYSTEM_CONFIGURATION_ERROR = 920;	
	
//	功能鍵
	/** 功能參數錯誤 */
	public static final Integer FUNCTION_PARAMETER_ERROR = 930;
	
//	權限
	/** 資料存取權限不足 */
	public static final Integer DATA_ACCESS_DENIED = 940;
	/** 功能存取權限不足 */
	public static final Integer FUNCTION_ACCESS_DENIED = 950;
	
//	資料庫
	/** 連線異常 */
	public static final Integer CONNECTION_ERROR = 980;
	/** 指令執行異常 */
	public static final Integer QUERY_ERROR = 981;
	
//	系統未預期例外
	/** 服務異常 */
	public static final Integer UNEXPECTED_SERVICE_ERROR = 998;
	/** 未知原因 */
	public static final Integer UNRECOGNIZED_ERROR = 999;

	
}
