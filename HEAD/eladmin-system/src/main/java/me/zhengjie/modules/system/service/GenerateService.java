package me.zhengjie.modules.system.service;

public interface GenerateService {

	/** 確認使用者輸入是否正確，正確時進行臨時密碼產生、寄送 
	 * @return */
	public void provideTempPw(String account, String usermail) throws Exception;

	/** 產生並寄出檢核碼 
	 * @return */
	public Boolean provideVerifyCode(String account);
	
	/** 產生短網址:<br>
	 * 先產生一個範圍在1至integer最大值之間的隨機數<br>
	 * 依可自定義的縮網址規則將此隨機數轉換為字串，並回傳給使用者<br>
	 * 資料庫中寫入的映射關係則為 隨機數:原始網址<br>
	 * @return */
	public String provideShortUrl(String fullurl);
	
}
