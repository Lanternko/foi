package com.ezcore.tools.common;

/* 全域常數 */
public class Constants {
	
//	系統常數
	/** 系統常數: ezadmin根目錄 */
	public static final String SYS_HOME = System.getProperty("user.home");
	
//	codedetail : sys.func
	/** 系統參數 (kind) */
	public static final String SYS_FUNC = "sys.func";
	/** 帳號時效(天) (code) */
	public static final String EXPIRE_DATE = "expire_date";	
	/** (僅dev用)於log顯示使用者密碼 (code) */
	public static final String LOG_PW = "log_pw";	
	/** 鎖定帳號時間(分) (code) */
	public static final String LOCK_ACCOUNT_REMAINS = "lock_account_remains";
	/** 密碼驗證失敗次數(次) (code) */
	public static final String AUTH_FAILED_CNT = "auth_failed_cnt";
	/** 臨時密碼有效(分) (code) */
	public static final String TEMP_PW_REMAINS = "temp_pw_remains";
	/** 檢核碼有效(分) (code) */
	public static final String USE_TWO_FACTOR_AUTH = "use_two_factor_auth";
	/** 與前N次的密碼相同(次) (code) */
	public static final String KEEP_PREV_PW = "keep_prev_pw";
	/** 密碼複雜度 (code) */
	public static final String PW_MATCH_REGEX = "pw_match_regex";
	/** 強制換密碼區間(天) (code) */
	public static final String FORCE_CHANGE_PW = "force_change_pw";
	/** 失敗信件重寄期限(天) (code) */
	public static final String FAILED_RESEND_REMAINS = "failed_resend_remains";
	/** 電子信件伺服器測試 (code) */
	public static final String MAILSERVER_TEST = "mailserver_test";
	/** 縮網址功能 (code) */
	public static final String URL_SHORTEN_RULE = "url_shorten_rule";
	/** 本站網域名稱 (code) */
	public static final String DOMAIN = "domain";
	/** 使用人機驗證 (code) */
	public static final String USE_CAPTCHA = "use_captcha";

//	codedetail : err_flag
	/** 異常代號定義 (kind) */
	public static final String ERR_FLAG = "err_flag";
	/** 無異常 (code) */
	public static final String E0 = "0";
	/** 帳號暫時鎖定 (code) */
	public static final String E1 = "e1";
	/** 帳號永久鎖定 (code) */
	public static final String E2 = "e2";
	/** 帳號閒置 (code) */
	public static final String E3 = "e3";
	/** 登入資訊錯誤 (code) */
	public static final String E4 = "e4";
	/** 前N代密碼相同 (code) */
	public static final String E5 = "e5";
	
//	codedetail : usr_op
	/** 對應操作 (kind) */
	public static final String USR_OP = "usr_op";
	/** 密碼輸入錯誤 (code) */
	public static final String OP1 = "op1";
	/** 發行臨時密碼 (code) */
	public static final String OP2 = "op2";
	/** 變更密碼 (code) */
	public static final String OP3 = "op3";
	/** 發行檢核碼 (code) */
	public static final String OP4 = "op4";
	
//	codedetail : sys.res_state
	/** 回應代碼 (kind) */
	public static final String SYS_RES_STATE = "sys.res_state";
	
//	codedetail : email_template
	/** 系統寄信內文範本 (kind) */
	public static final String EMAIL_TEMPLATE = "email_template";
	/** 寄出檢核碼 (code) */
	public static final String SEND_VERIFY_CODE = "send_verify_code";
	/** 寄出臨時密碼 (code) */
	public static final String SEND_TEMP_PW = "send_temp_pw";

//	常用文字
	/** 系統寫入資料庫時的名稱 */
	public static final String SYSTEM = "System";
	/** 小時 */
	public static final String HOUR = "小時";
	/** 分鐘 */
	public static final String MINUTE = "分鐘";
	/** 秒鐘 */
	public static final String SECOND = "秒鐘";
	/** 代碼關閉時的通用訊息 */
	public static final String CODE_DISABLED = "本項代碼「%s」關閉，不做相關判斷";
	/** 代碼關閉時的通用訊息 */
	public static final String UNUSED = "unused";
	/** 管理者群組 */
	public static final String ADMIN_G = "管理者群組";
	/** 操作者群組 */
	public static final String USER_G = "操作者群組";
	/** 代碼屬性未使用 **/
	public static final String NOT_USED = "(未使用)";

//	範例
	public static final String MSG_PATTERN = "使用工具 : %s<br>使用技術 : %s<br>說明 : %s<br>管理員建立 : %s<br>";
	public static final String Y_CHT = "是";
	public static final String N_CHT = "否";
	
//	報表
	public static final String REPORT = "report";
	
	private Constants() {
	}
	
}
