USE [nfoi]
GO
SET IDENTITY_INSERT [sys_contacts] ON 

INSERT [sys_contacts] ([contacts_id], [create_by], [create_time], [update_by], [update_time], [address]) VALUES (1, NULL, NULL, NULL, NULL, N'aalexxyobdc@gmail.com')
INSERT [sys_contacts] ([contacts_id], [create_by], [create_time], [update_by], [update_time], [address]) VALUES (2, NULL, NULL, NULL, NULL, N'andy.song@ezcore.tw')
INSERT [sys_contacts] ([contacts_id], [create_by], [create_time], [update_by], [update_time], [address]) VALUES (3, NULL, NULL, NULL, NULL, N'foi01@foi.tw')
INSERT [sys_contacts] ([contacts_id], [create_by], [create_time], [update_by], [update_time], [address]) VALUES (4, NULL, NULL, NULL, NULL, N'admin@foi.com')
INSERT [sys_contacts] ([contacts_id], [create_by], [create_time], [update_by], [update_time], [address]) VALUES (5, NULL, NULL, NULL, NULL, N'test@test.com')
INSERT [sys_contacts] ([contacts_id], [create_by], [create_time], [update_by], [update_time], [address]) VALUES (6, NULL, NULL, NULL, NULL, N'foi02@test.tw')
INSERT [sys_contacts] ([contacts_id], [create_by], [create_time], [update_by], [update_time], [address]) VALUES (7, NULL, NULL, NULL, NULL, N'system')
SET IDENTITY_INSERT [sys_contacts] OFF
GO
SET IDENTITY_INSERT [sys_email] ON 

INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (1, NULL, CAST(N'2023-02-14T14:00:00.000' AS DateTime), NULL, NULL, NULL, N'這封已經成功寄出', N'api0909', N'sended', N'信件主旨A', CAST(N'2023-02-14T14:01:00.000' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (2, N'System', CAST(N'2023-06-06T08:00:00.000' AS DateTime), N'System', NULL, NULL, N'這封正等待寄出', N'api0910', N'pending', N'我的第二封信', CAST(N'2023-06-06T08:00:00.000' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (3, NULL, CAST(N'2023-02-14T16:00:00.000' AS DateTime), NULL, NULL, NULL, N'這封寄有寄但失敗了<br/><br/>第二行', N'api0911', N'failed', N'失敗的信', CAST(N'2023-02-15T00:45:00.000' AS DateTime), CAST(N'2023-02-15T01:01:18.000' AS DateTime))
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (4, NULL, CAST(N'2023-02-16T11:05:00.000' AS DateTime), NULL, NULL, NULL, N'我們發現您的 Google 帳戶在 Windows 裝置上有新的登入活動。如果登入帳戶的是您本人，就不需要採取任何動作；如果不是，我們將協助您保護帳戶。', N'api1001', N'sended', N'安全性快訊', CAST(N'2023-02-16T11:06:00.000' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (5, N'System', CAST(N'2023-06-06T08:00:00.000' AS DateTime), N'System', NULL, NULL, N'1.預設密碼首次登入時, 尚無電子郵件<br/>電子郵件是由登入者第一次登入系統時, 要求設定<br/>2.現行系統，我記得首次登入及忘記密碼者, 使用預設密碼或是臨時密碼登入系統並變更密碼後,<br/>現行系統都會再登出, 請使用者再次登入 (請協助確認現行系統 )<br/>3.請注意變更密碼時機，必須是檢核碼先驗證正確<br/>4.為節省磁碟空間, 移除個人圖像<br/>5.請電話解說: 4.2.使用者管理<br/>6.帳號與姓名順序對調', N'api0910', N'pending', N'檢附「申訴暨評議案件管理系統基礎功能改版建置與精進案」第1次需求訪談會議記錄', CAST(N'2023-06-06T08:00:00.000' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (6, NULL, CAST(N'2023-02-15T04:30:00.000' AS DateTime), NULL, NULL, 8, N'BJC2001執行完成，本次執行結果 :<br/>資轉作業 : (20230215000000至20230215235959)<br/>應處理文號 = 166, 成功 = 166, 失敗 = 0<br/>應處理檔案 = 890, 成功 = 890, 失敗 = 0<br/>應匯出json = 143, 成功 = 93, 失敗 = 1, 無筆記 = 747, 已結案尚未歸檔 = 49<br/>應轉檔 = 93, 成功 = 93, 失敗 = 0<br/>應歸檔 = 93, 成功 = 93, 失敗 = 0<br', N'taskxxxx', N'pending', N'XX行政系統taskXXXX - 【資轉】作業執行異常', CAST(N'2023-02-16T02:00:00.000' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (8, NULL, CAST(N'2023-02-15T04:30:00.000' AS DateTime), NULL, NULL, 11, N'/><br/>項次 , pdf檔案id , 檔案類型 , 失敗原因<br/>1 , 1e7651d933c04c9e9504bf55106a1cf5 , REFSTM21 , 未取得r_object_id<br/><br/>資轉作業中出現異常，請參照附件內容。<', NULL, NULL, NULL, NULL, NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (11, NULL, CAST(N'2023-02-15T04:30:00.000' AS DateTime), NULL, NULL, 12, N'br/>我們發現您的 Google 帳戶在 Windows 裝置上有新的登入活動。如果登入帳戶的是您本人，就不需要採取任何動作；如果不是，我們將協助您保護帳戶。<br/><br/>', NULL, NULL, NULL, NULL, NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (12, NULL, CAST(N'2023-02-15T04:30:00.000' AS DateTime), NULL, NULL, NULL, N'1.預設密碼首次登入時, 尚無電子郵件<br/>電子郵件是由登入者第一次登入系統時, 要求設定<br/>2.現行系統，我記得首次登入及忘記密碼者, 使用預設密碼或是臨時密碼登入系統並變更密碼後,<br/>現行系統都會再登出, 請使用者再次登入 (請協助確認現行系統 )<br/>3.請注意變更密碼時機，必須是檢核碼先驗證正確<br/>4.為節省磁碟空間, 移除個人圖像<br/>5.請電話解說: 4.2.使用者管理<br/>6.帳號與姓名順序對調', NULL, NULL, NULL, NULL, NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (31, N'admin', CAST(N'2023-02-23T15:41:25.247' AS DateTime), N'admin', CAST(N'2023-02-23T15:41:25.247' AS DateTime), NULL, N'<br/>現行系統都會再登出, 請使用者再次登入 (請協助確認現行系統 )<br/>3.請注意變更密碼時機，必須是檢核碼先驗證正確<br/>4.為節省磁碟空間, 移除個人圖像<br/>5.請電話解說: 4.2.使用者管理<br/>6.帳號與姓名順序對調', NULL, NULL, NULL, NULL, NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (32, N'admin', CAST(N'2023-02-23T15:41:25.250' AS DateTime), N'admin', CAST(N'2023-02-23T15:41:25.250' AS DateTime), 31, N'55106a1cf5 , REFSTM21 , 未取得r_object_id<br/><br/>資轉作業中出現異常，請參照附件內容。<br/>我們發現您的 Google 帳戶在 Windows 裝置上有新的登入活動。如果登入帳戶的是您本人，就不需要採取任何動作；如果不是，我們將協助您保護帳戶。<br/><br/>1.預設密碼首次登入時, 尚無電子郵件<br/>電子郵件是由登入者第一次登入系統時, 要求設定<br/>2.現行系統，我記得首次登入及忘記密碼者, 使用預設密碼或是臨時密碼登入系統並變更密碼後,', NULL, NULL, NULL, NULL, NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (33, N'admin', CAST(N'2023-02-23T15:41:25.250' AS DateTime), N'admin', CAST(N'2023-02-23T15:41:25.250' AS DateTime), 32, N'br/>應處理文號 = 166, 成功 = 166, 失敗 = 0<br/>應處理檔案 = 890, 成功 = 890, 失敗 = 0<br/>應匯出json = 143, 成功 = 93, 失敗 = 1, 無筆記 = 747, 已結案尚未歸檔 = 49<br/>應轉檔 = 93, 成功 = 93, 失敗 = 0<br/>應歸檔 = 93, 成功 = 93, 失敗 = 0<br/><br/>項次 , pdf檔案id , 檔案類型 , 失敗原因<br/>1 , 1e7651d933c04c9e9504bf', NULL, NULL, NULL, NULL, NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (34, N'admin', CAST(N'2023-02-23T15:41:25.253' AS DateTime), N'admin', CAST(N'2023-02-23T15:41:25.253' AS DateTime), 33, N'第一次登入系統時, 要求設定<br/>2.現行系統，我記得首次登入及忘記密碼者, 使用預設密碼或是臨時密碼登入系統並變更密碼後,<br/>現行系統都會再登出, 請使用者再次登入 (請協助確認現行系統 )<br/>3.請注意變更密碼時機，必須是檢核碼先驗證正確<br/>4.為節省磁碟空間, 移除個人圖像<br/>5.請電話解說: 4.2.使用者管理<br/>6.帳號與姓名順序對調BJC2001執行完成，本次執行結果 :<br/>資轉作業 : (20230215000000至20230215235959)<', NULL, NULL, NULL, NULL, NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (35, N'admin', CAST(N'2023-02-23T15:41:25.253' AS DateTime), N'admin', CAST(N'2023-02-23T15:41:25.253' AS DateTime), 34, N'/><br/>項次 , pdf檔案id , 檔案類型 , 失敗原因<br/>1 , 1e7651d933c04c9e9504bf55106a1cf5 , REFSTM21 , 未取得r_object_id<br/><br/>資轉作業中出現異常，請參照附件內容。<br/>我們發現您的 Google 帳戶在 Windows 裝置上有新的登入活動。如果登入帳戶的是您本人，就不需要採取任何動作；如果不是，我們將協助您保護帳戶。<br/><br/>1.預設密碼首次登入時, 尚無電子郵件<br/>電子郵件是由登入者', NULL, NULL, NULL, NULL, NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (36, N'admin', CAST(N'2023-06-06T08:00:00.000' AS DateTime), N'admin', CAST(N'2023-02-23T15:41:25.270' AS DateTime), 35, N'BJC2001執行完成，本次執行結果 :<br/>資轉作業 : (20230215000000至20230215235959)<br/>應處理文號 = 166, 成功 = 166, 失敗 = 0<br/>應處理檔案 = 890, 成功 = 890, 失敗 = 0<br/>應匯出json = 143, 成功 = 93, 失敗 = 1, 無筆記 = 747, 已結案尚未歸檔 = 49<br/>應轉檔 = 93, 成功 = 93, 失敗 = 0<br/>應歸檔 = 93, 成功 = 93, 失敗 = 0<br', N'test', N'pending', N'長文測試from api', CAST(N'2023-06-06T08:00:00.000' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (37, N'System', CAST(N'2023-06-06T08:00:00.000' AS DateTime), N'System', CAST(N'2023-05-23T10:42:48.887' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為Rcus<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'pending', N'財團法人金融消費評議中心', CAST(N'2023-06-06T08:00:00.000' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (38, N'System', CAST(N'2023-05-23T13:26:52.140' AS DateTime), N'System', CAST(N'2023-05-23T13:26:52.140' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為GQA6<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-05-23T13:26:52.133' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (39, N'System', CAST(N'2023-05-23T14:29:58.123' AS DateTime), N'System', CAST(N'2023-05-23T14:29:58.123' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為EAh8<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-05-23T14:29:58.117' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (40, N'System', CAST(N'2023-06-02T13:16:58.160' AS DateTime), N'System', CAST(N'2023-06-02T13:16:58.160' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為8ssL<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-06-02T13:16:58.127' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (41, N'System', CAST(N'2023-06-02T13:17:54.877' AS DateTime), N'System', CAST(N'2023-06-02T13:17:54.877' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為91rT<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-06-02T13:17:54.873' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (42, N'admin', CAST(N'2023-06-02T13:18:13.207' AS DateTime), N'admin', CAST(N'2023-06-02T13:18:13.207' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為8582<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-06-02T13:18:13.203' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (43, N'System', CAST(N'2023-06-02T13:29:24.297' AS DateTime), N'System', CAST(N'2023-06-02T13:29:24.297' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為03aw<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-06-02T13:29:24.177' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (44, N'admin', CAST(N'2023-06-02T17:17:54.677' AS DateTime), N'admin', CAST(N'2023-06-02T17:17:54.677' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為d92x<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-06-02T17:17:54.663' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (45, N'admin', CAST(N'2023-06-12T17:51:20.247' AS DateTime), N'admin', CAST(N'2023-06-12T17:51:20.247' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為CrU8<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-06-12T17:51:20.223' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (46, N'admin', CAST(N'2023-06-28T17:37:25.650' AS DateTime), N'admin', CAST(N'2023-06-28T17:37:25.650' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為rT31<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-06-28T17:37:25.583' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (47, N'System', CAST(N'2023-07-03T11:42:23.130' AS DateTime), N'System', CAST(N'2023-07-03T11:42:23.130' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為I4ab<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-07-03T11:42:23.117' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (48, N'admin', CAST(N'2023-07-11T18:58:12.203' AS DateTime), N'admin', CAST(N'2023-07-11T18:58:12.203' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為OHgV<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-07-11T18:58:12.180' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (49, N'System', CAST(N'2023-07-19T10:48:20.427' AS DateTime), N'System', CAST(N'2023-07-19T10:48:20.427' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為jqyS<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-07-19T10:48:20.250' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (50, N'System', CAST(N'2023-07-21T18:36:40.200' AS DateTime), N'System', CAST(N'2023-07-21T18:36:40.200' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為45hD<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-07-21T18:36:40.183' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (51, N'System', CAST(N'2023-07-28T14:02:23.547' AS DateTime), N'System', CAST(N'2023-07-28T14:02:23.547' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的臨時密碼為4feJ5w88Wv<br/>請於有效時間內於系統登入頁進行登入<br/>提醒您，若您有想起密碼仍可使用原密碼進行登入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideTempPw', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-07-28T14:02:23.533' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (52, N'System', CAST(N'2023-07-28T14:04:25.580' AS DateTime), N'System', CAST(N'2023-07-28T14:04:25.580' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為qhc7<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-07-28T14:04:25.580' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (53, N'System', CAST(N'2023-07-28T15:04:21.800' AS DateTime), N'System', CAST(N'2023-07-28T15:04:21.800' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為9359<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-07-28T15:04:21.800' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (54, N'System', CAST(N'2023-07-31T16:23:04.660' AS DateTime), N'System', CAST(N'2023-07-31T16:23:04.660' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為iZ82<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-07-31T16:23:04.630' AS DateTime), NULL)
INSERT [sys_email] ([email_id], [create_by], [create_time], [update_by], [update_time], [child], [content], [from_api], [status], [subject], [sended_time], [failed_report_time]) VALUES (55, N'System', CAST(N'2023-08-02T14:10:30.630' AS DateTime), N'System', CAST(N'2023-08-02T14:10:30.630' AS DateTime), NULL, N'歡迎使用本系統:<br/>您的登入檢核碼為L86i<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'provideVerifyCode', N'sended', N'財團法人金融消費評議中心', CAST(N'2023-08-02T14:10:30.577' AS DateTime), NULL)
SET IDENTITY_INSERT [sys_email] OFF
GO
INSERT [sys_email_contacts_bcc] ([email_id], [contacts_id]) VALUES (1, 4)
INSERT [sys_email_contacts_bcc] ([email_id], [contacts_id]) VALUES (2, 2)
INSERT [sys_email_contacts_bcc] ([email_id], [contacts_id]) VALUES (2, 4)
INSERT [sys_email_contacts_bcc] ([email_id], [contacts_id]) VALUES (3, 4)
GO
INSERT [sys_email_contacts_cc] ([email_id], [contacts_id]) VALUES (1, 2)
INSERT [sys_email_contacts_cc] ([email_id], [contacts_id]) VALUES (1, 3)
INSERT [sys_email_contacts_cc] ([email_id], [contacts_id]) VALUES (3, 1)
INSERT [sys_email_contacts_cc] ([email_id], [contacts_id]) VALUES (3, 3)
INSERT [sys_email_contacts_cc] ([email_id], [contacts_id]) VALUES (3, 6)
INSERT [sys_email_contacts_cc] ([email_id], [contacts_id]) VALUES (6, 1)
INSERT [sys_email_contacts_cc] ([email_id], [contacts_id]) VALUES (6, 2)
INSERT [sys_email_contacts_cc] ([email_id], [contacts_id]) VALUES (6, 4)
GO
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (1, 1)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (2, 3)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (2, 6)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (3, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (4, 3)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (5, 6)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (36, 1)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (36, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (37, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (38, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (39, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (40, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (41, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (42, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (43, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (44, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (45, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (46, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (47, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (48, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (49, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (50, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (51, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (52, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (53, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (54, 2)
INSERT [sys_email_contacts_to] ([email_id], [contacts_id]) VALUES (55, 2)
GO
SET IDENTITY_INSERT [sys_attachment] ON 

INSERT [sys_attachment] ([attachment_id], [create_by], [create_time], [update_by], [update_time], [file_name], [file_path]) VALUES (1, NULL, NULL, NULL, NULL, N'01.txt', N'~/Downloads/test/01.txt')
INSERT [sys_attachment] ([attachment_id], [create_by], [create_time], [update_by], [update_time], [file_name], [file_path]) VALUES (2, NULL, NULL, NULL, NULL, N'02.txt', N'~/Downloads/02.txt')
INSERT [sys_attachment] ([attachment_id], [create_by], [create_time], [update_by], [update_time], [file_name], [file_path]) VALUES (3, NULL, NULL, NULL, NULL, N'03.txt', N'~/Downloads/test/03.txt')
INSERT [sys_attachment] ([attachment_id], [create_by], [create_time], [update_by], [update_time], [file_name], [file_path]) VALUES (4, NULL, NULL, NULL, NULL, N'2023-02-15_資轉作業執行異常清單.txt', N'~/Downloads/test/2023-02-15_資轉作業執行異常清單.txt')
INSERT [sys_attachment] ([attachment_id], [create_by], [create_time], [update_by], [update_time], [file_name], [file_path]) VALUES (11, N'admin', CAST(N'2023-02-23T15:41:25.283' AS DateTime), N'admin', CAST(N'2023-02-23T15:41:25.283' AS DateTime), N'測試檔案.txt', N'C:\vmShare\測試檔案.txt')
INSERT [sys_attachment] ([attachment_id], [create_by], [create_time], [update_by], [update_time], [file_name], [file_path]) VALUES (12, N'admin', CAST(N'2023-02-23T15:41:25.287' AS DateTime), N'admin', CAST(N'2023-02-23T15:41:25.287' AS DateTime), N'測試檔案 - 複製.txt', N'C:\vmShare\測試檔案 - 複製.txt')
SET IDENTITY_INSERT [sys_attachment] OFF
GO
INSERT [sys_email_attachment] ([email_id], [attachment_id]) VALUES (1, 1)
INSERT [sys_email_attachment] ([email_id], [attachment_id]) VALUES (1, 3)
INSERT [sys_email_attachment] ([email_id], [attachment_id]) VALUES (2, 2)
INSERT [sys_email_attachment] ([email_id], [attachment_id]) VALUES (6, 4)
INSERT [sys_email_attachment] ([email_id], [attachment_id]) VALUES (36, 11)
INSERT [sys_email_attachment] ([email_id], [attachment_id]) VALUES (36, 12)
GO
SET IDENTITY_INSERT [html_doc] ON 

INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (14, N'使用者管理', NULL, CAST(N'2022-12-28T11:13:15.000' AS DateTime), N'', CAST(N'2022-12-28T11:12:24.000' AS DateTime), N'root')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (15, N'小幫手範例', NULL, NULL, NULL, CAST(N'2023-01-05T18:41:48.000' AS DateTime), N'root')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (16, N'公告置頂加粗改顏色', NULL, CAST(N'2023-01-07T11:38:24.000' AS DateTime), N'admin', CAST(N'2023-01-07T10:21:16.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (17, N'台灣均溫不斷創新高 氣溫上升速度比全球快', NULL, CAST(N'2023-07-28T13:02:28.317' AS DateTime), N'admin', CAST(N'2023-01-07T13:06:18.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (18, N'{@subject.start}{@isUpdate}金融消費評議中心－{@caseMaster.caseNo}爭議事件預審文件', N'預審審委-「預審判斷書」通知信(41)', NULL, NULL, CAST(N'2023-07-26T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (20, N'評議系統-信件通知', N'債務協商-電話進件通知銀行信(20)', NULL, NULL, CAST(N'2023-07-27T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (21, N'評議系統-信件通知({@caseMaster.company.name})', N'移交金融服務業處理申訴(21)', NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (27, N'國人懶得動竟佔4成！醫：運動好處多還能帶來幸福感 網友運動愛好品排行榜公開～多數人會吃健康補給品讓自己Up', NULL, NULL, NULL, CAST(N'2023-07-28T13:25:12.807' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (31, N'財團法人評議中心通知信函
', N'b', NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (32, N'財團法人評議中心通知信函
', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (33, N'財團法人評議中心通知信函', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (34, N'財團法人評議中心通知信函', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (35, N'逾二個月未結案案件提醒', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (36, N'議事行政逾二個月未結案案件提醒', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (37, N'財團法人評議中心申訴案件未受理通知信函', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (38, N'財團法人評議中心申訴案件未受理通知信函', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (39, N'案管系統-信件通知  受理已逾60天尚未預審之案件', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (40, N'案管系統-信件通知  受理已逾60天尚未預審之案件', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (41, N'案管系統-信件通知  受理已逾60天尚未預審之案件', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (42, N'案管系統-信件通知  受理已逾70天尚未預審之案件', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (43, N'案管系統-信件通知  受理已逾70天尚未預審之案件', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (44, N'案管系統-信件通知  受理已逾70天尚未預審之案件', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (45, N'案管系統-信件通知 已通過大會或撤回、調處成立逾45天系統尚未完成結案案件', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (46, N'案管系統-信件通知 已通過大會或撤回、調處成立逾45天系統尚未完成結案案件', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (47, N'案管系統-信件通知 已通過大會或撤回、調處成立逾45天系統尚未完成結案案件', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (48, N'(提醒)金融消費評議中心─爭議事件預審及回覆', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (49, N'(提醒)金融消費評議中心─爭議事件預審及回覆', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (50, N'評議系統-信件通知', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (51, N'評議系統-信件通知({@caseMaster.company.name})', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (52, N'【系統通知】{@citem}核對 {@caseMaster.company.name} 已回覆', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (53, N'【系統通知】{@citem}  核對 {@caseMaster.company.name}  已回覆', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (54, N'系統通知-公文系統更新預審委員資料', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (55, N'評議系統-信件通知({@caseMaster.company.name})', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (56, N'評議系統-信件通知({@caseMaster.company.name})', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (91, N'評議系統-信件通知({@caseMaster.company.name})', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (92, N'評議系統-信件通知({@caseMaster.company.name})', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (93, N'系統-信件通知', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (94, N'評議系統-信件通知', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (95, N'評議系統-信件通知', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (96, N'評議系統-信件通知', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (97, N'評議系統-信件通知({@caseMaster.company.name}業者)', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (98, N'系統-信件通知', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (99, N'系統-信件通知(補寄)', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (100, N'評議系統-信件通知({@公司名稱})', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (101, N'留言', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (102, N'留言', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (103, N'金融服務業修改基本資料通知', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (104, N'{@loginUser.Name}已回覆案號{@caseMaster.caseNo}預審判斷書 (尚有{@count}委員未回覆)
', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (105, N'金融消費評議中心－{@caseMaster.caseNo}爭議事件預審文件', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (106, N'評議系統-信件通知', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (107, N'"""系統-忘記帳號信件通知""', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (108, N'""系統-忘記密碼信件通知"""', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (109, N'系統-連續登入錯誤通知', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (110, N'評議中心 <service@service.showu.com.tw>帳號停用清單', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (111, N'評議中心 <service@service.showu.com.tw>帳號已被停用', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (112, N'評議系統檢核碼:{@ConfirmNo}', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (113, N'系統-忘記帳號密碼信件通知', NULL, NULL, NULL, CAST(N'2023-07-28T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (129, N'向申請人發送案件已移交爭議公司處理通知。', NULL, NULL, NULL, CAST(N'2023-08-04T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (130, N'向申請人發送爭議公司回覆處理結果通知。(逕行申訴)', NULL, NULL, NULL, CAST(N'2023-08-04T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (131, N'向申請人發送爭議公司回覆處理結果通知。(金管會副知)
', NULL, NULL, NULL, CAST(N'2023-08-04T00:00:00.000' AS DateTime), N'admin')
INSERT [html_doc] ([id], [title], [memo], [upd_date], [upd_usr], [ins_date], [ins_usr]) VALUES (132, N'向申請人發送案件滿意度調查。', NULL, NULL, NULL, CAST(N'2023-08-04T00:00:00.000' AS DateTime), N'admin')
SET IDENTITY_INSERT [html_doc] OFF
GO
SET IDENTITY_INSERT [html_post] ON 

INSERT [html_post] ([id], [html_doc_id], [begin_date], [end_date], [display], [pin], [title_color], [bold]) VALUES (12, 16, NULL, NULL, N'[1,2]', 1, N'#FF0000', 1)
INSERT [html_post] ([id], [html_doc_id], [begin_date], [end_date], [display], [pin], [title_color], [bold]) VALUES (13, 17, CAST(N'2023-01-07T00:00:00.000' AS DateTime), CAST(N'2023-02-15T00:00:00.000' AS DateTime), N'[1,2]', 1, N'補班日轉乾冷低溫11度 吳德榮揭「下波強冷空氣襲時間」', 0)
INSERT [html_post] ([id], [html_doc_id], [begin_date], [end_date], [display], [pin], [title_color], [bold]) VALUES (17, 27, NULL, NULL, N'[]', 0, N'#000000', 0)
SET IDENTITY_INSERT [html_post] OFF
GO
SET IDENTITY_INSERT [html_helper] ON 

INSERT [html_helper] ([id], [menu_name], [html_doc_id], [begin_date], [end_date], [window_size]) VALUES (1, N'User', 14, NULL, NULL, 800)
INSERT [html_helper] ([id], [menu_name], [html_doc_id], [begin_date], [end_date], [window_size]) VALUES (2, N'helper', 15, NULL, NULL, 800)
SET IDENTITY_INSERT [html_helper] OFF
GO
SET IDENTITY_INSERT [html_content] ON 

INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (2, 14, N'<p><strong><span style="color:#e74c3c">使用者管理介</span></strong>面測試</p><p>小幫手輸入測試</p>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (3, 15, N'<p>這是小幫手</p><p><span style="color:#c0392b">文字可以標色</span></p>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (4, 16, N'<p>qwe</p>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (5, 18, N'<p>委員 鈞鑒：<br/>
  一、	有關{@caseUser.applicant.nametext}與{@caseMaster.company.name}+ "間「{@caseMaster.dispute_kind.name}」爭議事件（案號：{@caseMaster.caseNo}），預審資料已上傳本中心案件管理系統（網址 https://fao.foi.org.tw ），請委員登入該系統之「預審資料」中檢閱。<br/>
  二、	本件預審委員為：{@case_examminer.nameText}。<br/>
  三、	惠請委員於5日內回覆「預審判斷書」，回覆方式逐案點選「查看」，並於填列「判斷結論」及「理由」後，點選「送出」即可。<br/>
  {@mailMemo} </b><br/>
  如有任隨時與本件承辦人{@caseMaster.centerOwner.name}先生 / 小姐（{@caseMaster.centerOwner.tel}）聯繫。</p>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (6, 20, N'<p>您好！<br/>
<br/>
　本中心於{@caseMaster.caseDate}接獲消費者{@caseUser.applicant.nametext}君來電表示與「{@CompanyName}」間有債務協商問題，第{@Case_No}案件已登載於本中心系統，請承辦人員登錄本中心「申訴暨評議案件管理系統（網址：https://fao.foi.org.tw ）-案件維護-電話進件(查詢)」收件處理，謝謝您！<br/>
<br/>
　此郵件由 金融消費者保護法爭議處理機構申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。</p?', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (7, 21, N'<table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
	<td colspan="4" align="center" valign="middle" class="Word_big"> 
	   <font size="3" face="標楷體">財團法人金融消費評議中心　　&nbsp;通知</font> 
	</td>
 </tr>
 <tr>
	<td> 
	   &nbsp; 
	</td>
	<td> 
	   &nbsp; 
	</td>
	<td> 
	   &nbsp; 
	</td>
	<td> 
	   &nbsp; 
	</td>
 </tr>
 <tr>
	<td> 
	   &nbsp; 
	</td>
	<td> 
	   &nbsp; 
	</td>
	<td>
	   <table width="70%" border="0" align="right" cellpadding="0" cellspacing="0">
		  <tr>
			 <td width="15%" align="right" valign="middle" nowrap="nowrap"> 
				<span class="word_small"> 
				<font size="1" face="標楷體">地&nbsp;&nbsp;&nbsp;&nbsp;址：</font>
				</span> 
			 </td>
			 <td width="85%" align="left" valign="middle" nowrap="nowrap"> 
				<span class="word_small"> 
				<font size="1" face="標楷體">台北市忠孝西路一段4號17樓</font> 
				</span> 
			 </td>
		  </tr>
		  <tr>
			 <td width="15%" align="right" valign="middle" nowrap="nowrap">
				<font size="1" face="標楷體">
				   <span class="word_small"> 
				   連絡電話：
				   </span> 
			 </td>
			 <td width="85%" align="left" valign="middle" nowrap="nowrap"> 
			 <span class="word_small"> 
			 02-23161288 
			 </span> </font>
			 </td> 
		  </tr>
	   </table>
	</td>
	<td> 
	   &nbsp; 
	</td>
 </tr>
 <tr>
	<td> 
	   &nbsp; 
	</td>
	<td> 
	   &nbsp; 
	</td>
	<td> 
	   &nbsp; 
	</td>
	<td> 
	   &nbsp; 
	</td>
 </tr>
 <tr>
	<td width="5%" align="right" valign="middle" nowrap="nowrap"> 
	   &nbsp; 
	</td>
	<td width="15%" align="right" valign="middle" nowrap="nowrap" class="word_M"> 
	   <font size="2" face="標楷體">受文者： </font>
	<td  width="70%" align="left" valign="middle" nowrap="nowrap" class="word_M"> 
	   <a name="受文者" id="受文者"> 
	   </a> 
	   <font size="2" face="標楷體"> {@caseUser.applicant.nametext} </font>
	</td>
	<td  width="10%" align="left" valign="middle" nowrap="nowrap"> 
	   &nbsp; 
	</td>
 </tr>
 <tr>
	<td align="right" valign="middle"> 
	   &nbsp; 
	</td>
	<td align="right" valign="middle" class="word_M"> 
	   &nbsp; 
	</td>
	<td align="left" valign="middle" class="word_M"> 
	   &nbsp; 
	</td>
	<td align="left" valign="middle" > 
	   &nbsp; 
	</td>
 </tr>
 <tr>
	<td align="right" valign="middle"> 
	   &nbsp; 
	</td>
	<td align="right" valign="top" class="word_M"> 
	   <font size="2" face="標楷體">主&nbsp;&nbsp;旨：</font> 
	</td>
	<td align="left" valign="middle" class="word_M"> 
	   <font size="2" face="標楷體">關於{@caseUser.applicant.nametext}(案號：{@caseMaster.caseNo})向本中心申<br />訴&nbsp;&nbsp;貴公司乙案，惠請迅予查明妥處逕覆，並將申訴處理結果副知本中心，請&nbsp;&nbsp;查照。</font> 
	</td>
	<td align="left" valign="middle" > 
	   &nbsp; 
	</td>
 </tr>
 <tr>
	<td align="right" valign="middle"> 
	   &nbsp; 
	</td>
	<td align="right" valign="middle" class="word_M"> 
	   &nbsp; 
	</td>
	<td align="left" valign="middle" class="word_M"> 
	   &nbsp; 
	</td>
	<td align="left" valign="middle" > 
	   &nbsp; 
	</td>
 </tr>
 <tr>
	<td align="right" valign="middle"> 
	   &nbsp; 
	</td>
	<td align="right" valign="middle" class="word_M"> 
	   <font size="2" face="標楷體">說&nbsp;&nbsp;明： </font>
	</td>
	<td align="left" valign="middle" class="word_M"> 
	   &nbsp; 
	</td>
	<td align="left" valign="middle" > 
	   &nbsp; 
	</td>
 </tr>
 <tr>
	<td align="right" valign="middle"> 
	   &nbsp; 
	</td>
	<td align="right" valign="top" class="word_M"> 
	   <font size="2" face="標楷體">一、</font>
	</td>
	<td align="left" valign="middle" class="word_M"> 
	   <font size="2" face="標楷體">依據金融消費者保護法第13條第2項規定辦理。</font>
	</td>
	<td align="left" valign="middle" > 
	   &nbsp; 
	</td>
 </tr>
 <tr>
	<td align="right" valign="middle"> 
	   &nbsp; 
	</td>
	<td align="right" valign="top" class="word_M"> 
	   <font size="2" face="標楷體">二、 </font>
	</td>
	<td align="left" valign="middle" class="word_M"> 
	   <font size="2" face="標楷體">有關{@Applicant_Name}向本中心申訴&nbsp;&nbsp;貴公司乙案，請儘速查明妥處，應於30日 <br />內儘速查明妥處，並將申訴處理結果以書面回覆申請<br />人及副知本中心</font>
	</td>
	<td align="left" valign="middle" > 
	   &nbsp; 
	</td>
 </tr>
 <tr>
	<td align="right" valign="middle"> 
	   &nbsp; 
	</td>
	<td align="right" valign="top" class="word_M"> 
	   <font size="2" face="標楷體">三、 </font>
	</td>
	<td align="left" valign="middle" class="word_M"> 
	   <font size="2" face="標楷體">另於收受本通知後，請即時登錄「申訴暨評議案件管<br />理系統（網址：<a href="https://fao.foi.org.tw">https://fao.foi.org.tw</a> ）」更新本案<br />各項處理進度。</font>
	</td>
	<td align="left" valign="middle" > 
	   &nbsp; 
	</td>
 </tr>
</table>
<br />
<hr />
<font size=''2''>此郵件由 財團法人金融消費評議中心申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。</font><br />
<font size=''2''>發送日期:{@mailTime}</font>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (8, 17, N'<p>天氣愈來愈熱，中央氣象局統計台灣近100年均溫，每10年上升攝氏0.11度，近30年則每10年上升0.25度，相較全球均溫上升0.08度及0.21度，台灣增溫快速。專家預估，台灣未來極端降雨頻率將增加，乾旱的時候愈乾、溼的時候愈溼，旱澇不均情況將較全球更為嚴重。</p><p><img alt="&amp;#x008fd1;10&amp;#x005e74;&amp;#x0053f0;&amp;#x007063;11&amp;#x007ad9;&amp;#x005e74;&amp;#x005e73;&amp;#x005747;&amp;#x006c23;&amp;#x006eab;&amp;#x006bd4;&amp;#x008f03;&amp;#x008868;&amp;#x003002;&amp;#x00ff08;&amp;#x005716;&amp;#x00ff0f;&amp;#x006797;&amp;#x00826f;&amp;#x009f4a;&amp;#x0088fd;&amp;#x008868;&amp;#x00ff09;" src="https://s.yimg.com/ny/api/res/1.2/k8KVzZxN3jw2jFsQO_fDwg--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTIwNDtjZj13ZWJw/https://media.zenfs.com/ko/ctwant_com_582/dbcb38babf310b8996ef46c4be151faf" /></p><p>近10年台灣11站年平均氣溫比較表。（圖／林良齊製表）</p><p>入夏後，台灣各地飆高溫，根據衛福部統計，今年7月上半月，因熱傷害就診累計達470人次，約為去年同期的1.6倍。高溫影響經濟活動，也影響健康。</p><p>國家衛生研究院表示，根據聯合國政府間氣候變化專門委員會（IPCC）針對不同碳排情境，推估台灣在最壞情況下，約至2060年，中部及南部夏季日均溫幾乎都大於30度，六都中尤以台中及台南氣溫最高。</p><p>根據氣象局歷年夏季6、7月高溫平均統計，台中分別為28.1度與28.9度，台南為28.9度與29.4度。</p><p>氣象局以全台11處平地測站平均計算，台灣2020年均溫24.56度為史上新高，2019年為24.53度、第二高，都高出台灣百年均溫22.98度，尤其最近10年均溫已有7年排入史上前10高溫名次。</p><p>氣象局預報中心主任呂國臣表示，台灣增溫較快，除受到全球溫室效應外，都市化也是一大因素。台大大氣系教授羅明輝也說，台灣農地減少，影響散熱，都可能是台灣升溫較快的原因。</p><p>國衛院群體健康研究所研究員陳主智指出，長者對環境變化比較敏感，持續上升的高溫不利長者健康。</p><p>陳主智進一步指出，政府必須拿出相當力度，以免65歲以上長者早逝的情況加劇，這也考驗我們的社會。</p><p>今年為反聖嬰轉換至聖嬰年，聖嬰現象導致海洋溫度升高，將提供更多熱源，學術界預估明年全球天氣將會更熱，赤道地區升溫會更明顯，台灣也會受到影響。</p><p>羅明輝指出，以過去資料顯示，台灣總雨量變化不大，但變異度愈來愈大，乾旱的時候愈乾、溼的時候愈溼，推測是受到全球暖化影響、使大氣可含水量增加，強降雨將更為頻繁。</p><p>呂國臣亦指出，高溫連續日數也會變多，寒流次數減少。</p><p>中研院環境變遷研究中心特聘研究員許晃雄則說，雖然台灣溫度上升趨勢不會像高緯度或大陸地區國家那麼高，但推論暴雨頻率會較平均為高，旱澇更不均，並集中在特定季節。</p>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (9, 27, N'<p>你是一整天上班坐在電腦前，下班回家就被沙發給吸住的一族嗎？運動對你來說就是苦差事嗎？事實上，國人「懶得動」的比例不算低，根據2023年Yahoo和早安健康發起的<strong>運動健康大調查</strong>中發現，不愛運動的國人比例大約佔4成，但運動真的好處多多，除了讓人看來更年輕，內在保養也是大加分，甚至還能激發快樂激素帶來滿滿的幸福感，疫情之後更要一起動起來！</p><p><img alt="" src="https://s.yimg.com/ny/api/res/1.2/f1Lk2Am6h8u3cIeTWDMi0Q--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTY0MDtjZj13ZWJw/https://s.yimg.com/os/creatr-uploaded-images/2023-07/bbf9b8e0-218b-11ee-9e6a-6cdb189af2ea" /></p><h2><strong>國人少運動原因：懶</strong></h2><h2><strong>沒時間、不喜歡、沒有同好夥伴一起激勵</strong></h2><p>在Yahoo和早安健康發起的<strong>運動健康大調查</strong>中分析國人很少運動的第一個理由就是<strong>「懶」</strong>，占比高達4成4，懶得出門、懶得換運動服、懶得流汗，到最後甚至也懶得找藉口不運動。第二名是<strong>「沒有時間」</strong>，對於正需要替未來打拼的青壯年一族，時間就是金錢，下班後還要開啟的第二場無法離職的多重角色，好媽媽、好爸爸沒有時間成為不運動最佳開脫的說法；第三名不愛運動的理由超直白就是<strong>「不喜歡」</strong>，可能與其流汗不如控制飲食。</p><p>另外，身為群居動物的人類，<strong>「找不到人一起運動」</strong>也成為不運動的原因之一，沒有共同興趣的同好相伴激勵，運動路上不免孤單。而覺得自己體力不好的一群，像是爬層樓梯就喘吁吁，不想讓自己太累就宣告放棄，殊不知，越是放棄體力可能越是走下坡啊！</p><h2><strong>多數民眾認為運動可以讓體力變好！</strong></h2><p>在本次的調查中也詢問了民眾覺得運動帶來的好處有哪些？第一名有45％的受訪者認為體力、體能變好，另外，運動時創造出來的快樂激素讓民眾覺得能舒緩壓力、增加抵抗力和讓心情都變好，而為了「體態更好」而運動則只有排在第四名。</p><h2><strong>過半數民眾每年都會買運動品或保健品</strong></h2><p>近4成有在吃運動補充品或保健品，像是蛋白粉、肌酸、能量補給飲/棒，有過半數的人至少一年都會買一次運動用品或是保健品。進一步分析經常購買哪些運動相關商品前三名依序為：<strong>運動鞋、運動/機能服、運動補充/保健品像是蛋白粉、肌酸、能量補給</strong>等，顯示民眾準備運動前會備齊能舒服運動的服裝和一雙好走跳的鞋子，運動補充品的攝取更能達到加乘的運動效果。</p>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (10, 31, N'僅通知本中心移交　貴公司處理之 {@caseUser.applicant.nametext} 君申訴案（案號：{@caseMaster.caseNo} 
即將逾金融消費者保護法第13條第2項之申訴處理期限。
 上開申訴案處理完成後，請　貴公司將處理結果登錄於「申訴暨評議案件管理系統（網址：https://fao.foi.org.tw  ）」。


財團法人金融消費評議中心　敬啟', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (12, 32, N'<table border=''1''>
<tr>
	<td>文號:{@caseMaster.caseNo}未領件<td/>
	<td>承辦人:{@caseMaster.centerOwner.name}<td/>
	<td>應受理日期:" + DateTime.Now.AddDays(-5).ToString("yyyy/MM/dd")<td/>
	迴圈多筆....
</tr>
<table/>
', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (13, 33, N'{@mailTime}發信成功', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (14, 34, N'<table border=''1''>
   <tr>
      <td>評字第案號</td>
      <td>公司</td>
      <td>文號</td>
      <td>申請人</td>
      <td>收文日</td>
      <td>補正日</td>
      <td>最後進度</td>
   </tr>
   <tr>
      <td>{@caseMaster.caseNo}</td>
      <td>{@caseMaster.company.name}</td>
      <td>{@caseMaster.caseNo}</td>
      <td>{@caseMaster.centerOwner.name}</td>
      <td>{@caseMaster.caseDate}</td>
      <td>{@caseFlow.10049.date}</td>
      <td>{@caseMaster.leasteCaseFlow.Name}</td>
   </tr>
</table>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (15, 35, N'<table border=''1''>
   <tr>
      <td>評字第案號</td>
      <td>公司</td>
      <td>文號</td>
      <td>申請人</td>
      <td>收文日</td>
      <td>補正日</td>
      <td>最後進度</td>
   </tr>
   <tr>
      <td>{@caseMaster.caseNo}</td>
      <td>{@caseMaster.company.name}</td>
      <td>{@caseMaster.caseNo}</td>
      <td>{@caseMaster.centerOwner.name}</td>
      <td>{@caseMaster.caseDate}</td>
      <td>{@caseFlow.10049.date}</td>
      <td>{@caseMaster.leasteCaseFlow.Name}</td>
   </tr>
</table>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (16, 36, N'僅通知本中心移交　貴公司處理之
, {@caseUser.applicant.nametext} 君申訴案(案號：{@caseMaster.caseNo})
, {@caseUser.applicant.nametext} 君申訴案(案號：{@caseMaster.caseNo})
, {@caseUser.applicant.nametext} 君申訴案(案號：{@caseMaster.caseNo})
(迴圈遞增....)
，經申訴暨評議案件管理系統(下稱案件管理系統)移交金融服務業處理申訴已逾三個工作日　貴公司尚未登錄案件管理系統受理前揭案件，請儘速至案件管理系統( https://fao.foi.org.tw ）點選受理該案，並掌握案件處理時效。
財團法人金融消費評議中心  敬啟', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (17, 37, N'<table border=''1''  cellspacing=''0'' cellpadding=''5''>
	<tr>
		<th>案號</th>
		<th>申請人姓名</th>
		<th>金融服務業</th>
		<th>本中心移交日期</th>
		<th>案件最後承辦人</th>
	</tr>
	<tr>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseUser.applicant.nametext}</td>
		<td>{@caseMaster.company.name}</td>
		<td>caseMaster.leasteCaseFlow.date</td>
		<td>caseMaster.centerOwner.name</td>
	</tr>
</table>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (18, 38, N'<table border=''1''  cellspacing=''0'' cellpadding=''5'' >
	<tr>
		<td>評字第案號</td>
		<td>公司</td>
		<td>文號</td>
		<td>申請人</td>
		<td>收文日</td>
		<td>補正日</td>
		<td>最後進度</td>
		<td>處理天數</td>
	</tr>
	<tr>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseMaster.company.name}</td>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseUser.applicant.nametext}</td>
		<td>{@caseMaster.caseDate}</td>
		<td>{@caseMaster.leasteCaseFlow.date}</td>
		<td>{@caseMaster.leasteCaseFlow.name}</td>
		<td>{@Proceday}</td>
	</tr>
</table>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (19, 39, N'<table border=''1''  cellspacing=''0'' cellpadding=''5'' >
	<tr>
		<td>評字第案號</td>
		<td>公司</td>
		<td>文號</td>
		<td>申請人</td>
		<td>收文日</td>
		<td>補正日</td>
		<td>最後進度</td>
		<td>案件承辦人</td>
		<td>處理天數</td>
	</tr>
	<tr>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseMaster.company.name}</td>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseUser.applicant.nametext}</td>
		<td>{@caseMaster.caseDate}</td>
		<td>{@caseMaster.leasteCaseFlow.date}</td>
		<td>{@caseMaster.leasteCaseFlow.name}</td>
		<td>{@caseMaster.centerOwner.name}</td>
		<td>{@Proceday}</td>
	</tr>
</table>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (20, 40, N'<table border=''1''  cellspacing=''0'' cellpadding=''5'' >
	<tr>
		<td>評字第案號</td>
		<td>公司</td>
		<td>文號</td>
		<td>申請人</td>
		<td>收文日</td>
		<td>補正日</td>
		<td>最後進度</td>
		<td>案件承辦人</td>
		<td>處理天數</td>
	</tr>
	<tr>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseMaster.company.name}</td>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseUser.applicant.nametext}</td>
		<td>{@caseMaster.caseDate}</td>
		<td>{@caseMaster.leasteCaseFlow.date}</td>
		<td>{@caseMaster.leasteCaseFlow.name}</td>
		<td>{@caseMaster.centerOwner.name}</td>
		<td>{@Proceday}</td>
	</tr>
</table>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (21, 41, N'<table border=''1''  cellspacing=''0'' cellpadding=''5'' >
	<tr>
		<td>評字第案號</td>
		<td>公司</td>
		<td>文號</td>
		<td>申請人</td>
		<td>收文日</td>
		<td>補正日</td>
		<td>最後進度</td>
		<td>案件承辦人</td>
		<td>處理天數</td>
	</tr>
	<tr>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseMaster.company.name}</td>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseUser.applicant.nametext}</td>
		<td>{@caseMaster.caseDate}</td>
		<td>{@caseMaster.leasteCaseFlow.date}</td>
		<td>{@caseMaster.leasteCaseFlow.name}</td>
		<td>{@caseMaster.centerOwner.name}</td>
		<td>{@Proceday}</td>
	</tr>
</table>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (22, 42, N'<table border=''1''  cellspacing=''0'' cellpadding=''5'' >
	<tr>
		<td>評字第案號</td>
		<td>公司</td>
		<td>文號</td>
		<td>申請人</td>
		<td>收文日</td>
		<td>補正日</td>
		<td>最後進度</td>
		<td>案件承辦人</td>
		<td>處理天數</td>
	</tr>
	<tr>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseMaster.company.name}</td>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseUser.applicant.nametext}</td>
		<td>{@caseMaster.caseDate}</td>
		<td>{@caseMaster.leasteCaseFlow.date}</td>
		<td>{@caseMaster.leasteCaseFlow.name}</td>
		<td>{@caseMaster.centerOwner.name}</td>
		<td>{@Proceday}</td>
	</tr>
</table>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (23, 43, N'<table border=''1''  cellspacing=''0'' cellpadding=''5'' >
	<tr>
		<td>評字第案號</td>
		<td>公司</td>
		<td>文號</td>
		<td>申請人</td>
		<td>收文日</td>
		<td>補正日</td>
		<td>最後進度</td>
		<td>案件承辦人</td>
		<td>處理天數</td>
	</tr>
	<tr>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseMaster.company.name}</td>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseUser.applicant.nametext}</td>
		<td>{@caseMaster.caseDate}</td>
		<td>{@caseMaster.leasteCaseFlow.date}</td>
		<td>{@caseMaster.leasteCaseFlow.name}</td>
		<td>{@caseMaster.centerOwner.name}</td>
		<td>{@Proceday}</td>
	</tr>
</table>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (24, 44, N'<table border=''1''  cellspacing=''0'' cellpadding=''5'' >
	<tr>
		<td>評字第案號</td>
		<td>公司</td>
		<td>文號</td>
		<td>申請人</td>
		<td>收文日</td>
		<td>補正日</td>
		<td>最後進度</td>
	</tr>
	<tr>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseMaster.company.name}</td>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseUser.applicant.nametext}</td>
		<td>{@caseMaster.caseDate}</td>
		<td>{@caseMaster.leasteCaseFlow.date}</td>
		<td>{@caseMaster.leasteCaseFlow.name}</td>
	</tr>
</table>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (25, 45, N'
評字第案號,公司
<table border=''1''  cellspacing=''0'' cellpadding=''5'' >
	<tr>
		<td>評字第案號</td>
		<td>公司</td>
		<td>文號</td>
		<td>申請人</td>
		<td>收文日</td>
		<td>補正日</td>
		<td>最後進度</td>
		<td>案件承辦人</td>
	</tr>
	<tr>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseMaster.company.name}</td>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseUser.applicant.nametext}</td>
		<td>{@caseMaster.caseDate}</td>
		<td>{@caseMaster.leasteCaseFlow.date}</td>
		<td>{@caseMaster.leasteCaseFlow.name}</td>
		<td>{@caseMaster.centerOwner.name}</td>
	</tr>
</table>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (26, 46, N'
評字第案號,公司
<table border=''1''  cellspacing=''0'' cellpadding=''5'' >
	<tr>
		<td>評字第案號</td>
		<td>公司</td>
		<td>文號</td>
		<td>申請人</td>
		<td>收文日</td>
		<td>補正日</td>
		<td>最後進度</td>
		<td>案件承辦人</td>
	</tr>
	<tr>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseMaster.company.name}</td>
		<td>{@caseMaster.caseNo}</td>
		<td>{@caseUser.applicant.nametext}</td>
		<td>{@caseMaster.caseDate}</td>
		<td>{@caseMaster.leasteCaseFlow.date}</td>
		<td>{@caseMaster.leasteCaseFlow.name}</td>
		<td>{@caseMaster.centerOwner.name}</td>
	</tr>
</table>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (27, 47, N'委員  鈞鑒：<br />
一、	有關{@caseExaminer.name)}等爭議事件，前已通知委員預審，今日再次提醒，煩請委員撥冗協助預審。<br />
二、	預審資料請委員登入本中心案件管理系統（網址 https://fao.foi.org.tw ），於該系統之「預審資料」中檢閱。<br />
三、	預審資料密碼5碼：規則已於大會公布。<br />
如有任何問題，歡迎隨時與本中心承辦人員聯繫。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (28, 48, N'委員  鈞鑒：
一、	有關 {@caseExaminer.name)}等爭議事件，前已通知委員預審，今日再次提醒，煩請委員撥冗協助預審。
二、	預審資料請委員登入本中心案件管理系統（網址 https://fao.foi.org.tw ），於該系統之「預審資料」中檢閱。
如有任何問題，歡迎隨時與本中心承辦人員聯繫。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (29, 49, N'您好！本中心於{@mailDate}接獲消費者{@caseUser.applicant.nametext}君來電表示與「{@caseMaster.company.name}}」間有債務協商問題，第{@caseMaster.caseNo}案件已登載於本中心系統，請承辦人員登錄本中心「申訴暨評議案件管理系統（網址：https://fao.foi.org.tw ）-案件維護-電話進件(查詢)」收件處理，謝謝您！

此郵件由 金融消費者保護法爭議處理機構申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (30, 50, N'<html>
   <body>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tr>
            <td colspan="4" align="center" valign="middle" class="Word_big"> 
               <font size="3" face="標楷體">財團法人金融消費評議中心　　&nbsp;通知</font> 
            </td>
         </tr>
         <tr>
            <td> 
               &nbsp; 
            </td>
            <td> 
               &nbsp; 
            </td>
            <td> 
               &nbsp; 
            </td>
            <td> 
               &nbsp; 
            </td>
         </tr>
         <tr>
            <td> 
               &nbsp; 
            </td>
            <td> 
               &nbsp; 
            </td>
            <td>
               <table width="70%" border="0" align="right" cellpadding="0" cellspacing="0">
                  <tr>
                     <td width="15%" align="right" valign="middle" nowrap="nowrap"> 
                        <span class="word_small"> 
                        <font size="1" face="標楷體">地&nbsp;&nbsp;&nbsp;&nbsp;址：</font>
                        </span> 
                     </td>
                     <td width="85%" align="left" valign="middle" nowrap="nowrap"> 
                        <span class="word_small"> 
                        <font size="1" face="標楷體">台北市忠孝西路一段4號17樓</font> 
                        </span> 
                     </td>
                  </tr>
                  <tr>
                     <td width="15%" align="right" valign="middle" nowrap="nowrap">
                        <font size="1" face="標楷體">
                           <span class="word_small"> 
                           連絡電話：
                           </span> 
                     </td>
                     <td width="85%" align="left" valign="middle" nowrap="nowrap"> 
                     <span class="word_small"> 
                     02-23161288 
                     </span> </font>
                     </td> 
                  </tr>
               </table>
            </td>
            <td> 
               &nbsp; 
            </td>
         </tr>
         <tr>
            <td> 
               &nbsp; 
            </td>
            <td> 
               &nbsp; 
            </td>
            <td> 
               &nbsp; 
            </td>
            <td> 
               &nbsp; 
            </td>
         </tr>
         <tr>
            <td width="5%" align="right" valign="middle" nowrap="nowrap"> 
               &nbsp; 
            </td>
            <td width="15%" align="right" valign="middle" nowrap="nowrap" class="word_M"> 
               <font size="2" face="標楷體">受文者： </font>
            <td  width="70%" align="left" valign="middle" nowrap="nowrap" class="word_M"> 
               <a name="受文者" id="受文者"> 
               </a> 
               <font size="2" face="標楷體"> {@caseMaster.company.name} </font>
            </td>
            <td  width="10%" align="left" valign="middle" nowrap="nowrap"> 
               &nbsp; 
            </td>
         </tr>
         <tr>
            <td align="right" valign="middle"> 
               &nbsp; 
            </td>
            <td align="right" valign="middle" class="word_M"> 
               &nbsp; 
            </td>
            <td align="left" valign="middle" class="word_M"> 
               &nbsp; 
            </td>
            <td align="left" valign="middle" > 
               &nbsp; 
            </td>
         </tr>
         <tr>
            <td align="right" valign="middle"> 
               &nbsp; 
            </td>
            <td align="right" valign="top" class="word_M"> 
               <font size="2" face="標楷體">主&nbsp;&nbsp;旨：</font> 
            </td>
            <td align="left" valign="middle" class="word_M"> 
               <font size="2" face="標楷體">關於{@caseUser.applicant.nametext}(案號：{@caseMaster.caseNo})向本中心申<br />訴&nbsp;&nbsp;貴公司乙案，惠請迅予查明妥處逕覆，並將申訴處理結果副知本中心，請&nbsp;&nbsp;查照。</font> 
            </td>
            <td align="left" valign="middle" > 
               &nbsp; 
            </td>
         </tr>
         <tr>
            <td align="right" valign="middle"> 
               &nbsp; 
            </td>
            <td align="right" valign="middle" class="word_M"> 
               &nbsp; 
            </td>
            <td align="left" valign="middle" class="word_M"> 
               &nbsp; 
            </td>
            <td align="left" valign="middle" > 
               &nbsp; 
            </td>
         </tr>
         <tr>
            <td align="right" valign="middle"> 
               &nbsp; 
            </td>
            <td align="right" valign="middle" class="word_M"> 
               <font size="2" face="標楷體">說&nbsp;&nbsp;明： </font>
            </td>
            <td align="left" valign="middle" class="word_M"> 
               &nbsp; 
            </td>
            <td align="left" valign="middle" > 
               &nbsp; 
            </td>
         </tr>
         <tr>
            <td align="right" valign="middle"> 
               &nbsp; 
            </td>
            <td align="right" valign="top" class="word_M"> 
               <font size="2" face="標楷體">一、</font>
            </td>
            <td align="left" valign="middle" class="word_M"> 
               <font size="2" face="標楷體">依據金融消費者保護法第13條第2項規定辦理。</font>
            </td>
            <td align="left" valign="middle" > 
               &nbsp; 
            </td>
         </tr>
         <tr>
            <td align="right" valign="middle"> 
               &nbsp; 
            </td>
            <td align="right" valign="top" class="word_M"> 
               <font size="2" face="標楷體">二、 </font>
            </td>
            <td align="left" valign="middle" class="word_M"> 
               <font size="2" face="標楷體">有關{@caseUser.applicant.nametext}向本中心申訴&nbsp;&nbsp;貴公司乙案，請儘速查明妥處，應於30日 <br />內儘速查明妥處，並將申訴處理結果以書面回覆申請<br />人及副知本中心</font>
            </td>
            <td align="left" valign="middle" > 
               &nbsp; 
            </td>
         </tr>
         <tr>
            <td align="right" valign="middle"> 
               &nbsp; 
            </td>
            <td align="right" valign="top" class="word_M"> 
               <font size="2" face="標楷體">三、 </font>
            </td>
            <td align="left" valign="middle" class="word_M"> 
               <font size="2" face="標楷體">另於收受本通知後，請即時登錄「申訴暨評議案件管<br />理系統（網址：<a href="https://fao.foi.org.tw">https://fao.foi.org.tw</a> ）」更新本案<br />各項處理進度。</font>
            </td>
            <td align="left" valign="middle" > 
               &nbsp; 
            </td>
         </tr>
      </table>
      <br />
      <hr />
      <font size=''2''>此郵件由 財團法人金融消費評議中心申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。</font><br />
      <font size=''2''>發送日期:{@MailTime}</font>
   </body>
</html>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (31, 51, N' {@caseMaster.company.name}已於{@MailTime}送出該公司之{@citem} 回覆資料，<br/> 
	  請至申訴暨評議案件管理系統（ https://fao.foi.org.tw/Pages/Index.aspx ）確認。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (32, 52, N'{@caseMaster.company.name}已於{@MailTime}送出該公司之{@citem} 回覆資料，
請至申訴暨評議案件管理系統（ https://fao.foi.org.tw/Pages/Index.aspx ）確認。</br>
案號如下:</br>
123456</br>
123456</br>
123456</br>
請至申訴暨評議案件管理系統（ https://fao.foi.org.tw/Pages/Index.aspx ）確認。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (33, 53, N'公文系統更新案件(案號:{@caseMaster.caseNo})預審委員資料，請於系統上確認，並點選更新並發信。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (34, 54, N'<table width=100% border=0 cellspacing=0 cellpadding=0>
        <tr> 
        <td colspan=4 align=center valign=middle class=Word_big> 
        <font size=+3 face=標楷體>財團法人金融消費評議中心　　&nbsp;通知</font> 
        </td> 
        </tr> 

        <tr> 
        <td> 
        &nbsp; 
        </td> 
        <td> 
        &nbsp; 
        </td> 
        <td> 
        &nbsp; 
        </td> 
        <td> 
        &nbsp; 
        </td> 
        </tr> 

        <tr> 
        <td> 
        &nbsp; 
        </td> 
        <td> 
        &nbsp; 
        </td> 

        <td> 
        <table width=70% border=0 align=right cellpadding=0 cellspacing=0> 
        <tr> 
        <td width=15% align=right valign=middle nowrap=nowrap> 
        <span class=word_small> 
        <font size=+1 face=標楷體>地&nbsp;&nbsp;&nbsp;&nbsp;址：</font>
        </span> 
        </td> 
         <td width=85% align=left valign=middle nowrap=nowrap> 
        <span class=word_small> 
        <font size=+1 face=標楷體>台北市忠孝西路一段4號17樓</font> 
        </span> 
        </td> 
        </tr> 

        <tr> 
        <td width=15% align=right valign=middle nowrap=nowrap> 
        <font size=+1 face=標楷體><span class=word_small> 
        連絡電話：
        </span> 
        </td> 
         <td width=85% align=left valign=middle nowrap=nowrap> 
        <span class=word_small> 
        02-23161288 
        </span> </font>
        </td> 
        </tr> 

        </table> 
        </td> 
        <td> 
        &nbsp; 
        </td> 
        </tr> 

        <tr> 
        <td> 
        &nbsp; 
        </td> 
        <td> 
        &nbsp; 
        </td> 
        <td> 
        &nbsp; 
        </td> 
        <td> 
        &nbsp; 
        </td> 
        </tr> 

        <tr> 
        <td width=5% align=right valign=middle nowrap=nowrap> 
        &nbsp; 
        </td> 
        <td width=15% align=right valign=middle nowrap=nowrap class=word_M> 
        <font size=+2 face=標楷體>受文者： </font>

        <td  width=70% align=left valign=middle nowrap=nowrap class=word_M> 
        <a name=受文者 id=受文者> 
        </a> 
        <font size=+2 face=標楷體> {@caseMaster.company.name} </font>
        </td> 
        <td  width=10% align=left valign=middle nowrap=nowrap> 
        &nbsp; 
        </td> 
        </tr> 

        <tr> 
        <td align=right valign=middle> 
        &nbsp; 
        </td> 
        <td align=right valign=middle class=word_M> 
        &nbsp; 
        </td> 
        <td align=left valign=middle class=word_M> 
        &nbsp; 
        </td> 
        <td align=left valign=middle > 
        &nbsp; 
        </td> 
        </tr> 

        <tr> 
        <td align=right valign=middle> 
        &nbsp; 
        </td> 
        <td align=right valign=top class=word_M> 
        <font size=+2 face=標楷體>主&nbsp;&nbsp;旨：</font> 
        </td> 
        <td align=left valign=middle class=word_M> 
        <font size=+2 face=標楷體>關於{@caseUser.applicant.nametext}(案號：{@caseMaster.caseNo})向本中心申<br />訴&nbsp;&nbsp;貴公司乙案，惠請迅予查明妥處逕覆，並將申訴處理結果副知本中心，請&nbsp;&nbsp;查照。</font> 
        </td> 
        <td align=left valign=middle > 
        &nbsp; 
        </td> 
        </tr> 

        <tr> 
        <td align=right valign=middle> 
        &nbsp; 
        </td> 
        <td align=right valign=middle class=word_M> 
        &nbsp; 
        </td> 
        <td align=left valign=middle class=word_M> 
        &nbsp; 
        </td> 
        <td align=left valign=middle > 
        &nbsp; 
        </td> 
        </tr> 

        <tr> 
        <td align=right valign=middle> 
        &nbsp; 
        </td> 
        <td align=right valign=middle class=word_M> 
        <font size=+2 face=標楷體>說&nbsp;&nbsp;明： </font>
        </td> 
        <td align=left valign=middle class=word_M> 
        &nbsp; 
        </td> 
        <td align=left valign=middle > 
        &nbsp; 
        </td> 
        </tr> 

        <tr> 
        <td align=right valign=middle> 
        &nbsp; 
        </td> 
        <td align=right valign=top class=word_M> 
        <font size=+2 face=標楷體>一、</font>
        </td> 
        <td align=left valign=middle class=word_M> 
        <font size=+2 face=標楷體>依{@caseUser.applicant.nametext}君{@caseMaster.caseDate.rocYear}年{@caseMaster.caseDate.month}月{@caseMaster.caseDate.month}日申訴事由辦理。</font>
        </td> 
        <td align=left valign=middle > 
        &nbsp; 
        </td> 
        </tr> 

        <tr> 
        <td align=right valign=middle> 
        &nbsp; 
        </td> 
        <td align=right valign=top class=word_M> 
        <font size=+2 face=標楷體>二、 </font>
        </td> 
        <td align=left valign=middle class=word_M> 
        <font size=+2 face=標楷體>有關旨揭申訴案件，請儘速於30日內查明妥處，並將申訴處理結果以書面回覆申請人及副知本中心。</font>
        </td> 
        <td align=left valign=middle > 
        &nbsp; 
        </td> 
        </tr> 

        <tr> 
        <td align=right valign=middle> 
        &nbsp; 
        </td> 
        <td align=right valign=top class=word_M> 
        <font size=+2 face=標楷體>三、 </font>
        </td> 
        <td align=left valign=middle class=word_M> 
        <font size=+2 face=標楷體>另於收受本通知後，請即時登錄「申訴暨評議案件管理系統（網址：<a href=https://fao.foi.org.tw>https://fao.foi.org.tw</a> ）」更新本案各項處理進度。</font>
        </td> 
        <td align=left valign=middle > 
        &nbsp; 
        </td> 
        </tr> 

        </table> 

        <br /><hr />
        <font size=''2''>此郵件由 財團法人金融消費評議中心申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。</font><br />
        <font size=''2''>發送日期:{@mailTime} </font>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (35, 55, N'<table width=100% border=0 cellspacing=0 cellpadding=0>
         <tr> 
         <td colspan=4 align=center valign=middle class=Word_big> 
         <font size=+3 face=標楷體>財團法人金融消費評議中心　　&nbsp;書函</font> 
         </td> 
         </tr> 
         <tr> 
         <td> 
         &nbsp; 
         </td> 
         <td> 
         &nbsp; 
         </td> 
         <td> 
         &nbsp; 
         </td> 
         <td> 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td> 
         &nbsp; 
         </td> 
         <td> 
         &nbsp; 
         </td> 

         <td> 
         <table width=70% border=0 align=right cellpadding=0 cellspacing=0> 
         <tr> 
         <td width=15% align=right valign=middle nowrap=nowrap> 
         <span class=word_small> 
         <font size=+1 face=標楷體>地&nbsp;&nbsp;&nbsp;&nbsp;址：</font>
         </span> 
         </td> 
          <td width=85% align=left valign=middle nowrap=nowrap> 
         <span class=word_small> 
         <font size=+1 face=標楷體>台北市忠孝西路一段4號17樓</font> 
         </span> 
         </td> 
         </tr> 

         <tr> 
         <td width=15% align=right valign=middle nowrap=nowrap> 
         <font size=+1 face=標楷體><span class=word_small> 
         連絡電話：
         </span> 
         </td> 
          <td width=85% align=left valign=middle nowrap=nowrap> 
         <span class=word_small> 
         02-23161288 
         </span> </font>
         </td> 
         </tr> 

         </table> 
         </td> 
         <td> 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td> 
         &nbsp; 
         </td> 
         <td> 
         &nbsp; 
         </td> 
         <td> 
         &nbsp; 
         </td> 
         <td> 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td width=5% align=right valign=middle nowrap=nowrap> 
         &nbsp; 
         </td> 
         <td width=15% align=right valign=middle nowrap=nowrap class=word_M> 
         <font size=+2 face=標楷體>受文者： </font>

         <td  width=70% align=left valign=middle nowrap=nowrap class=word_M> 
         <a name=受文者 id=受文者> 
         </a> 
         <font size=+2 face=標楷體> {@caseMaster.company.name} </font>
         </td> 
         <td  width=10% align=left valign=middle nowrap=nowrap> 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td align=right valign=middle> 
         &nbsp; 
         </td> 
         <td align=right valign=middle class=word_M> 
         &nbsp; 
         </td> 
         <td align=left valign=middle class=word_M> 
         &nbsp; 
         </td> 
         <td align=left valign=middle > 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td align=right valign=middle> 
         &nbsp; 
         </td> 
         <td align=right valign=top class=word_M> 
         <font size=+2 face=標楷體>主&nbsp;&nbsp;旨：</font> 
         </td> 
         <td align=left valign=middle class=word_M> 
         <font size=+2 face=標楷體>有關{@caseUser.applicant.nametext}(案號：{@caseMaster.caseNo})向本中心申訴&nbsp;&nbsp;貴公司乙案，惠請協助確認申請人有無先向&nbsp;&nbsp;貴公司申訴之紀錄(如有申訴紀錄，請協助確認最近一次提出申訴或回覆申訴處理結果之日期)，並登錄本中心「申訴暨評議案件管理系統(網址：https://fao.foi.org.tw)」進行回覆，請&nbsp;&nbsp;查照。 </font>
         </td> 
         <td align=left valign=middle > 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td align=right valign=middle> 
         &nbsp; 
         </td> 
         <td align=right valign=middle class=word_M> 
         &nbsp; 
         </td> 
         <td align=left valign=middle class=word_M> 
         &nbsp; 
         </td> 
         <td align=left valign=middle > 
         &nbsp; 
         </td> 
         </tr> 

         </table> 

        <br /><hr />
        <font size=''2''>此郵件由 財團法人金融消費評議中心申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。</font><br />
        <font size=''2''>發送日期:{@mailTime} </font>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (36, 56, N'   <table width=100% border=0 cellspacing=0 cellpadding=0>
          <tr> 
          <td colspan=4 align=center valign=middle class=Word_big> 
          <font size=+3 face=標楷體>財團法人金融消費評議中心　　&nbsp;通知</font> 
          </td> 
          </tr> 
          <tr> 
          <td> 
          &nbsp; 
          </td> 
          <td> 
          &nbsp; 
          </td> 
          <td> 
          &nbsp; 
          </td> 
          <td> 
          &nbsp; 
          </td> 
          </tr> 
          <tr> 
          <td> 
          &nbsp; 
          </td> 
          <td> 
          &nbsp; 
          </td> 
          <td> 
          <table width=70% border=0 align=right cellpadding=0 cellspacing=0> 
          <tr> 
          <td width=15% align=right valign=middle nowrap=nowrap> 
          <span class=word_small> 
          <font size=+1 face=標楷體>地&nbsp;&nbsp;&nbsp;&nbsp;址：</font>
          </span> 
          </td> 
           <td width=85% align=left valign=middle nowrap=nowrap> 
          <span class=word_small> 
          <font size=+1 face=標楷體>台北市忠孝西路一段4號17樓</font> 
          </span> 
          </td> 
          </tr> 
          <tr> 
          <td width=15% align=right valign=middle nowrap=nowrap> 
          <font size=+1 face=標楷體><span class=word_small> 
          連絡電話：
          </span> 
          </td> 
           <td width=85% align=left valign=middle nowrap=nowrap> 
          <span class=word_small> 
          02-23161288 
          </span> </font>
          </td> 
          </tr> 

          </table> 
          </td> 
          <td> 
          &nbsp; 
          </td> 
          </tr> 

          <tr> 
          <td> 
          &nbsp; 
          </td> 
          <td> 
          &nbsp; 
          </td> 
          <td> 
          &nbsp; 
          </td> 
          <td> 
          &nbsp; 
          </td> 
          </tr> 

          <tr> 
          <td width=5% align=right valign=middle nowrap=nowrap> 
          &nbsp; 
          </td> 
          <td width=15% align=right valign=middle nowrap=nowrap class=word_M> 
          <font size=+2 face=標楷體>受文者： </font>

          <td  width=70% align=left valign=middle nowrap=nowrap class=word_M> 
          <a name=受文者 id=受文者> 
          </a> 
          <font size=+2 face=標楷體> {caseMaster.company.name} </font>
          </td> 
          <td  width=10% align=left valign=middle nowrap=nowrap> 
          &nbsp; 
          </td> 
          </tr> 
        <tr> 
        <td align=right valign=middle> 
        &nbsp; 
        </td> 
        <td align=right valign=middle class=word_M> 
        &nbsp; 
        </td> 
        <td align=left valign=middle class=word_M> 
        &nbsp; 
        </td> 
        <td align=left valign=middle > 
        &nbsp; 
        </td> 
        </tr> 
        <tr> 
        <td align=right valign=middle> 
        &nbsp; 
        </td> 
        <td align=right valign=top class=word_M> 
        <font size=+2 face=標楷體>主&nbsp;&nbsp;旨：</font> 
        </td> 
        <td align=left valign=middle class=word_M> 
        <font size=+2 face=標楷體>有關{Applicant_Name} 君(案號：{CASE_NO})向金管會申訴　貴公司乙案，惠請查明妥處後，依說明事項辦理，請&nbsp;&nbsp;查照。</font></td> 
        <td align=left valign=middle > 
        &nbsp; 
        </td> 
        </tr> 
        <tr> 
        <td align=right valign=middle> 
        &nbsp; 
        </td> 
        <td align=right valign=middle class=word_M> 
        <font size=+2 face=標楷體>說明：</font></td> 
        <td align=left valign=middle class=word_M> 
        &nbsp; 
        </td> 
        <td align=left valign=middle > 
        &nbsp; 
        </td> 
        </tr> 
        <tr> 
        <td align=right valign=middle> 
        &nbsp;</td> 
        <td align=left valign=middle class=word_M colspan=''2''> 
        <font size=+2 face=標楷體>一、 本案前經金管會移轉&nbsp;&nbsp;貴公司處理，並副知本中心追<br />蹤控管案件辦理情形，爰請於收受申訴之日起30日<br />內將申訴處理結果以書面回覆申請人及副知本中心。</font></td> 
        <td align=left valign=middle > 
        &nbsp;</td> 
        </tr> 
        <tr> 
        <td align=right valign=middle> 
        &nbsp;</td> 
        <td align=left valign=middle class=word_M colspan=''2'' > 
        <font size=+2 face=標楷體>二、 另於收受本通知後，請即時登錄「申訴暨評議案件管<br />理系統（網址：<a href=https://fao.foi.org.tw>https://fao.foi.org.tw</a> ）更新本案<br />各項處理進度。</font></td> 
        <td align=left valign=middle > 
        &nbsp;</td> 
        </tr> 
        <tr> 
        <td align=right valign=middle> 
        &nbsp;</td> 
        <td align=right valign=middle class=word_M colspan=''2'' > 
        &nbsp;</td> 
        <td align=left valign=middle > 
        &nbsp;</td> 
        </tr> 
        <tr> 
        <td align=right valign=middle> 
        &nbsp;</td> 
        <td align=right valign=middle class=word_M colspan=''2'' > 
        &nbsp;</td> 
        <td align=left valign=middle > 
        &nbsp;</td> 
        </tr> 
        <tr> 
        <td align=right valign=middle> 
        &nbsp;</td> 
        <td align=right valign=middle class=word_M colspan=''2'' > 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <font size=+2 face=標楷體>財團法人金融消費評議中心　敬啟</font></td> 
        <td align=left valign=middle > 
        &nbsp;</td> 
        </tr>
        </table>
        <br /><hr />
        <font size=''2''>此郵件由 財團法人金融消費評議中心申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。</font><br />
        <font size=''2''>發送日期:{@mailTime} </font>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (37, 91, N' <table width=100% border=0 cellspacing=0 cellpadding=0>
         <tr> 
         <td colspan=4 align=center valign=middle class=Word_big> 
         <font size=+3 face=標楷體>財團法人金融消費評議中心　　&nbsp;通知</font> 
         </td> 
         </tr> 

         <tr> 
         <td> 
         &nbsp; 
         </td> 
         <td> 
         &nbsp; 
         </td> 
         <td> 
         &nbsp; 
         </td> 
         <td> 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td> 
         &nbsp; 
         </td> 
         <td> 
         &nbsp; 
         </td> 

         <td> 
         <table width=70% border=0 align=right cellpadding=0 cellspacing=0> 
         <tr> 
         <td width=15% align=right valign=middle nowrap=nowrap> 
         <span class=word_small> 
         <font size=+1 face=標楷體>地&nbsp;&nbsp;&nbsp;&nbsp;址：</font>
         </span> 
         </td> 
          <td width=85% align=left valign=middle nowrap=nowrap> 
         <span class=word_small> 
         <font size=+1 face=標楷體>台北市忠孝西路一段4號17樓</font> 
         </span> 
         </td> 
         </tr> 

         <tr> 
         <td width=15% align=right valign=middle nowrap=nowrap> 
         <font size=+1 face=標楷體><span class=word_small> 
         連絡電話：
         </span> 
         </td> 
          <td width=85% align=left valign=middle nowrap=nowrap> 
         <span class=word_small> 
         02-23161288 
         </span> </font>
         </td> 
         </tr> 

         </table> 
         </td> 
         <td> 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td> 
         &nbsp; 
         </td> 
         <td> 
         &nbsp; 
         </td> 
         <td> 
         &nbsp; 
         </td> 
         <td> 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td width=5% align=right valign=middle nowrap=nowrap> 
         &nbsp; 
         </td> 
         <td width=15% align=right valign=middle nowrap=nowrap class=word_M> 
         <font size=+2 face=標楷體>受文者： </font>

         <td  width=70% align=left valign=middle nowrap=nowrap class=word_M> 
         <a name=受文者 id=受文者> 
         </a> 
         <font size=+2 face=標楷體> {@caseMaster.company.name} </font>
         </td> 
         <td  width=10% align=left valign=middle nowrap=nowrap> 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td align=right valign=middle> 
         &nbsp; 
         </td> 
         <td align=right valign=middle class=word_M> 
         &nbsp; 
         </td> 
         <td align=left valign=middle class=word_M> 
         &nbsp; 
         </td> 
         <td align=left valign=middle > 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td align=right valign=middle> 
         &nbsp; 
         </td> 
         <td align=right valign=top class=word_M> 
         <font size=+2 face=標楷體>主&nbsp;&nbsp;旨：</font> 
         </td> 
         <td align=left valign=middle class=word_M> 
         <font size=+2 face=標楷體>關於{@caseUser.applicant.nametext}(案號：{@caseMaster.caseNo})向本中心申<br />訴&nbsp;&nbsp;貴公司乙案，惠請迅予查明妥處逕覆，並將申訴處理結果副知本中心，請&nbsp;&nbsp;查照。</font> 
         </td> 
         <td align=left valign=middle > 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td align=right valign=middle> 
         &nbsp; 
         </td> 
         <td align=right valign=middle class=word_M> 
         &nbsp; 
         </td> 
         <td align=left valign=middle class=word_M> 
         &nbsp; 
         </td> 
         <td align=left valign=middle > 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td align=right valign=middle> 
         &nbsp; 
         </td> 
         <td align=right valign=middle class=word_M> 
         <font size=+2 face=標楷體>說&nbsp;&nbsp;明： </font>
         </td> 
         <td align=left valign=middle class=word_M> 
         &nbsp; 
         </td> 
         <td align=left valign=middle > 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td align=right valign=middle> 
         &nbsp; 
         </td> 
         <td align=right valign=top class=word_M> 
         <font size=+2 face=標楷體>一、</font>
         </td> 
         <td align=left valign=middle class=word_M> 
         <font size=+2 face=標楷體>依據金融消費者保護法第13條第2項規定辦理。</font>
         </td> 
         <td align=left valign=middle > 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td align=right valign=middle> 
         &nbsp; 
         </td> 
         <td align=right valign=top class=word_M> 
         <font size=+2 face=標楷體>二、 </font>
         </td> 
         <td align=left valign=middle class=word_M> 
         <font size=+2 face=標楷體>有關{@caseUser.applicant.nametext}向本中心申訴&nbsp;&nbsp;貴公司乙案，請儘速查明妥處，應於30日 <br />內儘速查明妥處，並將申訴處理結果以書面回覆申請<br />人及副知本中心</font>
         </td> 
         <td align=left valign=middle > 
         &nbsp; 
         </td> 
         </tr> 

         <tr> 
         <td align=right valign=middle> 
         &nbsp; 
         </td> 
         <td align=right valign=top class=word_M> 
         <font size=+2 face=標楷體>三、 </font>
         </td> 
         <td align=left valign=middle class=word_M> 
         <font size=+2 face=標楷體>另於收受本通知後，請即時登錄「申訴暨評議案件管<br />理系統（網址：<a href=https://fao.foi.org.tw>https://fao.foi.org.tw</a> ）」更新本案<br />各項處理進度。</font>
         </td> 
         <td align=left valign=middle > 
         &nbsp; 
         </td> 
         </tr> 

         </table> 

        <br /><hr />
        <font size=''2''>此郵件由 財團法人金融消費評議中心申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。</font><br />
        <font size=''2''>發送日期:{@mailTime} </font>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (38, 92, N'親愛的 {@caseMaster.companyOwner.name} 您好:<br>
本系統於 {@mailDate} 有一件案件 備註訊息 給   貴公司。<br>
案件案號：{@caseMaster.caseNo}<br>
備註內容：{@mailMemo} <br />請盡快受理此案件以免案件處理延遲，謝謝您的配合。<br><br>
此郵件由 金融消費者保護法爭議處理機構申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。
<br><br>此郵件由 金融消費者保護法爭議處理機構申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (39, 93, N'您好！民眾{@caseUser.applicant.nametext}君於{@mailDate}透過本中心提出「第{@caseMaster.caseNo}號有關{@caseMaster.dispute_kind.name}之諮詢問題」，案件已登載於本中心系統，請承辦人員登錄本中心「申訴暨評議案件管理系統（ 網址：https://fao.foi.org.tw ）-案件維護-電話進件(查詢)」收件處理，謝謝您！
<br><br>此郵件由 金融消費者保護法爭議處理機構申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (40, 94, N'您好！本中心於{@mailDate}接獲消費者{@caseUser.applicant.nametext}君來電表示與「{@caseMaster.company.name}」間有債務協商問題，第{@caseMaster.caseNo}已登載於本中心系統，請承辦人員登錄本中心「申訴暨評議案件管理系統（ 網址：https://fao.foi.org.tw ）-案件維護-電話進件(查詢)」收件處理，謝謝您！
<br><br>此郵件由 金融消費者保護法爭議處理機構申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (41, 95, N'您好！本中心於{@mailDate}接獲消費者{@caseUser.applicant.nametext}君來電表示與「{@caseMaster.company.name}」間有債務協商問題，第{@caseMaster.caseNo}案件已登載於本中心系統，請承辦人員登錄本中心「申訴暨評議案件管理系統（網址：https://fao.foi.org.tw ）-案件維護-電話進件(查詢)」收件處理，謝謝您！
<br><br>此郵件由 金融消費者保護法爭議處理機構申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (42, 96, N'親愛的 {@caseMaster.company.name} 您好:<br>
本系統於 {@mailTime}有一件案件移送給   貴公司。<br>
案件案號：{@caseMaster.caseNo} + "<br>
請盡快受理此案件以免案件處理延遲，謝謝您的配合。<br><br>
<hr />
<font size=''2''>此郵件由 財團法人金融消費評議中心申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。</font>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (43, 97, N'親愛的 {caseMaster.companyOwner.name} 您好:<br>
本系統於 {@mailTime}有一件案件備註訊息給   貴單位。<br>
案件案號：{@caseMaster.caseNo}<br>
備註內容：{@mailMemo} <br /><br>
此郵件由 金融消費者保護法爭議處理機構申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (44, 98, N'親愛的{@caseMaster.centerOwner.name}您好:<br>
本系統於{@mailTime}有一件案件備註訊息 給   貴公司。<br>
案件案號：{@caseMaster.caseNo}<br>
備註內容：{@mailMemo}<br /><br>
此郵件由 金融消費者保護法爭議處理機構申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (45, 99, N'<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td colspan="4" align="center" valign="middle" class="Word_big">
<font size="+3" face="標楷體">財團法人金融消費評議中心　　&nbsp;通知</font>
</td>
</tr>

<tr>
<td>
&nbsp;
</td>
<td>
&nbsp;
</td>
<td>
&nbsp;
</td>
<td>
&nbsp;
</td>
</tr>

<tr>
<td>
&nbsp;
</td>
<td>
&nbsp;
</td>

<td>
<table width="70%" border="0" align="right" cellpadding="0" cellspacing="0">
<tr>
<td width="15%" align="right" valign="middle" nowrap="nowrap">
<span class="word_small">
<font size="+1" face="標楷體">地&nbsp;&nbsp;&nbsp;&nbsp;址：</font>
</span>
</td>
 <td width="85%" align="left" valign="middle" nowrap="nowrap">
<span class="word_small">
<font size="+1" face="標楷體">台北市忠孝西路一段4號17樓</font>
</span>
</td>
</tr>

<tr>
<td width="15%" align="right" valign="middle" nowrap="nowrap">
<font size="+1" face="標楷體"><span class="word_small">
連絡電話：
</span>
</td>
 <td width="85%" align="left" valign="middle" nowrap="nowrap">
<span class="word_small">
02-23161288
</span> </font>
</td>
</tr>

</table>
</td>
<td>
&nbsp;
</td>
</tr>

<tr>
<td>
&nbsp;
</td>
<td>
&nbsp;
</td>
<td>
&nbsp;
</td>
<td>
&nbsp;
</td>
</tr>

<tr>
<td width="5%" align="right" valign="middle" nowrap="nowrap">
&nbsp;
</td>
<td width="15%" align="right" valign="middle" nowrap="nowrap" class="word_M">
<font size="+2" face="標楷體">受文者： </font>

<td  width="70%" align="left" valign="middle" nowrap="nowrap" class="word_M">
<a name="受文者" id="受文者">
</a>
<font size="+2" face="標楷體"> {@caseMaster.company.name} </font>
</td>
<td  width="10%" align="left" valign="middle" nowrap="nowrap">
&nbsp;
</td>
</tr>

<tr>
<td align="right" valign="middle">
&nbsp;
</td>
<td align="right" valign="middle" class="word_M">
&nbsp;
</td>
<td align="left" valign="middle" class="word_M">
&nbsp;
</td>
<td align="left" valign="middle" >
&nbsp;
</td>
</tr>

<tr>
<td align="right" valign="middle">
&nbsp;
</td>
<td align="right" valign="top" class="word_M">
<font size="+2" face="標楷體">主&nbsp;&nbsp;旨：</font>
</td>
<td align="left" valign="middle" class="word_M">
<font size="+2" face="標楷體">關於{@caseUser.applicant.nametext}(案號：{@caseMaster.caseNo})向本中心申<br />訴&nbsp;&nbsp;貴公司乙案，惠請迅予查明妥處逕覆，並將申訴處理結果副知本中心，請&nbsp;&nbsp;查照。</font>
</td>
<td align="left" valign="middle" >
&nbsp;
</td>
</tr>

<tr>
<td align="right" valign="middle">
&nbsp;
</td>
<td align="right" valign="middle" class="word_M">
&nbsp;
</td>
<td align="left" valign="middle" class="word_M">
&nbsp;
</td>
<td align="left" valign="middle" >
&nbsp;
</td>
</tr>

<tr>
<td align="right" valign="middle">
&nbsp;
</td>
<td align="right" valign="middle" class="word_M">
<font size="+2" face="標楷體">說&nbsp;&nbsp;明： </font>
</td>
<td align="left" valign="middle" class="word_M">
&nbsp;
</td>
<td align="left" valign="middle" >
&nbsp;
</td>
</tr>

<tr>
<td align="right" valign="middle">
&nbsp;
</td>
<td align="right" valign="top" class="word_M">
<font size="+2" face="標楷體">一、</font>
</td>
<td align="left" valign="middle" class="word_M">
<font size="+2" face="標楷體">依{@caseUser.applicant.nametext}君{@西元年}年{@月份}月{@日}日申訴事由辦理。</font>
</td>
<td align="left" valign="middle" >
&nbsp;
</td>
</tr>

<tr>
<td align="right" valign="middle">
&nbsp;
</td>
<td align="right" valign="top" class="word_M">
<font size="+2" face="標楷體">二、 </font>
</td>
<td align="left" valign="middle" class="word_M">
<font size="+2" face="標楷體">有關旨揭申訴案件，請儘速於30日內查明妥處，並將申訴處理結果以書面回覆申請人及副知本中心。</font>
</td>
<td align="left" valign="middle" >
&nbsp;
</td>
</tr>

<tr>
<td align="right" valign="middle">
&nbsp;
</td>
<td align="right" valign="top" class="word_M">
<font size="+2" face="標楷體">三、 </font>
</td>
<td align="left" valign="middle" class="word_M">
<font size="+2" face="標楷體">另於收受本通知後，請即時登錄「申訴暨評議案件管理系統（網址：（網址：<a href="https://fao.foi.org.tw">https://fao.foi.org.tw</a> ）」更新本案各項處理進度。</font>
</td>
<td align="left" valign="middle" >
&nbsp;
</td>
</tr>

</table>

<br /><hr />
<font size=''2''>此郵件由 財團法人金融消費評議中心申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。</font><br />
<font size=''2''>發送日期:{@mailTime}</font>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (46, 100, N'您好：<br /> 
本系統於 {@mailTime+ "有一件案件備註訊息給 貴單位。<br />
案件案號：{@caseMaster.caseNo}<br />
備註內容：{@mailMemo}<br />
<br /><br />此郵件由 金融消費者保護法爭議處理機構申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (47, 101, N'您好：<br /> 
本系統於 {@mailTime+ "有一件案件備註訊息給 貴單位。<br />
案件案號：{@caseMaster.caseNo}<br />
備註內容：{@mailMemo}<br />
<br /><br />此郵件由 金融消費者保護法爭議處理機構申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (48, 102, N'評議系統金融服務業修改基本資料通知:<br><br>
公司名稱：{@caseMaster.company.name}<br>
修改者：{@loginUser.Name}<br><br>
此郵件由 金融消費者保護法爭議處理機構申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (49, 103, N'<p>
{@caseMaster.caseNo} 預審判斷書各委員回覆狀態如下<br />
</p>
<table>
    <tr>
        <th>委員姓名</th>
        <th>回覆狀態</th>
        <th>案件送出時間</th>
        <th>委員回覆時間</th>
    </tr>
    <tr>
        <td>{@caseExamminer.name}</td>
        <td>{@caseExamminer.examStatus.name}</td>
        <td>{@caseExamminer.leasteMailTime}</td>
        <td>{@caseExamminer.replyDate}</td>
    </tr>
    <tr>
        <td>{@caseExamminer.name}</td>
        <td>{@caseExamminer.examStatus.name}</td>
        <td>{@caseExamminer.leasteMailTime}</td>
        <td>{@caseExamminer.replyDate}</td>
    </tr>
    <tr>
        <td>{@caseExamminer.name}</td>
        <td>{@caseExamminer.examStatus.name}</td>
        <td>{@caseExamminer.leasteMailTime}</td>
        <td>{@caseExamminer.replyDate}</td>
    </tr>
</table>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (50, 104, N'<p>委員 鈞鑒：<br/>
  一、	有關{@caseUser.applicant.nametext}與{@caseMaster.company.name}+ "間「{@caseMaster.dispute_kind.name}」爭議事件（案號：{@caseMaster.caseNo}），預審資料已上傳本中心案件管理系統（網址 https://fao.foi.org.tw ），請委員登入該系統之「預審資料」中檢閱。<br/>
  二、	本件預審委員為：{@case_examminer.nameText}。<br/>
  三、	惠請委員於5日內回覆「預審判斷書」，回覆方式逐案點選「查看」，並於填列「判斷結論」及「理由」後，點選「送出」即可。<br/>
  {@mailMemo} </b><br/>
  如有任隨時與本件承辦人{@caseMaster.centerOwner.name}先生 / 小姐（{@caseMaster.centerOwner.tel}）聯繫。</p>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (51, 105, N'您好:<br>
本中心案號:{@caseMaster.caseNo}。<br>
申請人補正相關文件資料，本中心已將上開文件資料上傳至「財團法人金融消費評議中心申訴暨評議案件管理系統」(下稱案管系統)。<br>
請 貴公司自行上案管系統-「案關文號」查詢及下載。<br>

<@多筆>
評字第案號：{@caseMaster.caseNo}<br>
<hr />
<font size=''2''>此郵件由 財團法人金融消費評議中心申訴暨評議案件管理系統 發送，請勿直接回覆此郵件。</font>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (52, 106, N'親愛的 {@caseMaster.centerOwner.name} 您好:<br>
您在「系統」的使用者資料如下：<br><br>
<@由管理員設定要提供的資料 ShowMode == "All_ID">您的帳號：{@LoginID}<br><br>
<@由管理員設定要提供的資料 ShowMode == "All_PW"> ? "您的密碼：{@password}<br><br>
請您重新登入去修改您的密碼，以確保資料安全！<br>
謝謝您使用本系統帳號密碼查詢功能，如有任何問題請來電或E-mail通知。<br><br>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (53, 107, N'親愛的 管理者 您好
帳號{@loginid} ,於 {@mailTime}已連續登入錯誤次數達{@錯誤次數}次！', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (54, 108, N'以下為停用帳號清單：
<Table><tr><th>帳號</th><th>使用者名稱</th></tr>
<tr><td>{@loginid}</td></tr>
<tr><td>{@caseMaster.centerOwner.name}</td></tr>
</Table>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (55, 109, N'您已於180天未登入系統，已將您的帳號停用，請洽系統管理員。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (56, 110, N'評議系統檢核碼:{@ConfirmNo}已於" + {@mailTimeyyyy/MM/dd HH:MM}送出<br/>
你須於10分鐘內登錄檢核碼，檢核通過後才能使用系統。', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (57, 111, N'親愛的 {@caseMaster.centerOwner.name} 您好:<br>
您在「系統」的使用者資料如下：<br><br>
您的帳號：{@txtLoginID}br>
您的密碼：{@password}<br><br>
請注意！ 我們將密碼重置為({@password})請您重新登入去修改您的密碼，以確保資料安全！<br>
謝謝您使用本系統帳號密碼查詢功能，如有任何問題請來電或E-mail通知。<br><br>', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (58, 112, N'【金融消費評議中心】您好，關於您對{0}提出之申訴，本中心已於{1}年{2}月{3}日移交該公司處理。提醒您，依金保法規定，該公司應於三十日內回覆您申訴處理結果，請耐心等候。相關規定請詳本中心官網https://www.foi.org.tw', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (59, 113, N'【金融消費評議中心】您好，您於{0}年{1}月{2}日提出之申訴({3})，本中心於{4}年{5}月{6}日收到{7}通知已回覆您處理結果。提醒您，依金保法第13條第2項規定，倘您不接受該公司處理結果，可於60天法定期限內，向本中心申請評議https://www.foi.org.tw', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (72, 129, N'【金融消費評議中心】您好，關於您對{0}提出之申訴，本中心已於{1}年{2}月{3}日移交該公司處理。提醒您，依金保法規定，該公司應於三十日內回覆您申訴處理結果，請耐心等候。相關規定請詳本中心官網https://www.foi.org.tw', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (73, 130, N'【金融消費評議中心】您好，您於{0}年{1}月{2}日提出之申訴({3})，本中心於{4}年{5}月{6}日收到{7}通知已回覆您處理結果。提醒您，依金保法第13條第2項規定，倘您不接受該公司處理結果，可於60天法定期限內，向本中心申請評議https://www.foi.org.tw', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (74, 131, N'【金融消費評議中心】您好，您於金融監督管理委員會保險局提出之申訴({0})，本中心於{1}年{2}月{3}日收到{4}通知已回覆您處理結果。提醒您，依金保法第13條第2項規定，倘您不接受該公司處理結果，可於60天法定期限內，向本中心申請評議https://www.foi.org.tw', 0)
INSERT [html_content] ([id], [html_doc_id], [content], [order_no]) VALUES (75, 132, N'{@申請人} 您好:
您於{@西元年-月-日}至本中心進行諮詢作業,
為提昇本中心之服務品質,希望您能填寫此滿意度問卷,讓本中心更加進步。
網址:{@問卷條寫網址}
財團法人金融消費評議中心 敬啟', 0)
SET IDENTITY_INSERT [html_content] OFF
GO
SET IDENTITY_INSERT [codedetail] ON 

INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1282, NULL, NULL, NULL, NULL, N'root', N'file_path', N'檔案/資料夾路徑', 0, N'(未使用)', N'000', N'動作', N'主路徑', N'檔案有效時間(天)', N'移動目標路徑', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1283, NULL, NULL, NULL, NULL, N'file_path', N'temp_folder', N'檔案暫存路徑', 1, N'(未使用)', N'001', N'del', N'\\ez-admin\\temp\\', N'180', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1284, NULL, NULL, NULL, NULL, N'file_path', N'log_archive_folder', N'日誌封存路徑', 1, N'(未使用)', N'002', N'del', N'C:\\eladmin\\logsarchived', N'180', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1285, NULL, NULL, NULL, NULL, N'file_path', N'test_single_file', N'單檔路徑測試', 1, N'(未使用)', N'003', N'del', N'C:\\eladmin\\logs\\ttytt.txt', N'180', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1287, NULL, NULL, NULL, NULL, N'sys.func', N'log_pw', N'(dev用)log隨機密碼、檢核碼', 1, N'於後端terminal、日誌紀錄隨機產生的密碼、檢核碼', N'007', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1294, NULL, NULL, NULL, NULL, N'sys.func', N'expire_date', N'帳號時效(天)', 1, N'(未使用)', N'001', N'180', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1295, NULL, NULL, NULL, NULL, N'sys.func', N'auth_failed_cnt', N'密碼驗證失敗次數(次)', 1, N'(未使用)', N'002', N'5', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1296, NULL, NULL, NULL, NULL, N'sys.func', N'lock_account_remains', N'鎖定帳號時間(分)', 1, N'(未使用)', N'003', N'15', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1297, NULL, NULL, NULL, NULL, N'sys.func', N'keep_prev_pw', N'與前N次的密碼相同(次)', 1, N'(未使用)', N'004', N'3', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1299, NULL, NULL, NULL, NULL, N'sys.func', N'temp_pw_remains', N'臨時密碼有效(分)', 1, N'(未使用)', N'006', N'10', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1300, NULL, NULL, NULL, NULL, N'root', N'sys.func', N'系統參數', 0, N'(未使用)', N'000', N'參數1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1303, NULL, NULL, NULL, NULL, N'root', N'err_flag', N'異常代號定義', 0, N'(未使用)', N'000', N'對應訊息', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1304, NULL, NULL, NULL, NULL, N'err_flag', N'e1', N'帳號暫時鎖定', 1, N'(未使用)', N'002', N'連續錯誤已達%s次，請隔%s後再作登入', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1306, NULL, NULL, NULL, NULL, N'err_flag', N'e2', N'帳號永久鎖定', 1, N'(未使用)', N'003', N'帳號已鎖定，請洽系統管理者', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1307, NULL, NULL, NULL, NULL, N'err_flag', N'e3', N'帳號閒置', 1, N'(未使用)', N'004', N'帳號因連續%s天未使用而鎖定，請洽系統管理者', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1309, NULL, NULL, NULL, NULL, N'err_flag', N'0', N'無異常', 1, N'(未使用)', N'001', N'無異常', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1310, NULL, NULL, NULL, NULL, N'err_flag', N'e4', N'登入資訊錯誤', 1, N'(未使用)', N'005', N'使用者名稱或密碼不正確', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1312, NULL, NULL, NULL, NULL, N'root', N'root', N'root', 1, N'根目錄', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1313, NULL, NULL, NULL, NULL, N'root', N'sys.road', N'路', 1, N'路', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1314, NULL, NULL, NULL, NULL, N'root', N'sys.district', N'區處', 1, N'區處', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', 1313, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1315, NULL, NULL, NULL, NULL, N'root', N'sys.city', N'縣市', 1, N'縣市', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', 1314, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1316, NULL, NULL, NULL, NULL, N'sys.city', N'A', N'臺北市', 1, N'臺北市', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1317, NULL, NULL, NULL, NULL, N'sys.city', N'B', N'臺中市', 1, N'臺中市', N'002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1318, NULL, NULL, NULL, NULL, N'sys.city', N'C', N'基隆市', 1, N'基隆市', N'003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1319, NULL, NULL, NULL, NULL, N'sys.district', N'A001', N'中正區', 1, N'中正區', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1316)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1320, NULL, NULL, NULL, NULL, N'sys.district', N'A002', N'大同區', 1, N'大同區', N'002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1316)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1321, NULL, NULL, NULL, NULL, N'sys.district', N'B001', N'中區', 1, N'中區', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1317)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1322, NULL, NULL, NULL, NULL, N'sys.district', N'B002', N'東區', 1, N'東區', N'002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1317)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1323, NULL, NULL, NULL, NULL, N'sys.district', N'C001', N'仁愛區', 1, N'仁愛區', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1318)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1324, NULL, NULL, NULL, NULL, N'sys.district', N'C002', N'信義區', 1, N'信義區', N'002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1318)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1325, NULL, NULL, NULL, NULL, N'sys.road', N'A001001', N'八德路一段', 1, N'八德路一段', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1319)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1326, NULL, NULL, NULL, NULL, N'sys.road', N'A001002', N'三元街', 1, N'三元街', N'002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1319)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1327, NULL, NULL, NULL, NULL, N'sys.road', N'A001003', N'大埔街', 1, N'大埔街', N'003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1319)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1328, NULL, NULL, NULL, NULL, N'sys.road', N'A002004', N'大龍街', 1, N'大龍街', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1320)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1329, NULL, NULL, NULL, NULL, N'sys.road', N'A002005', N'五原路', 1, N'五原路', N'002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1320)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1330, NULL, NULL, NULL, NULL, N'sys.road', N'B001006', N'三民路二段', 1, N'三民路二段', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1321)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1331, NULL, NULL, NULL, NULL, N'sys.road', N'B001007', N'三民路二段第二市場', 1, N'三民路二段第二市場', N'002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1321)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1332, NULL, NULL, NULL, NULL, N'sys.road', N'B002008', N'一心北街', 1, N'一心北街', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1322)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1333, NULL, NULL, NULL, NULL, N'sys.road', N'B002009', N'一心西街', 1, N'一心西街', N'002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1322)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1334, NULL, NULL, NULL, NULL, N'sys.road', N'C001010', N'仁一路', 1, N'仁一路', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1323)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1335, NULL, NULL, NULL, NULL, N'sys.road', N'C001011', N'仁二路', 1, N'仁二路', N'002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1323)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1336, NULL, NULL, NULL, NULL, N'sys.road', N'C002012', N'仁一路', 1, N'仁一路', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1324)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1337, NULL, NULL, NULL, NULL, N'sys.road', N'C002013', N'中興路', 1, N'中興路', N'002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1324)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1338, NULL, NULL, NULL, NULL, N'root', N'usr_op', N'對應操作', 0, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1339, NULL, NULL, NULL, NULL, N'usr_op', N'op1', N'密碼輸入錯誤', 1, N'(未使用)', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1340, NULL, NULL, NULL, NULL, N'usr_op', N'op2', N'發行臨時密碼', 1, N'(未使用)', N'002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1341, NULL, NULL, NULL, NULL, N'usr_op', N'op3', N'變更密碼', 1, N'(未使用)', N'003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1342, NULL, NULL, NULL, NULL, N'usr_op', N'op4', N'發行檢核碼', 1, N'(未使用)', N'004', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1343, NULL, NULL, NULL, NULL, N'err_flag', N'e5', N'密碼與前N次相同', 1, N'(未使用)', N'006', N'新密碼不能與前%s次使用過的相同', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1344, NULL, NULL, NULL, NULL, N'sys.func', N'use_two_factor_auth', N'兩段驗證檢核碼有效時間(分)', 1, N'(未使用)', N'008', N'10', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1345, NULL, NULL, NULL, NULL, N'sys.func', N'pw_match_regex', N'密碼複雜度', 1, N'密碼需包含數字、大寫英文、小寫英文且不少於8個字', N'009', N'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1350, NULL, NULL, NULL, NULL, N'sys.func', N'force_change_pw', N'強制換密碼區間(天)', 1, N'(未使用)', N'010', N'90', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1353, NULL, NULL, NULL, NULL, N'sys.func', N'auto_logout', N'閒置時效(分)', 1, N'(未使用)', N'011', N'10', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1354, NULL, NULL, NULL, NULL, N'sys.func', N'failed_resend_remains', N'失敗信件重寄期限(天)', 1, N'(未使用)', N'012', N'14', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1355, NULL, NULL, NULL, NULL, N'sys.func', N'mailserver_test', N'電子信件伺服器(測試)', 1, N'property1-4依序為"信件伺服器網址", "port", "帳號", "密碼(或api key)"', N'013', N'smtp.gmail.com', N'587', N'andy.song@ezcore.tw', N'fhxkqofbfvaquxzz', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1356, NULL, NULL, NULL, NULL, N'root', N'email_template', N'系統寄信內文範本', 1, N'(未使用)', N'000', N'subject', N'contents', N'to', N'cc', N'bcc', N'attachments', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1357, NULL, NULL, NULL, NULL, N'email_template', N'send_verify_code', N'寄出檢核碼', 1, N'(未使用)', N'001', N'財團法人金融消費評議中心', N'歡迎使用本系統:<br/>您的登入檢核碼為%s<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1358, NULL, NULL, NULL, NULL, N'email_template', N'send_temp_pw', N'寄出臨時密碼', 1, N'(未使用)', N'002', N'財團法人金融消費評議中心', N'歡迎使用本系統:<br/>您的臨時密碼為%s<br/>請於有效時間內於系統登入頁進行登入<br/>提醒您，若您有想起密碼仍可使用原密碼進行登入<br/><br/>*本信件為系統自動寄出，請勿回信', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1359, NULL, NULL, NULL, NULL, N'sys.func', N'url_shorten_rule', N'縮網址功能', 1, N'參數1: 縮址規則, 參數2: 效期(天)', N'014', N'ABCDEFGhijklmn12345OPQRSTUvwxyzabcdefgHIJKLMN67890opqrstuVWXYZ', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1360, NULL, NULL, NULL, NULL, N'sys.func', N'domain', N'本站網域名稱', 1, N'(未使用)', N'015', N'http://localhost:8014', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1361, NULL, NULL, NULL, NULL, N'sys.actioncode', N'10010', N'新增顧問', 1, N'(未使用)', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1362, NULL, NULL, NULL, NULL, N'sys.actioncode', N'10020', N'顧問回函', 1, N'(未使用)', N'002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1363, NULL, NULL, NULL, NULL, N'sys.actioncode', N'10030', N'指派承辦', 1, N'(未使用)', N'003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1364, NULL, NULL, NULL, NULL, N'root', N'sys.pgcode', N'程式代碼', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1365, NULL, NULL, NULL, NULL, N'sys.pgcode', N'web1000', N'com.ezcore.foi.webservicecontrol.service.impl', 1, N'web1000系列位置', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1366, NULL, NULL, NULL, NULL, N'sys.pgcode', N'web1001', N'WebServiceImpl01', 1, N'(未使用)', N'001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1367, NULL, NULL, NULL, NULL, N'sys.pgcode', N'web1002', N'WebServiceImpl02', 1, N'(未使用)', N'002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1368, NULL, NULL, NULL, NULL, N'sys.pgcode', N'web1003', N'WebServiceImpl03', 1, N'(未使用)', N'003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1369, NULL, NULL, NULL, NULL, N'sys.pgcode', N'web1004', N'WebServiceImpl04', 1, N'(未使用)', N'004', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1370, NULL, NULL, NULL, NULL, N'root', N'sys.actioncode', N'評議動作代碼', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1371, NULL, NULL, NULL, NULL, N'sys.actioncode', N'10050', N'承辦轉移', 1, N'(未使用)', N'004', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1372, NULL, NULL, CAST(N'2023-06-02T13:17:36.770' AS DateTime), N'admin', N'sys.func', N'use_captcha', N'使用人機驗證', 0, N'(未使用)', N'016', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1373, NULL, NULL, NULL, NULL, N'root', N'form_template', N'報表名稱', 1, N'(未使用)', N'000', N'樣板存放路徑', N'資料起始點1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'資料sql語法', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1374, NULL, NULL, NULL, NULL, N'form_template', N'test1001', N'每月系統日誌紀錄統計', 1, N'(未使用)', N'001', N'\\ez-admin\\storage\\form\\template\\test1001_template.xlsx', N'1,5,1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'select 
	res.date as 日期, 
	isnull(sum(res.info), 0) as 正常, 
	isnull(sum(res.err400), 0) as 一般異常, 
	isnull(sum(res.err901), 0) as 登入異常, 
	isnull(sum(res.err950), 0) as 權限異常, 
	isnull(sum(res.err999), 0) as 主機異常
from (
	select
		src.date as date, 
		(select count(src.type) where src.type = ''INFO'') as info, 
		(select count(src.type) where src.type = ''ERROR_400'') as err400, 
		(select count(src.type) where src.type in(''ERROR_901'', ''ERROR_903'')) as err901, 
		(select count(src.type) where src.type = ''ERROR_950'') as err950, 
		(select count(src.type) where src.type = ''ERROR_999'') as err999
	from (
		select convert(varchar(10), create_time, 111) as date, log_type as type 
		from sys_log 
		where create_time >= ''@beginDate'' 
		and create_time <= ''@endDate''
	) as src
	group by src.date, src.type
) as res
group by res.date;', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1375, NULL, NULL, NULL, NULL, N'email_template', N'msg12001', N'系統執行紀錄統計表', 1, N'(未使用)', N'003', N'本月(@beginTitle - @endTitle)系統執行紀錄統計表', N'@user您好 :<br/>附件為本月(@beginTitle - @endTitle)系統執行紀錄統計表，請查收<br/><br/>* 本信件為系統自動寄出，請勿回信', N'andy.song@ezcore.tw', N'(未使用)', N'(未使用)', N'test1001', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1376, NULL, NULL, NULL, NULL, N'memberType', N'exam', N'審查委員', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1377, NULL, NULL, NULL, NULL, N'memberType', N'consultant', N'諮詢顧問', 1, N'(未使用)', N'2', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1378, NULL, NULL, NULL, NULL, N'root', N'memberType', N'身分別(委員/顧問)', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1379, NULL, NULL, NULL, NULL, N'root', N'domain', N'專業領域', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1380, NULL, NULL, NULL, NULL, N'domain', N'CC1001', N'保險', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1381, NULL, NULL, NULL, NULL, N'domain', N'CC1002', N'銀行', 1, N'(未使用)', N'2', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1382, NULL, NULL, NULL, NULL, N'domain', N'CC1003', N'證券', 1, N'(未使用)', N'3', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1383, NULL, NULL, CAST(N'2023-07-11T15:24:49.970' AS DateTime), N'admin', N'session', N'2', N'2', 1, N'(未使用)', N'002', N'2015/01/01', N'2017/12/31', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1386, NULL, NULL, NULL, NULL, N'root', N'session', N'屆次', 1, N'(未使用)', N'000', N'開始日期', N'結束日期', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1421, NULL, NULL, NULL, NULL, N'root', N'company_state', N'爭議對象.狀態', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1422, NULL, NULL, NULL, NULL, N'company_state', N'create', N'未啟用', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1423, NULL, NULL, NULL, NULL, N'company_state', N'enabled', N'啟用', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1424, NULL, NULL, NULL, NULL, N'company_state', N'close', N'停業', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1425, NULL, NULL, NULL, NULL, N'company_state', N'combie', N'合併', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1426, NULL, NULL, NULL, NULL, N'root', N'role.bank', N'金融業者群組', 1, N'(未使用)', N'000', N'22', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1427, NULL, NULL, NULL, NULL, N'role.bank', N'adminGroup', N'管理者群組', 1, N'(未使用)', N'000', N'23', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1428, NULL, NULL, NULL, NULL, N'root', N'WEB090301', N'爭議對象設定', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1429, NULL, NULL, NULL, NULL, N'WEB090301', N'defaultPWD', N'預設密碼', 1, N'(未使用)', N'000', N'1qaz@WSX', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1430, NULL, NULL, NULL, NULL, N'WEB090301', N'company_code.seq', N'公司流水碼', 1, N'(未使用)', N'000', N'10001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1431, NULL, NULL, NULL, NULL, N'root', N'contract_type', N'契約數.欄位類型', 1, N'(未使用)', N'000', N'欄位代碼', N'(保發)壽險.EXCEL對應資料欄', N'(保發)產險-健康險.EXCEL對應資料欄', N'(保發)產險-傷害險.EXCEL對應資料欄', N'(保發)產險-無關鍵字.EXCEL對應資料欄', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1432, NULL, NULL, NULL, NULL, N'contract_type', N'保險業.A', N'團體保險期末總人數(A)', 1, N'(未使用)', N'002', N'A', N'B', N'D', N'D', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1433, NULL, NULL, NULL, NULL, N'contract_type', N'保險業.B', N'人身保險期末總件數(B)', 1, N'(未使用)', N'003', N'B', N'C', N'E', N'0', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1434, NULL, NULL, NULL, NULL, N'contract_type', N'保險業.C', N'期末有效件(人)數(C=A+B)', 1, N'(未使用)', N'004', N'C', N'D', N'CALC', N'CALC', N'CALC', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1435, NULL, NULL, NULL, NULL, N'contract_type', N'保險業.D', N'財產保險簽單件數(D)', 1, N'(未使用)', N'005', N'D', N'0', N'0', N'0', N'K', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
GO
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1436, NULL, NULL, NULL, NULL, N'contract_type', N'保險業.E', N'學生保險期末總人數(E)', 1, N'(未使用)', N'006', N'E', N'0', N'0', N'0', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1437, NULL, NULL, NULL, NULL, N'contract_type', N'保險業.F', N'當期理賠總件數(F)', 1, N'(未使用)', N'007', N'F', N'0', N'0', N'0', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1438, NULL, NULL, NULL, NULL, N'contract_type', N'保險業.G', N'學保理賠件數(G)', 1, N'(未使用)', N'008', N'G', N'0', N'0', N'0', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1439, NULL, NULL, NULL, NULL, N'contract_type', N'保險業.CODE', N'公司別', 1, N'(未使用)', N'001', N'COMPANY_CODE', N'A', N'A', N'A', N'A', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1440, NULL, NULL, NULL, NULL, N'contract_type.保發公司別代碼', N'01', N'臺銀人壽', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1441, NULL, NULL, NULL, NULL, N'root', N'contract_type.保發公司別代碼', N'保發公司別代碼', 1, N'(未使用)', N'000', N'案管系統.Company.id', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1442, NULL, NULL, NULL, NULL, N'root', N'industry', N'產業別', 1, NULL, NULL, N'必選項', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1443, NULL, NULL, NULL, NULL, N'industry', N'A', N'銀行業', 1, NULL, NULL, N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1444, NULL, NULL, NULL, NULL, N'industry', N'B', N'保險業', 1, NULL, NULL, N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1445, NULL, NULL, NULL, NULL, N'industry', N'C', N'證券期貨業', 1, NULL, NULL, N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1446, NULL, NULL, NULL, NULL, N'industry', N'D', N'電子票證業', 1, NULL, NULL, N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1447, NULL, NULL, NULL, NULL, N'industry', N'E', N'其他', 1, NULL, NULL, N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1448, NULL, NULL, NULL, NULL, N'industry', N'F', N'其他金融服務業', 1, NULL, NULL, N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1449, NULL, NULL, NULL, NULL, N'industry', N'G', N'金融科技業', 1, NULL, NULL, N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1450, NULL, NULL, NULL, NULL, N'root', N'industry.A', N'銀行業.公司別', 1, NULL, NULL, N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1451, NULL, NULL, NULL, NULL, N'root', N'industry.B', N'保險業.公司別', 1, NULL, NULL, N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1452, NULL, NULL, NULL, NULL, N'root', N'industry.C', N'證券期貨業公司別', 1, NULL, NULL, N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1453, NULL, NULL, NULL, NULL, N'root', N'industry.D', N'電子票證業.公司別', 1, NULL, NULL, N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1454, NULL, NULL, NULL, NULL, N'root', N'industry.E', N'其他.公司別', 1, NULL, NULL, N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1455, NULL, NULL, NULL, NULL, N'root', N'industry.F', N'其他金融服務業.公司別', 1, NULL, NULL, N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1456, NULL, NULL, NULL, NULL, N'root', N'industry.G', N'金融科技業.公司別', 1, NULL, NULL, N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1442)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1457, NULL, NULL, NULL, NULL, N'industry.A', N'01', N'本國銀行', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1450)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1458, NULL, NULL, NULL, NULL, N'industry.A', N'02', N'外國銀行', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1450)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1459, NULL, NULL, NULL, NULL, N'industry.A', N'03', N'信用合作社', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1450)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1460, NULL, NULL, NULL, NULL, N'industry.A', N'04', N'中華郵政', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1450)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1461, NULL, NULL, NULL, NULL, N'industry.A', N'05', N'信用卡公司', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1450)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1462, NULL, NULL, NULL, NULL, N'industry.A', N'06', N'票券金融公司', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1450)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1463, NULL, NULL, NULL, NULL, N'industry.B', N'01', N'人壽保險公司', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1451)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1464, NULL, NULL, NULL, NULL, N'industry.B', N'02', N'產物保險公司', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1451)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1465, NULL, NULL, NULL, NULL, N'industry.B', N'03', N'再保險公司', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1451)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1466, NULL, NULL, NULL, NULL, N'industry.B', N'04', N'保險合作社', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1451)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1467, NULL, NULL, NULL, NULL, N'industry.B', N'05', N'保險經紀人', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1451)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1468, NULL, NULL, NULL, NULL, N'industry.B', N'06', N'保險代理人', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1451)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1469, NULL, NULL, NULL, NULL, N'industry.B', N'07', N'保險公證人', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1451)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1470, NULL, NULL, NULL, NULL, N'industry.C', N'01', N'證券公司', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1452)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1471, NULL, NULL, NULL, NULL, N'industry.C', N'02', N'期貨公司', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1452)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1472, NULL, NULL, NULL, NULL, N'industry.C', N'03', N'證券投資信託公司', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1452)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1473, NULL, NULL, NULL, NULL, N'industry.C', N'04', N'證券投資顧問公司', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1452)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1474, NULL, NULL, NULL, NULL, N'industry.C', N'05', N'證券金融公司', 1, NULL, NULL, N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1452)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1475, NULL, NULL, NULL, NULL, N'root', N'tagTree', N'標籤樹', 1, N'tagTree', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1476, NULL, NULL, NULL, NULL, N'root', N'tagTree.01', N'身分別', 1, N'tagTree.01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1444)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1477, NULL, NULL, NULL, NULL, N'root', N'tagTree.02', N'特殊註記', 1, N'tagTree.02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1444)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1478, NULL, NULL, NULL, NULL, N'tagTree', N'01', N'身分別', 1, N'tagTree.01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1475)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1479, NULL, NULL, NULL, NULL, N'tagTree', N'02', N'特殊註記', 1, N'tagTree.02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1475)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1480, NULL, NULL, NULL, NULL, N'tagTree.01', N'A', N'學生', 1, N'tagTree.01.A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1478)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1481, NULL, NULL, NULL, NULL, N'tagTree.01', N'B', N'一般', 1, N'tagTree.01.B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1478)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1482, NULL, NULL, NULL, NULL, N'tagTree.01', N'C', N'弱勢', 1, N'tagTree.01.C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1478)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1483, NULL, NULL, NULL, NULL, N'tagTree.01.A', N'01', N'國小', 1, N'tagTree.01.A.01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1480)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1484, NULL, NULL, NULL, NULL, N'tagTree.01.A', N'02', N'國中', 1, N'tagTree.01.A.02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1480)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1485, NULL, NULL, NULL, NULL, N'tagTree.01.A', N'03', N'高中', 1, N'tagTree.01.A.03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1480)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1486, NULL, NULL, NULL, NULL, N'tagTree.01.A', N'04', N'大學以上', 1, N'tagTree.01.A.04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1480)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1487, NULL, NULL, NULL, NULL, N'tagTree.02', N'A', N'長官關切', 1, N'tagTree.02.A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1479)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1488, NULL, NULL, NULL, NULL, N'column_code', N'case_master.testcolumn1', N'案件主檔.測試1', 1, NULL, N'1', N'case_master', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1489, NULL, NULL, NULL, NULL, N'column_code', N'case_master.test2', N'案件主檔.測試2', 1, NULL, N'2', N'case_master', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1490, NULL, NULL, NULL, NULL, N'root', N'column_code', N'動態欄位定羨', 1, NULL, NULL, N'bandName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1509, NULL, NULL, NULL, NULL, N'root', N'communication_type', N'來文態樣', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'舊系統代碼', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1510, NULL, NULL, NULL, NULL, N'communication_type', N'10001', N'立法委員', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10001', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1511, NULL, NULL, NULL, NULL, N'communication_type', N'10002', N'其他民意代表', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10002', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1512, NULL, NULL, NULL, NULL, N'communication_type', N'10003', N'政府機關', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10003', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1513, NULL, NULL, NULL, NULL, N'communication_type', N'10004', N'消保團體', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10004', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1514, NULL, NULL, NULL, NULL, N'communication_type', N'10005', N'請求權人', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10005', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1515, NULL, NULL, NULL, NULL, N'communication_type', N'10006', N'請求權人之法定代理人', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10006', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1516, NULL, NULL, NULL, NULL, N'communication_type', N'10007', N'請求權人之意定代理人', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10007', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1517, NULL, NULL, NULL, NULL, N'communication_type', N'10008', N'其他', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10008', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1518, NULL, NULL, NULL, NULL, N'communication_type', N'10009', N'臺北地方法院', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10009', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1519, NULL, NULL, NULL, NULL, N'communication_type', N'10010', N'樂齡案件', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10010', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1520, NULL, NULL, NULL, NULL, N'communication_type', N'10011', N'身心障礙-神經系統構造及精神、心智功能', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10011', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1521, NULL, NULL, NULL, NULL, N'communication_type', N'10012', N'身心障礙-眼、耳及相關構造與感官功能及疼痛', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10012', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1522, NULL, NULL, NULL, NULL, N'communication_type', N'10013', N'身心障礙-涉及聲音與言語構造及其功能', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10013', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1523, NULL, NULL, NULL, NULL, N'communication_type', N'10014', N'身心障礙-循環、造血、免疫與呼吸系統構造及其功能', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10014', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1524, NULL, NULL, NULL, NULL, N'communication_type', N'10015', N'身心障礙-消化、新陳代謝與內分泌系統構造及其功能', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10015', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1525, NULL, NULL, NULL, NULL, N'communication_type', N'10016', N'身心障礙-泌尿與生殖系統相關構造及其功能', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10016', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1526, NULL, NULL, NULL, NULL, N'communication_type', N'10017', N'身心障礙-神經、肌肉、骨骼之移動相關構造及其功能', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10017', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1527, NULL, NULL, NULL, NULL, N'communication_type', N'10018', N'身心障礙-皮膚與相關構造及其功能', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10018', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1528, NULL, NULL, NULL, NULL, N'communication_type', N'10019', N'身心障礙-其他', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'10019', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1529, NULL, NULL, NULL, NULL, N'root', N'is_price', N'計件否', NULL, NULL, NULL, N'是否計費', N'須輸入原申請案號', NULL, NULL, NULL, NULL, NULL, NULL, N'舊系統代碼', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1530, NULL, NULL, NULL, NULL, N'is_price', N'Y', N'計件', NULL, NULL, N'1', N'Y', N'N', NULL, NULL, NULL, NULL, NULL, NULL, N'CALC', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1531, NULL, NULL, NULL, NULL, N'is_price', N'N', N'不計件', NULL, NULL, N'2', N'N', N'N', NULL, NULL, NULL, NULL, NULL, NULL, N'CALC', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1532, NULL, NULL, NULL, NULL, N'is_price', N'C', N'續辦', NULL, NULL, N'3', N'N', N'Y', NULL, NULL, NULL, NULL, NULL, NULL, N'CALC', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1533, NULL, NULL, NULL, NULL, N'root', N'idno_type', N'證號類型', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'舊系統代碼', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1534, NULL, NULL, NULL, NULL, N'idno_type', N'1', N'身分證或居留證號', NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1535, NULL, NULL, NULL, NULL, N'idno_type', N'2', N'其他證號', NULL, NULL, N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1537, NULL, NULL, NULL, NULL, N'root', N'case_user_kind', N'案件人名身分別', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'舊系統代碼', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1538, NULL, NULL, NULL, NULL, N'case_user_kind', N'applicant', N'申請人', NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1539, NULL, NULL, NULL, NULL, N'case_user_kind', N'agent', N'代理人', NULL, NULL, N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1540, NULL, NULL, NULL, NULL, N'root', N'agent_kind', N'代理人類型', NULL, N'必選項', NULL, N'是否要填備註', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'舊系統代碼', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1541, NULL, NULL, NULL, NULL, N'agent_kind', N'legal', N'法定代理人', NULL, N'Y', N'1', N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, 1540)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1542, NULL, NULL, NULL, NULL, N'agent_kind', N'professional', N'專業代理人', NULL, N'N', N'2', N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, 1540)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1543, NULL, NULL, NULL, NULL, N'agent_kind', N'other', N'其他', NULL, N'Y', N'3', N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, 1540)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1544, NULL, NULL, NULL, NULL, N'root', N'agent_type', N'代理人身分別', NULL, NULL, NULL, N'必選項', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'舊系統代碼', NULL, 1540)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1545, NULL, NULL, NULL, NULL, N'agent_type', N'none', N'父親', NULL, NULL, N'1', N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, 1541)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1546, NULL, NULL, NULL, NULL, N'agent_type', N'legal', N'母親', NULL, NULL, N'2', N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, 1541)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1547, NULL, NULL, NULL, NULL, N'agent_type', N'pro', N'公司負責人', NULL, NULL, N'3', N'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, 1541)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1548, NULL, NULL, NULL, NULL, N'root', N'flow_code', N'流程代碼', 1, N'(未使用)', N'000', N'主管用(manager_flag)', N'可視範圍(scope_flag) <web/null:內網,out:外網,all:均可', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1549, NULL, NULL, NULL, NULL, N'flow_code', N'10001', N'本中心收文', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1550, NULL, NULL, NULL, NULL, N'flow_code', N'10002', N'確認是否已先向金融服務業申訴', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1551, NULL, NULL, NULL, NULL, N'flow_code', N'10003', N'移交金融服務業處理申訴', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1552, NULL, NULL, NULL, NULL, N'flow_code', N'10004', N'受理金融服務業回覆申訴處理', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1553, NULL, NULL, NULL, NULL, N'flow_code', N'10005', N'移交評議處處理', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1554, NULL, NULL, NULL, NULL, N'flow_code', N'10007', N'承辦人受理', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
GO
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1555, NULL, NULL, NULL, NULL, N'flow_code', N'10008', N'評議處收文', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1556, NULL, NULL, NULL, NULL, N'flow_code', N'10009', N'受理評議申請', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1557, NULL, NULL, NULL, NULL, N'flow_code', N'10010', N'請金融服務業陳述意見(含提供資料)', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1558, NULL, NULL, NULL, NULL, N'flow_code', N'10011', N'受理金融服務業回覆陳述意見', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1559, NULL, NULL, NULL, NULL, N'flow_code', N'10012', N'申請人提出補充理由書', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1560, NULL, NULL, NULL, NULL, N'flow_code', N'10013', N'請申請人補正資料', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1561, NULL, NULL, NULL, NULL, N'flow_code', N'10014', N'試行調處中', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1562, NULL, NULL, NULL, NULL, N'flow_code', N'10015', N'諮詢顧問審查中', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1563, NULL, NULL, NULL, NULL, N'flow_code', N'10016', N'評議委員預審中', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1564, NULL, NULL, NULL, NULL, N'flow_code', N'10017', N'評議委員會作成評議決定', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1565, NULL, NULL, NULL, NULL, N'flow_code', N'10018', N'承辦人辦理中', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1566, NULL, NULL, NULL, NULL, N'flow_code', N'10020', N'申訴人來電', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1567, NULL, NULL, NULL, NULL, N'flow_code', N'10021', N'移交金融服務業處理申訴', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1568, NULL, NULL, NULL, NULL, N'flow_code', N'10022', N'受理金融服務業回覆申訴處理', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1569, NULL, NULL, NULL, NULL, N'flow_code', N'10023', N'承辦人辦理中', 1, N'(未使用)', N'000', N'N', N'out', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1570, NULL, NULL, NULL, NULL, N'flow_code', N'10027', N'金融服務業受理案件', 1, N'(未使用)', N'000', N'N', N'out', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1571, NULL, NULL, NULL, NULL, N'flow_code', N'10028', N'向相關部門調閱資料', 1, N'(未使用)', N'000', N'N', N'out', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1572, NULL, NULL, NULL, NULL, N'flow_code', N'10029', N'案件審查', 1, N'(未使用)', N'000', N'N', N'out', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1573, NULL, NULL, NULL, NULL, N'flow_code', N'10030', N'請申訴人補正資料', 1, N'(未使用)', N'000', N'N', N'out', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1574, NULL, NULL, NULL, NULL, N'flow_code', N'10031', N'與申訴人協調中', 1, N'(未使用)', N'000', N'N', N'out', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1575, NULL, NULL, NULL, NULL, N'flow_code', N'10032', N'會簽其他部門意見', 1, N'(未使用)', N'000', N'N', N'out', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1576, NULL, NULL, NULL, NULL, N'flow_code', N'10033', N'處理結果陳核中', 1, N'(未使用)', N'000', N'N', N'out', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1577, NULL, NULL, NULL, NULL, N'flow_code', N'10034', N'回覆申訴人', 1, N'(未使用)', N'000', N'N', N'out', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1578, NULL, NULL, NULL, NULL, N'flow_code', N'10035', N'回覆爭議處理機構', 1, N'(未使用)', N'000', N'N', N'both', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1579, NULL, NULL, NULL, NULL, N'flow_code', N'10036', N'申請人續行申請評議', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1580, NULL, NULL, NULL, NULL, N'flow_code', N'10037', N'金融服務業回覆申訴狀態', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1581, NULL, NULL, NULL, NULL, N'flow_code', N'10038', N'諮詢顧問審查結束', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1582, NULL, NULL, NULL, NULL, N'flow_code', N'10039', N'評議委員預審結束', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1583, NULL, NULL, NULL, NULL, N'flow_code', N'10042', N'調處成立', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1584, NULL, NULL, NULL, NULL, N'flow_code', N'10043', N'延長(無)', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1585, NULL, NULL, NULL, NULL, N'flow_code', N'10044', N'延長(大會前15日送預審委員)', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1586, NULL, NULL, NULL, NULL, N'flow_code', N'10045', N'延長(當事人申請延長)', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1587, NULL, NULL, NULL, NULL, N'flow_code', N'10046', N'延長(大會指示再查)', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1588, NULL, NULL, NULL, NULL, N'flow_code', N'10047', N'延長(其他經主委核示同意)', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1589, NULL, NULL, NULL, NULL, N'flow_code', N'10048', N'歸檔', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1590, NULL, NULL, NULL, NULL, N'flow_code', N'10049', N'申請人補正資料日', 1, N'(未使用)', N'000', N'Y', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1591, NULL, NULL, NULL, NULL, N'flow_code', N'10050', N'申請人首次提出補充理由書', 1, N'(未使用)', N'000', N'Y', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1592, NULL, NULL, NULL, NULL, N'flow_code', N'10051', N'申請人提出病歷資料', 1, N'(未使用)', N'000', N'Y', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1593, NULL, NULL, NULL, NULL, N'flow_code', N'10052', N'評議委員或諮詢顧問要求提出病歷資料', 1, N'(未使用)', N'000', N'Y', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1594, NULL, NULL, NULL, NULL, N'flow_code', N'10053', N'大會決議延長之日', 1, N'(未使用)', N'000', N'Y', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1595, NULL, NULL, NULL, NULL, N'flow_code', N'10054', N'回覆爭議處理機構資料', 1, N'(未使用)', N'000', N'Y', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1596, NULL, NULL, NULL, NULL, N'flow_code', N'10055', N'相對人未回覆', 1, N'(未使用)', N'000', N'Y', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1597, NULL, NULL, NULL, NULL, N'flow_code', N'10056', N'撤回', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1598, NULL, NULL, NULL, NULL, N'flow_code', N'10057', N'做成調處建議書', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1599, NULL, NULL, NULL, NULL, N'flow_code', N'10058', N'作成調處不成立證明書', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1600, NULL, NULL, NULL, NULL, N'flow_code', N'10059', N'不受理', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1601, NULL, NULL, NULL, NULL, N'flow_code', N'10060', N'撤回', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1602, NULL, NULL, NULL, NULL, N'flow_code', N'10061', N'受理申請', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1603, NULL, NULL, NULL, NULL, N'flow_code', N'10062', N'回覆爭議處理機構資料(申訴)', 1, N'(未使用)', N'000', N'Y', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1604, NULL, NULL, NULL, NULL, N'flow_code', N'10063', N'相對人未回覆(申訴)', 1, N'(未使用)', N'000', N'Y', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1605, NULL, NULL, NULL, NULL, N'flow_code', N'10064', N'預審委員續行調處審查中', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1606, NULL, NULL, NULL, NULL, N'flow_code', N'10065', N'評議組移回申訴處理', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1607, NULL, NULL, NULL, NULL, N'flow_code', N'10066', N'評議委員調處審查中', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1608, NULL, NULL, NULL, NULL, N'flow_code', N'99998', N'待結案', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1609, NULL, NULL, NULL, NULL, N'flow_code', N'99999', N'結案', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1610, NULL, NULL, NULL, NULL, N'root', N'flow_Stage', N'案件流程.階段', 1, N'(未使用)', N'000', N'階段代碼', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', 1548, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1611, NULL, NULL, NULL, NULL, N'root', N'flow_State.C01001', N'案件流程階段.公文件', 1, N'(未使用)', N'000', N'階段', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', 1548, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1612, NULL, NULL, NULL, NULL, N'flow_State.C01001', N'1000', N'申訴組.受理', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1613, NULL, NULL, NULL, NULL, N'flow_State.C01001', N'1100', N'申訴組.處理', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1614, NULL, NULL, NULL, NULL, N'flow_State.C01001', N'2000', N'評議組.受理', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1615, NULL, NULL, NULL, NULL, N'flow_State.C01001', N'2100', N'評議組.處理', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1616, NULL, NULL, NULL, NULL, N'flow_State.C01001', N'9000', N'待結案', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1617, NULL, NULL, NULL, NULL, N'root', N'flow_State.C01002', N'案件流程階段.電話件', 1, N'(未使用)', N'000', N'階段', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', 1548, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1618, NULL, NULL, NULL, NULL, N'flow_State.C01002', N'1000', N'諮服組.受理', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1619, NULL, NULL, NULL, NULL, N'flow_State.C01002', N'1100', N'諮服組.處理', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1620, NULL, NULL, NULL, NULL, N'flow_State.C01002', N'1900', N'諮服組.待結案', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1621, NULL, NULL, NULL, NULL, N'flow_State.C01002', N'2000', N'申訴組.受理', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1622, NULL, NULL, NULL, NULL, N'flow_State.C01002', N'2100', N'申訴組.處理', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1623, NULL, NULL, NULL, NULL, N'flow_State.C01002', N'2900', N'申訴組.待結案', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1624, NULL, NULL, NULL, NULL, N'root', N'case_class', N'專案類別(進件類別)', 1, NULL, N'000', N'統計類別', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', 1668, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1625, NULL, NULL, NULL, NULL, N'case_class', N'A', N'諮詢', 1, N'公文諮詢', N'000', N'A', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1626, NULL, NULL, NULL, NULL, N'case_class', N'B', N'申訴', 1, NULL, N'000', N'B', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1627, NULL, NULL, NULL, NULL, N'case_class', N'C', N'評議', 1, NULL, N'000', N'C', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1628, NULL, NULL, NULL, NULL, N'case_class', N'D', N'申訴後續行評議', 1, NULL, N'000', N'C', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1629, NULL, NULL, NULL, NULL, N'case_class', N'E', N'諮詢', 1, N'電話諮詢', N'000', N'A', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1630, NULL, NULL, NULL, NULL, N'root', N'in_method', N'進件方式', 1, N'(未使用)', N'000', N'統計類別', N'是否進入eflow移轉流程', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', 1624, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1631, NULL, NULL, NULL, NULL, N'in_method', N'C03S01', N'0800申訴', 1, N'(未使用)', N'000', N'C03S01', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1632, NULL, NULL, NULL, NULL, N'in_method', N'C03S05', N'1998專線', 1, N'(未使用)', N'000', N'C03S05', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1633, NULL, NULL, NULL, NULL, N'in_method', N'C03S07', N'金管會副知', 1, N'(未使用)', N'000', N'C03S07', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1634, NULL, NULL, NULL, NULL, N'in_method', N'C03S10', N'線上進件', 1, N'(未使用)', N'000', N'C03S10', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1635, NULL, NULL, NULL, NULL, N'in_method', N'C04S02', N'臨櫃收件', 1, N'(未使用)', N'000', N'C04S02', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1636, NULL, NULL, NULL, NULL, N'in_method', N'C04S03', N'書面郵寄', 1, N'(未使用)', N'000', N'C04S03', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1637, NULL, NULL, NULL, NULL, N'in_method', N'C04S04', N'Email收件', 1, N'(未使用)', N'000', N'C04S04', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1638, NULL, NULL, NULL, NULL, N'in_method', N'C04S06', N'金管會副知', 1, N'(未使用)', N'000', N'C03S07', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1639, NULL, NULL, NULL, NULL, N'in_method', N'C04S10', N'線上進件', 1, N'(未使用)', N'000', N'C03S10', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1640, NULL, NULL, NULL, NULL, N'in_method', N'NEW001', N'臨櫃登錄', 1, N'(未使用)', N'000', N'NEW001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1641, NULL, NULL, NULL, NULL, N'in_method', N'NEW002', N'巡查', 1, N'(未使用)', N'000', N'NEW002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1642, NULL, NULL, NULL, NULL, N'root', N'case_type', N'收件方式', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', 1630, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1643, NULL, NULL, NULL, NULL, N'case_type', N'C01001', N'公文收件', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1644, NULL, NULL, NULL, NULL, N'case_type', N'C01002', N'電話收件', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1645, NULL, NULL, NULL, NULL, N'case_type', N'C01003', N'臨櫃收件', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1646, NULL, NULL, NULL, NULL, N'root', N'workGroup', N'工作群組', 1, N'(未使用)', N'000', N'主管群組', N'權限群組代碼ID', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1647, NULL, NULL, NULL, NULL, N'workGroup', N'00', N'超級管理者', 1, N'(未使用)', N'001', N'Y', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1648, NULL, NULL, NULL, NULL, N'workGroup', N'01', N'系統管理者', 1, N'(未使用)', N'002', N'N', N'5', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1649, NULL, NULL, NULL, NULL, N'workGroup', N'10', N'0800電話客服', 1, N'(未使用)', N'003', N'N', N'7', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1650, NULL, NULL, NULL, NULL, N'workGroup', N'11', N'服務組審核人員', 1, N'(未使用)', N'004', N'N', N'9,8', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1651, NULL, NULL, NULL, NULL, N'workGroup', N'12', N'服務組主管', 1, N'(未使用)', N'005', N'Y', N'5', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1652, NULL, NULL, NULL, NULL, N'workGroup', N'21', N'申訴組承辦人', 1, N'(未使用)', N'006', N'N', N'9', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1653, NULL, NULL, NULL, NULL, N'workGroup', N'22', N'申訴組主管', 1, N'(未使用)', N'007', N'Y', N'5', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1654, NULL, NULL, NULL, NULL, N'workGroup', N'31', N'評議主管', 1, N'(未使用)', N'008', N'Y', N'5', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
GO
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1655, NULL, NULL, NULL, NULL, N'workGroup', N'32', N'評議承辦人', 1, N'(未使用)', N'009', N'N', N'9', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1656, NULL, NULL, NULL, NULL, N'root', N'close_stage', N'結案階段', 1, NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'舊系統代碼', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1657, NULL, NULL, NULL, NULL, N'close_stage', N'E01001', N'不受理', 1, NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'E01001', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1658, NULL, NULL, NULL, NULL, N'close_stage', N'E01002', N'申訴', 1, NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'E01002,E02001', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1659, NULL, NULL, NULL, NULL, N'close_stage', N'E01003', N'撤件', 1, NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'E01003', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1660, NULL, NULL, NULL, NULL, N'close_stage', N'E01004', N'調處', 1, NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'E01004', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1661, NULL, NULL, NULL, NULL, N'close_stage', N'E01005', N'評議', 1, NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'E01005,E01001', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1662, CAST(N'2023-08-04T10:19:13.000' AS DateTime), N'admin', CAST(N'2023-08-04T10:20:16.000' AS DateTime), NULL, N'close_stage', N'E01006', N'諮詢', 1, NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'E01006,E02002', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1663, NULL, NULL, NULL, NULL, N'close_stage', N'E03001', N'撤件', 1, NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'E03001', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1664, NULL, NULL, NULL, NULL, N'root', N'tel_type', N'來電分類', 1, N'諮詢件才須選', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1665, NULL, NULL, NULL, NULL, N'tel_type', N'T01002', N'屬金管會事項', 1, NULL, NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1666, NULL, NULL, NULL, NULL, N'tel_type', N'T01003', N'一般性問題詢問', 1, NULL, NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1667, NULL, NULL, NULL, NULL, N'tel_type', N'T01004', N'債務協商', 1, NULL, NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1668, NULL, NULL, NULL, NULL, N'root', N'close_status', N'結案情形', 1, NULL, NULL, N'結案階段預設值', N'提會結論選項', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1669, NULL, NULL, NULL, NULL, N'close_status', N'E01001', N'不受理', 1, NULL, NULL, N'評議', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1670, NULL, NULL, NULL, NULL, N'close_status', N'E01002', N'申訴', 1, NULL, NULL, N'申訴', N'N', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1671, NULL, NULL, NULL, NULL, N'close_status', N'E01003', N'撤件', 1, NULL, NULL, N'調處', N'N', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1672, NULL, NULL, NULL, NULL, N'close_status', N'E01004', N'調處', 1, NULL, NULL, N'調處', N'N', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1673, NULL, NULL, NULL, NULL, N'close_status', N'E01005', N'評議', 1, NULL, NULL, N'評議', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1674, CAST(N'2023-07-31T09:55:15.000' AS DateTime), NULL, CAST(N'2023-07-31T09:55:15.000' AS DateTime), NULL, N'close_status', N'E01006', N'諮詢', 1, NULL, NULL, N'諮詢', N'N', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1675, NULL, NULL, NULL, NULL, N'root', N'close_reason1', N'結案理由', 1, N'(未使用)', N'000', N'電話諮詢-屬金管會事項-過濾碼', N'公文諮詢-過濾碼', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1676, NULL, NULL, NULL, NULL, N'close_reason1', N'10001', N'申請不合程式', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1677, NULL, NULL, NULL, NULL, N'close_reason1', N'10002', N'非屬金融消費爭議', 1, N'(未使用)', N'000', N'T01003', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1678, NULL, NULL, NULL, NULL, N'close_reason1', N'10003', N'未先向金融服務業申訴', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1679, NULL, NULL, NULL, NULL, N'close_reason1', N'10004', N'向金融服務業提出申訴後，金融服務業處理申訴尚未逾三十日', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1680, NULL, NULL, NULL, NULL, N'close_reason1', N'10005', N'申請已逾法定期限', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1681, NULL, NULL, NULL, NULL, N'close_reason1', N'10006', N'當事人不適格', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1682, NULL, NULL, NULL, NULL, N'close_reason1', N'10007', N'曾依本法申請評議而不成立', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1683, NULL, NULL, NULL, NULL, N'close_reason1', N'10008', N'申請評議事件已經法院判決確定或已成立調處、評議、和解、調解或仲裁', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1684, NULL, NULL, NULL, NULL, N'close_reason1', N'10009', N'其他主管機關規定之情形', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1685, NULL, NULL, NULL, NULL, N'close_reason1', N'10010', N'紛爭已解決：依申請人意見或圓滿妥處', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1686, NULL, NULL, NULL, NULL, N'close_reason1', N'10011', N'紛爭未解決：業者維持原議', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1687, NULL, NULL, NULL, NULL, N'close_reason1', N'10012', N'紛爭已解決：和解', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1688, NULL, NULL, NULL, NULL, N'close_reason1', N'10013', N'紛爭未解決：其他', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1689, NULL, NULL, NULL, NULL, N'close_reason1', N'10016', N'和解', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1690, NULL, NULL, NULL, NULL, N'close_reason1', N'10017', N'其他', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1691, NULL, NULL, NULL, NULL, N'close_reason1', N'10022', N'申請人主張有理由', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1692, NULL, NULL, NULL, NULL, N'close_reason1', N'10023', N'申請人主張無理由', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1693, NULL, NULL, NULL, NULL, N'close_reason1', N'10025', N'申請人主張部分有理由', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1694, NULL, NULL, NULL, NULL, N'close_reason1', N'10046', N'申請人主張部分不受理，部分有理由', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1695, NULL, NULL, NULL, NULL, N'close_reason1', N'10047', N'申請人主張部分不受理，部分無理由', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1696, NULL, NULL, NULL, NULL, N'close_reason1', N'10048', N'申請人主張部分不受理，部分有理由，部分無理由', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1697, NULL, NULL, NULL, NULL, N'close_reason1', N'10039', N'說明中心業務', 1, N'(未使用)', N'000', N'T01003', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1698, NULL, NULL, NULL, NULL, N'close_reason1', N'10040', N'說明案件處理進度', 1, N'(未使用)', N'000', N'T01003', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1699, NULL, NULL, NULL, NULL, N'close_reason1', N'10033', N'提供申訴(請)書', 1, N'(未使用)', N'000', N'T01003', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1700, NULL, NULL, NULL, NULL, N'close_reason1', N'10041', N'提供申請書', 1, N'(未使用)', N'000', N'T01003', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1701, NULL, NULL, NULL, NULL, N'close_reason1', N'10042', N'申訴案改列件', 1, N'(未使用)', N'000', N'T01003', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1702, NULL, NULL, NULL, NULL, N'close_reason1', N'10043', N'副本資料存查', 1, N'(未使用)', N'000', N'T01003', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1703, NULL, NULL, NULL, NULL, N'close_reason1', N'10044', N'重複申訴案件', 1, N'(未使用)', N'000', N'T01003', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1704, NULL, NULL, NULL, NULL, N'close_reason1', N'14002', N'協助紛爭排解', 1, N'(未使用)', N'000', N'T01003', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1705, NULL, NULL, NULL, NULL, N'close_reason1', N'T06001', N'轉回 金管會', 1, N'(未使用)', N'000', N'T01002', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1706, NULL, NULL, NULL, NULL, N'close_reason1', N'T06002', N'轉回 保險局', 1, N'(未使用)', N'000', N'T01002', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1707, NULL, NULL, NULL, NULL, N'close_reason1', N'T06003', N'轉回 銀行局', 1, N'(未使用)', N'000', N'T01002', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1708, NULL, NULL, NULL, NULL, N'close_reason1', N'T06004', N'轉回 證期局', 1, N'(未使用)', N'000', N'T01002', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1709, NULL, NULL, NULL, NULL, N'root', N'close_reason2', N'結案細部選項', 1, N'(未使用)', N'000', N'過濾碼', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1710, NULL, NULL, NULL, NULL, N'close_reason2', N'T03001', N'非屬商品或服務之陳情', 1, N'(未使用)', N'000', N'T01002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1711, NULL, NULL, NULL, NULL, N'close_reason2', N'T03002', N'檢舉案件', 1, N'(未使用)', N'000', N'T01002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1712, NULL, NULL, NULL, NULL, N'close_reason2', N'T03003', N'涉及政策', 1, N'(未使用)', N'000', N'T01002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1713, NULL, NULL, NULL, NULL, N'close_reason2', N'T03004', N'法令解釋案件', 1, N'(未使用)', N'000', N'T01002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1714, NULL, NULL, NULL, NULL, N'close_reason2', N'T03005', N'申訴單位周邊服務單位問題', 1, N'(未使用)', N'000', N'T01002', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1715, NULL, NULL, NULL, NULL, N'close_reason2', N'T09001', N'銀行公會信用卡申訴', 1, N'(未使用)', N'000', N'T01003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1716, NULL, NULL, NULL, NULL, N'close_reason2', N'T09002', N'銀行公會其他業務', 1, N'(未使用)', N'000', N'T01003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1717, NULL, NULL, NULL, NULL, N'close_reason2', N'T09003', N'銀行公會債務協商', 1, N'(未使用)', N'000', N'T01003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1718, NULL, NULL, NULL, NULL, N'close_reason2', N'T09004', N'壽險公會', 1, N'(未使用)', N'000', N'T01003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1719, NULL, NULL, NULL, NULL, N'close_reason2', N'T09005', N'檢查局', 1, N'(未使用)', N'000', N'T01003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1720, NULL, NULL, NULL, NULL, N'close_reason2', N'T09006', N'證交所', 1, N'(未使用)', N'000', N'T01003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1721, NULL, NULL, NULL, NULL, N'close_reason2', N'T09007', N'期交所', 1, N'(未使用)', N'000', N'T01003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1722, NULL, NULL, NULL, NULL, N'close_reason2', N'T09008', N'櫃買中心', 1, N'(未使用)', N'000', N'T01003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1723, NULL, NULL, NULL, NULL, N'close_reason2', N'T09009', N'證券商公會', 1, N'(未使用)', N'000', N'T01003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1724, NULL, NULL, NULL, NULL, N'close_reason2', N'T09010', N'說明-帳戶遭扣', 1, N'(未使用)', N'000', N'T01003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1725, NULL, NULL, NULL, NULL, N'close_reason2', N'T09011', N'說明-拒絕開戶', 1, N'(未使用)', N'000', N'T01003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1726, NULL, NULL, NULL, NULL, N'close_reason2', N'T09012', N'說明-警示帳戶', 1, N'(未使用)', N'000', N'T01003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1727, NULL, NULL, NULL, NULL, N'close_reason2', N'T09013', N'說明-使用ATM', 1, N'(未使用)', N'000', N'T01003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1728, NULL, NULL, NULL, NULL, N'close_reason2', N'T09014', N'投信投顧公會', 1, N'(未使用)', N'000', N'T01003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1729, NULL, NULL, NULL, NULL, N'close_reason2', N'T09021', N'投資人保護中心', 1, N'(未使用)', N'000', N'T01003', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1730, NULL, NULL, NULL, NULL, N'close_reason2', N'T', N'調處撤回', 1, N'(未使用)', N'000', N'10016,10017', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1731, NULL, NULL, NULL, NULL, N'close_reason2', N'M', N'自行撤回', 1, N'(未使用)', N'000', N'10016,10017', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1732, NULL, NULL, NULL, NULL, N'root', N'memo_type', N'備註類型', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1733, NULL, NULL, NULL, NULL, N'memo_type', N'eflow.1000', N'電話件轉申訴組.退回描述', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1734, NULL, NULL, NULL, NULL, N'memo_type', N'eflow.2000', N'電話申訴件結案.退回描述', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1735, NULL, NULL, NULL, NULL, N'memo_type', N'public', N'公開備註', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1736, NULL, NULL, NULL, NULL, N'memo_type', N'private', N'內部紀錄/案件備註', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1737, NULL, NULL, NULL, NULL, N'memo_type', N'annotation', N'案情摘要', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1738, NULL, NULL, NULL, NULL, N'memo_type', N'subject', N'公文主旨', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1739, NULL, NULL, NULL, NULL, N'root', N'dispute_kind', N'爭議類型', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1740, NULL, NULL, NULL, NULL, N'dispute_kind', N'test1', N'未盤點出1', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1741, NULL, NULL, NULL, NULL, N'dispute_kind', N'test2', N'未盤點出2', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1742, NULL, NULL, NULL, NULL, N'root', N'eflow.1000.rejectReason', N'電話件轉申訴組.退回原因', 1, N'(未使用)', N'000', N'可編輯', N'字首要求', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1743, NULL, NULL, NULL, NULL, N'eflow.1000.rejectReason', N'test1', N'待使用者提供1', 1, N'(未使用)', N'000', N'N', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1744, NULL, NULL, NULL, NULL, N'eflow.1000.rejectReason', N'test2', N'待使用者提供2', 1, N'(未使用)', N'000', N'N', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1745, NULL, NULL, NULL, NULL, N'eflow.1000.rejectReason', N'test3', N'其他-', 1, N'(未使用)', N'000', N'Y', N'其他-', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1746, NULL, NULL, NULL, NULL, N'root', N'dynamic_column', N'動態欄位', 1, N'(未使用)', N'000', N'適用區塊(band_name)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1747, NULL, NULL, NULL, NULL, N'dynamic_column', N'eflow.2000.check', N'電話申訴檢核表', 1, N'(未使用)', N'000', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1746)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1748, NULL, NULL, NULL, NULL, N'root', N'eflow.2000.check', N'電話申訴檢核表', 1, N'(未使用)', N'000', N'columnXPos', N'columnYPos', N'columnSytle(radio/checkbox/text)', N'defaultVale', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1746)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1749, NULL, NULL, NULL, NULL, N'eflow.2000.check', N'1-1', N'1.申請人基本資料', 1, N'(未使用)', N'000', N'1', N'1', N'checkbox', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1746)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1750, NULL, NULL, NULL, NULL, N'eflow.2000.check', N'1-2', N'2.金融服務業回覆結果及概述', 1, N'(未使用)', N'000', N'1', N'2', N'checkbox', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1746)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1751, NULL, NULL, NULL, NULL, N'eflow.2000.check', N'1-3', N'3.爭議類型及商品', 1, N'(未使用)', N'000', N'1', N'3', N'checkbox', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1746)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1752, NULL, NULL, NULL, NULL, N'eflow.2000.check', N'1-4', N'4.備註錄內容', 1, N'(未使用)', N'000', N'1', N'4', N'checkbox', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1746)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1753, NULL, NULL, NULL, NULL, N'eflow.2000.check', N'1-5', N'金融服務業留言需處理', 1, N'(未使用)', N'000', N'1', N'5', N'radio:是/否', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1746)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1754, NULL, NULL, NULL, NULL, N'eflow.2000.check', N'1-6', N'主管機關副知之並案', 1, N'(未使用)', N'000', N'1', N'6', N'radio:是/否', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1746)
GO
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1755, NULL, NULL, NULL, NULL, N'eflow.2000.check', N'1-7', N'紛爭是否解決', 1, N'(未使用)', N'000', N'1', N'7', N'radio:是/否', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1746)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1756, NULL, NULL, NULL, NULL, N'eflow.2000.check', N'1-8', N'提醒申請評議', 1, N'(未使用)', N'000', N'1', N'8', N'radio:需要/不需要', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1746)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1757, NULL, NULL, NULL, NULL, N'eflow.2000.check', N'2', N'建議修正為', 1, N'(未使用)', N'000', N'2', N'1', N'checkbox', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1746)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1758, NULL, NULL, NULL, NULL, N'eflow.2000.check', N'3', N'金融服務業意見反應', 1, N'(未使用)', N'000', N'3', N'1', N'checkbox', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1746)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1759, NULL, NULL, NULL, NULL, N'eflow.2000.check', N'4', N'備註', 1, N'(未使用)', N'000', N'4', N'1', N'checkbox', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, 1746)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1760, NULL, NULL, CAST(N'2023-07-11T15:24:40.267' AS DateTime), N'admin', N'session', N'4', N'4', NULL, NULL, N'004', N'2023/06/12', N'2023/06/15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (1761, NULL, NULL, NULL, NULL, N'role.bank', N'userGroup', N'使用者群組', 1, N'(未使用)', N'001', N'23', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2017, NULL, NULL, CAST(N'2023-07-11T15:24:34.700' AS DateTime), N'admin', N'session', N'1', N'1', NULL, NULL, N'001', N'2023/01/01', N'2023/01/07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2018, NULL, NULL, NULL, NULL, N'case_user_kind', N'contractor', N'契約當事人', NULL, NULL, N'3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2019, NULL, NULL, NULL, NULL, N'case_user_kind', N'insured', N'被保險人', NULL, NULL, N'4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2020, NULL, NULL, NULL, NULL, N'case_user_kind', N'beneficiary', N'受益人', NULL, NULL, N'5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2021, NULL, NULL, NULL, NULL, N'case_user_kind', N'guarantor', N'保證人', NULL, NULL, N'5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2022, NULL, NULL, NULL, NULL, N'root', N'sales_channel', N'代理人類型', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'舊系統代碼', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2023, NULL, NULL, NULL, NULL, N'sales_channel', N'SA1001', N'銀行保險經紀人', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA1001', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2024, NULL, NULL, NULL, NULL, N'sales_channel', N'SA1002', N'銀行保險代理人', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA1002', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2025, NULL, NULL, NULL, NULL, N'sales_channel', N'SA1003', N'一般保險經紀人', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA1003', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2026, NULL, NULL, NULL, NULL, N'sales_channel', N'SA1004', N'一般保險代理人', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA1004', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2027, NULL, NULL, NULL, NULL, N'sales_channel', N'SA1005', N'電話行銷', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA1005', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2028, NULL, NULL, NULL, NULL, N'sales_channel', N'SA1006', N'網際網路', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA1006', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2029, NULL, NULL, NULL, NULL, N'sales_channel', N'SA1007', N'電視購物頻道', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA1007', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2030, NULL, NULL, NULL, NULL, N'sales_channel', N'SA1008', N'便利商店或超商', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA1008', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2031, NULL, NULL, NULL, NULL, N'sales_channel', N'SA1009', N'團保', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA1009', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2032, NULL, NULL, NULL, NULL, N'sales_channel', N'SA1010', N'其他', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA1010', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2033, NULL, NULL, NULL, NULL, N'sales_channel', N'SA1011', N'保險公司直屬業務員', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA1011', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2034, NULL, NULL, NULL, NULL, N'root', N'exam_status', N'預審狀態', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'舊系統代碼', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2035, NULL, NULL, NULL, NULL, N'exam_status', N'Y', N'已審結', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA1001', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2036, NULL, NULL, NULL, NULL, N'exam_status', N'R', N'修正中', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA1002', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2037, NULL, NULL, NULL, NULL, N'exam_status', N'N', N'待審查', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA1002', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2038, NULL, NULL, NULL, NULL, N'root', N'continue_status', N'續辦否', NULL, NULL, NULL, N'is_free預設值(計費否)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'舊系統代碼', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2039, NULL, NULL, NULL, NULL, N'continue_status', N'N', N'非續辦', NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'0', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2040, NULL, NULL, NULL, NULL, N'continue_status', N'Y', N'續辦', NULL, NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2041, NULL, NULL, NULL, NULL, N'continue_status', N'U', N'不計件', NULL, NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'calc', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2042, NULL, NULL, NULL, NULL, N'workGroup', N'33', N'調處人員', 1, N'(未使用)', N'000', N'N', N'5', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2043, NULL, NULL, NULL, NULL, N'workGroup', N'34', N'議事人員', 1, N'(未使用)', N'000', N'N', N'5', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2044, NULL, NULL, NULL, NULL, N'flow_code', N'10067', N'移交評議處處理', 1, N'(未使用)', N'000', N'N', N'web', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2045, NULL, NULL, NULL, NULL, N'root', N'case_log_type', N'案件維護類型', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2046, NULL, NULL, NULL, NULL, N'case_log_type', N'continue_status', N'續辦否', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2047, NULL, NULL, NULL, NULL, N'root', N'case_file_type', N'檔案類型', 1, N'(未使用)', N'000', N'關連表格', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2048, NULL, NULL, NULL, NULL, N'case_file_type', N'receive', N'收文文件', 1, N'(未使用)', N'001', N'CASE_RECEIVE_APPL', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2049, NULL, NULL, CAST(N'2023-07-28T10:43:17.677' AS DateTime), N'admin', N'case_file_type', N'company', N'業者上傳文件', 1, N'(未使用)', N'002', N'CASE_COMPANY_REPLY', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2050, NULL, NULL, NULL, NULL, N'case_file_type', N'consultant', N'諮詢顧問上傳文件', 1, N'(未使用)', N'003', N'CASE_CONSULTANT', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2051, NULL, NULL, NULL, NULL, N'case_file_type', N'suggestion', N'提會文件', 1, N'(未使用)', N'004', N'CASE_METTING_PLAN', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2052, NULL, NULL, NULL, NULL, N'case_file_type', N'examinner', N'審查委員上傳文件', 1, N'(未使用)', N'005', N'CASE_EXAMINER', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2053, NULL, NULL, NULL, NULL, N'case_file_type', N'meetDraft', N'提會草本(公文稿)', 1, N'(未使用)', N'006', N'CASE_METTING_PLAN', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2054, NULL, NULL, NULL, NULL, N'case_file_type', N'mediate', N'調處人員上傳', 1, N'(未使用)', N'007', N'CASE_MEDIATE_LOG', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2055, NULL, NULL, NULL, NULL, N'root', N'unitShareFolder', N'單位共享目錄', 1, N'(未使用)', N'000', N'目錄起始位置', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2056, NULL, NULL, NULL, NULL, N'unitShareFolder', N'01', N'諮服組', 1, N'(未使用)', N'000', N'//files/01/', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2057, NULL, NULL, NULL, NULL, N'unitShareFolder', N'02', N'申訴組', 1, N'(未使用)', N'000', N'//files/02/', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2058, NULL, NULL, NULL, NULL, N'root', N'case_attribute_old', N'案件屬性(舊版-報表用)', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2059, NULL, NULL, NULL, NULL, N'case_attribute_old', N'B01001', N'申訴屬性', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2060, NULL, NULL, NULL, NULL, N'case_attribute_old', N'B01002', N'不受理屬性', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2061, NULL, NULL, NULL, NULL, N'case_attribute_old', N'B01003', N'調處屬性', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2062, NULL, NULL, NULL, NULL, N'case_attribute_old', N'B01004', N'權重減半屬性', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2063, NULL, NULL, NULL, NULL, N'case_attribute_old', N'B01005', N'權重未減半屬性', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2064, NULL, NULL, NULL, NULL, N'case_attribute_old', N'B01006', N'其他屬性', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2065, NULL, NULL, NULL, NULL, N'root', N'API.Comm07', N'下拉使用者設定', 1, N'(未使用)', N'000', N'優先顯示的工作群組(逗號分隔)', N'只顯示在職帳號(Y/N)', N'只顯示指定工作群組', N'姓名顯示樣式', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2066, NULL, NULL, NULL, NULL, N'API.Comm07', N'WEB010101', N'案件管理(服務組)', 1, N'(未使用)', N'000', N'10,11,12', N'N', N'N', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2067, NULL, NULL, NULL, NULL, N'API.Comm07', N'WEB010102', N'案件管理(諮服組)', 1, N'(未使用)', N'000', N'21,22', N'N', N'N', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2068, NULL, NULL, NULL, NULL, N'API.Comm07', N'WEB010103', N'案件管理(評議組)', 1, N'(未使用)', N'000', N'32,33,34,31', N'N', N'N', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2069, NULL, NULL, NULL, NULL, N'root', N'reply_result_type', N'業者回覆處理結果', 1, N'(未使用)', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2070, NULL, NULL, NULL, NULL, N'reply_result_type', N'10001', N'紛爭已解決：依申請人意見或圓滿妥處', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2071, NULL, NULL, NULL, NULL, N'reply_result_type', N'10002', N'紛爭未解決：維持原議', 1, N'(未使用)', N'2', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2072, NULL, NULL, NULL, NULL, N'reply_result_type', N'10003', N'紛爭已解決：和解', 1, N'(未使用)', N'3', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2073, NULL, NULL, NULL, NULL, N'reply_result_type', N'10004', N'紛爭未解決：其他', 1, N'(未使用)', N'4', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2074, NULL, NULL, NULL, NULL, N'root', N'decide_type', N'評議決定(有無理由)', 1, N'(未使用)', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2075, NULL, NULL, NULL, NULL, N'decide_type', N'I03001', N'申請人主張有理由', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2076, NULL, NULL, NULL, NULL, N'decide_type', N'I03002', N'申請人主張無理由', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2077, NULL, NULL, NULL, NULL, N'decide_type', N'I03003', N'和解', 0, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2078, NULL, NULL, NULL, NULL, N'decide_type', N'I03004', N'申請人主張部分有理由', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2079, NULL, NULL, NULL, NULL, N'decide_type', N'I03005', N'申請人主張部分不受理，部分有理由', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2080, NULL, NULL, NULL, NULL, N'decide_type', N'I03006', N'申請人主張部分不受理，部分無理由', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2081, NULL, NULL, NULL, NULL, N'decide_type', N'I03007', N'申請人主張部分不受理，部分有理由，部分無理由', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2082, NULL, NULL, NULL, NULL, N'root', N'decide_result', N'評議成立/不成立結論', 1, N'(未使用)', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2083, NULL, NULL, NULL, NULL, N'decide_result', N'I02001', N'評議成立', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2084, NULL, NULL, NULL, NULL, N'decide_result', N'I02002', N'評議不成立-申請人不同意', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2085, NULL, NULL, NULL, NULL, N'decide_result', N'I02003', N'評議不成立-金融服務業不同意', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2086, NULL, NULL, NULL, NULL, N'decide_result', N'I02004', N'評議不成立-雙方不同意', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2087, NULL, NULL, NULL, NULL, N'decide_result', N'I02005', N'評議不成立-申請人逾期未回覆', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2088, NULL, NULL, NULL, NULL, N'root', N'request_type', N'請求標的類型', 1, N'(未使用)', NULL, N'須填寫金額', N'非金錢給付', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2089, NULL, NULL, NULL, NULL, N'request_type ', N'A', N'A.新臺幣______元', 1, N'(未使用)', N'1', N'1', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2090, NULL, NULL, NULL, NULL, N'request_type ', N'B', N'B.非金錢給付', 1, N'(未使用)', N'1', N'0', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2091, NULL, NULL, NULL, NULL, N'request_type ', N'C', N'C.新臺幣______元+非金錢給付', 1, N'(未使用)', N'1', N'1', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2092, NULL, NULL, NULL, NULL, N'request_type ', N'D', N'D.其他', 1, N'(未使用)', N'1', N'0', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2093, NULL, NULL, NULL, NULL, N'root', N'quota_style', N'評議決定-適用一定額度', 1, N'(未使用)', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2094, NULL, NULL, NULL, NULL, N'request_type ', N'AA1001', N'新臺幣一百萬元', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2095, NULL, NULL, NULL, NULL, N'request_type ', N'AA1002', N'新臺幣十萬元', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2096, NULL, NULL, NULL, NULL, N'request_type ', N'AA1003', N'無涉一定額度', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2097, NULL, NULL, NULL, NULL, N'request_type ', N'AA1004', N'新臺幣十二萬元', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2098, NULL, NULL, NULL, NULL, N'request_type ', N'AA1005', N'新臺幣一百二十萬元', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2099, NULL, NULL, NULL, NULL, N'root', N'quota_type', N'評議決定-適用一定額度', 1, N'(未使用)', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2100, NULL, NULL, NULL, NULL, N'quota_type ', N'I04001', N'以上', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2101, NULL, NULL, NULL, NULL, N'quota_type ', N'I04002', N'以下', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2102, NULL, NULL, NULL, NULL, N'quota_type ', N'other', N'其他(部分評議決定非金錢給付)', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2103, NULL, NULL, NULL, NULL, N'root', N'communication_class', N'來文態樣', 1, N'(未使用)', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2104, NULL, NULL, NULL, NULL, N'communication_class', N'10001', N'立法委員', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2105, NULL, NULL, NULL, NULL, N'communication_class', N'10002', N'其他民意代表', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2106, NULL, NULL, NULL, NULL, N'communication_class', N'10003', N'政府機關', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2107, NULL, NULL, NULL, NULL, N'communication_class', N'10004', N'消保團體', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2108, NULL, NULL, NULL, NULL, N'communication_class', N'10005', N'請求權人', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2109, NULL, NULL, NULL, NULL, N'communication_class', N'10006', N'請求權人之法定代理人', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
GO
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2110, NULL, NULL, NULL, NULL, N'communication_class', N'10007', N'請求權人之意定代理人', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2111, NULL, NULL, NULL, NULL, N'communication_class', N'10008', N'其他', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2112, NULL, NULL, NULL, NULL, N'communication_class', N'10009', N'臺北地方法院', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2113, NULL, NULL, NULL, NULL, N'communication_class', N'10010', N'樂齡案件', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2114, NULL, NULL, NULL, NULL, N'communication_class', N'10011', N'身心障礙-神經系統構造及精神、心智功能', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2115, NULL, NULL, NULL, NULL, N'communication_class', N'10012', N'身心障礙-眼、耳及相關構造與感官功能及疼痛', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2116, NULL, NULL, NULL, NULL, N'communication_class', N'10013', N'身心障礙-涉及聲音與言語構造及其功能', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2117, NULL, NULL, NULL, NULL, N'communication_class', N'10014', N'身心障礙-循環、造血、免疫與呼吸系統構造及其功能', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2118, NULL, NULL, NULL, NULL, N'communication_class', N'10015', N'身心障礙-消化、新陳代謝與內分泌系統構造及其功能', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2119, NULL, NULL, NULL, NULL, N'communication_class', N'10016', N'身心障礙-泌尿與生殖系統相關構造及其功能', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2120, NULL, NULL, NULL, NULL, N'communication_class', N'10017', N'身心障礙-神經、肌肉、骨骼之移動相關構造及其功能', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2121, NULL, NULL, NULL, NULL, N'communication_class', N'10018', N'身心障礙-皮膚與相關構造及其功能', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2122, NULL, NULL, NULL, NULL, N'communication_class', N'10019', N'身心障礙-其他', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2123, NULL, NULL, NULL, NULL, N'root', N'identify_type', N'身分類型', 1, N'(未使用)', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2124, NULL, NULL, NULL, NULL, N'identify_type', N'1', N'專業投資之自然人 ', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2125, NULL, NULL, NULL, NULL, N'identify_type', N'2', N'申請調處時最近一年度資產總額在1億元以下之法人 ', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2126, NULL, NULL, NULL, NULL, N'identify_type', N'3', N'申請調處時最近一年度資產總額在1億元以上，20億元以下之法人 ', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2127, NULL, NULL, NULL, NULL, N'identify_type', N'4', N'申請調處時最近一年度資產總額在20億元以上之法人 ', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2128, NULL, NULL, NULL, NULL, N'identify_type', N'5', N'銀行國際金融業務分行(OBU)之台資客戶 ', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2129, NULL, NULL, NULL, NULL, N'identify_type', N'6', N'其他 	', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2130, NULL, NULL, NULL, NULL, N'root', N'issue_sign_kind', N'簽核類型', 1, N'(未使用)', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2131, NULL, NULL, NULL, NULL, N'issue_sign_kind', N'mediate', N'調處成立 ', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2132, NULL, NULL, NULL, NULL, N'issue_sign_kind', N'decide', N'評議委員會做成決定', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2133, NULL, NULL, NULL, NULL, N'issue_sign_kind', N'cancel', N'撤回', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2134, NULL, NULL, NULL, NULL, N'root', N'owner_type', N'承辦人類型', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2135, NULL, NULL, NULL, NULL, N'owner_type', N'center', N'中心承辦人', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2136, NULL, NULL, NULL, NULL, N'owner_type', N'company', N'業者承辦人', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2137, NULL, NULL, NULL, NULL, N'dispute_kind', N'Y', N'理賠', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2144, NULL, NULL, NULL, NULL, N'dispute_kind', N'N', N'非理賠', 1, N'(未使用)', N'2', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2221, NULL, NULL, NULL, NULL, N'dispute_kind', N'1', N'投保時已患疾病或在妊娠中', 1, N'(未使用)', N'1', N'100315', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2222, NULL, NULL, NULL, NULL, N'dispute_kind', N'2', N'違反告知義務', 1, N'(未使用)', N'2', N'100314', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2223, NULL, NULL, NULL, NULL, N'dispute_kind', N'3', N'除外責任', 1, N'(未使用)', N'3', N'100311', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2224, NULL, NULL, NULL, NULL, N'dispute_kind', N'4', N'必要性醫療', 1, N'(未使用)', N'4', N'100313', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2225, NULL, NULL, NULL, NULL, N'dispute_kind', N'5', N'醫療單據認定', 1, N'(未使用)', N'5', N'100312', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2226, NULL, NULL, NULL, NULL, N'dispute_kind', N'6', N'等待期間發生或確診之疾病認定', 1, N'(未使用)', N'6', N'100392', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2227, NULL, NULL, NULL, NULL, N'dispute_kind', N'7', N'停效期間事故認定', 1, N'(未使用)', N'7', N'100393', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2228, NULL, NULL, NULL, NULL, N'dispute_kind', N'8', N'失能或豁免保費體況認定', 1, N'(未使用)', N'8', N'100394', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2229, NULL, NULL, NULL, NULL, N'dispute_kind', N'9', N'殘廢等級認定', 1, N'(未使用)', N'9', N'100623', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2230, NULL, NULL, NULL, NULL, N'dispute_kind', N'10', N'癌症或其併發症認定', 1, N'(未使用)', N'10', N'100390', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2231, NULL, NULL, NULL, NULL, N'dispute_kind', N'11', N'手術認定', 1, N'(未使用)', N'11', N'100391', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2232, NULL, NULL, NULL, NULL, N'dispute_kind', N'12', N'時效爭議', 1, N'(未使用)', N'12', N'100316', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2233, NULL, NULL, NULL, NULL, N'dispute_kind', N'13', N'複保險', 1, N'(未使用)', N'13', N'100318', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2234, NULL, NULL, NULL, NULL, N'dispute_kind', N'14', N'事故發生原因認定', 1, N'(未使用)', N'14', N'100308', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2235, NULL, NULL, NULL, NULL, N'dispute_kind', N'15', N'因果關係認定', 1, N'(未使用)', N'15', N'100622', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2236, NULL, NULL, NULL, NULL, N'dispute_kind', N'16', N'遲延給付', 1, N'(未使用)', N'16', N'100395', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2237, NULL, NULL, NULL, NULL, N'dispute_kind', N'17', N'條款解釋爭議', 1, N'(未使用)', N'17', N'100307', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2238, NULL, NULL, NULL, NULL, N'dispute_kind', N'18', N'契約效力爭議', 1, N'(未使用)', N'18', N'100317', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2239, NULL, NULL, NULL, NULL, N'dispute_kind', N'19', N'理賠金額認定', 1, N'(未使用)', N'19', N'100309', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2240, NULL, NULL, NULL, NULL, N'dispute_kind', N'20', N'承保範圍', 1, N'(未使用)', N'20', N'100310', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2241, NULL, NULL, NULL, NULL, N'dispute_kind', N'21', N'其他', 1, N'(未使用)', N'21', N'100319', N'100020', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2242, NULL, NULL, NULL, NULL, N'dispute_kind', N'22', N'費率爭議', 1, N'(未使用)', N'1', N'100329', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2243, NULL, NULL, NULL, NULL, N'dispute_kind', N'23', N'保費之交付', 1, N'(未使用)', N'2', N'100327', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2244, NULL, NULL, NULL, NULL, N'dispute_kind', N'24', N'挪用保費', 1, N'(未使用)', N'3', N'100336', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2245, NULL, NULL, NULL, NULL, N'dispute_kind', N'25', N'保費自動墊繳', 1, N'(未使用)', N'4', N'100321', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2246, NULL, NULL, NULL, NULL, N'dispute_kind', N'26', N'未到期保費之返還', 1, N'(未使用)', N'5', N'100328', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2247, NULL, NULL, NULL, NULL, N'dispute_kind', N'27', N'拒保或加費承保爭議', 1, N'(未使用)', N'6', N'100338', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2248, NULL, NULL, NULL, NULL, N'dispute_kind', N'28', N'違反告知義務', 1, N'(未使用)', N'7', N'100332', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2249, NULL, NULL, NULL, NULL, N'dispute_kind', N'29', N'違反適合度爭議', 1, N'(未使用)', N'8', N'100396', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2250, NULL, NULL, NULL, NULL, N'dispute_kind', N'30', N'未經被保險人同意', 1, N'(未使用)', N'9', N'100339', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2251, NULL, NULL, NULL, NULL, N'dispute_kind', N'31', N'未經法定代理人同意', 1, N'(未使用)', N'10', N'100340', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2252, NULL, NULL, NULL, NULL, N'dispute_kind', N'32', N'要保人/被保險人非親簽', 1, N'(未使用)', N'11', N'100341', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2253, NULL, NULL, NULL, NULL, N'dispute_kind', N'33', N'未收到保單或收據', 1, N'(未使用)', N'12', N'100344', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2254, NULL, NULL, NULL, NULL, N'dispute_kind', N'34', N'契約撤銷', 1, N'(未使用)', N'13', N'100323', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2255, NULL, NULL, NULL, NULL, N'dispute_kind', N'35', N'契約轉換', 1, N'(未使用)', N'14', N'100324', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2256, NULL, NULL, NULL, NULL, N'dispute_kind', N'36', N'契約變更', 1, N'(未使用)', N'15', N'100325', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2257, NULL, NULL, NULL, NULL, N'dispute_kind', N'37', N'通知義務(含危險增加或減少)', 1, N'(未使用)', N'16', N'100333', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2258, NULL, NULL, NULL, NULL, N'dispute_kind', N'38', N'要保人或受益人變更', 1, N'(未使用)', N'17', N'100342', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2259, NULL, NULL, NULL, NULL, N'dispute_kind', N'39', N'複保險', 1, N'(未使用)', N'18', N'100334', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2260, NULL, NULL, NULL, NULL, N'dispute_kind', N'40', N'停效復效爭議', 1, N'(未使用)', N'19', N'100330', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2261, NULL, NULL, NULL, NULL, N'dispute_kind', N'41', N'解約爭議', 1, N'(未使用)', N'20', N'100320', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2262, NULL, NULL, NULL, NULL, N'dispute_kind', N'42', N'時效爭議', 1, N'(未使用)', N'21', N'100397', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2263, NULL, NULL, NULL, NULL, N'dispute_kind', N'43', N'續保爭議', 1, N'(未使用)', N'22', N'100337', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2264, NULL, NULL, NULL, NULL, N'dispute_kind', N'44', N'保單紅利', 1, N'(未使用)', N'23', N'100326', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2265, NULL, NULL, NULL, NULL, N'dispute_kind', N'45', N'保單借款', 1, N'(未使用)', N'24', N'100331', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2266, NULL, NULL, NULL, NULL, N'dispute_kind', N'46', N'年金/滿期金給付', 1, N'(未使用)', N'25', N'100305', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2267, NULL, NULL, NULL, NULL, N'dispute_kind', N'47', N'業務招攬爭議', 1, N'(未使用)', N'26', N'100335', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2268, NULL, NULL, NULL, NULL, N'dispute_kind', N'48', N'未遵循服務規範', 1, N'(未使用)', N'27', N'100343', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2269, NULL, NULL, NULL, NULL, N'dispute_kind', N'49', N'承保範圍', 1, N'(未使用)', N'28', N'100322', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2270, NULL, NULL, NULL, NULL, N'dispute_kind', N'50', N'其他', 1, N'(未使用)', N'29', N'100345', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2271, NULL, NULL, NULL, NULL, N'dispute_kind', N'51', N'定價政策', 1, N'(未使用)', N'30', N'100762', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2272, NULL, NULL, NULL, NULL, N'dispute_kind', N'52', N'信用評等', 1, N'(未使用)', N'31', N'100763', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2273, NULL, NULL, NULL, NULL, N'dispute_kind', N'53', N'投資表現', 1, N'(未使用)', N'32', N'100764', N'100021', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2274, NULL, NULL, NULL, NULL, N'dispute_kind', N'54', N'存款盜領、冒領爭議（含外匯）', 1, N'(未使用)', N'0', N'100600', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2275, NULL, NULL, NULL, NULL, N'dispute_kind', N'55', N'受理票據託收爭議', 1, N'(未使用)', N'1', N'100601', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2276, NULL, NULL, NULL, NULL, N'dispute_kind', N'56', N'受理匯款爭議（含電匯、票匯、信匯）', 1, N'(未使用)', N'2', N'100602', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2277, NULL, NULL, NULL, NULL, N'dispute_kind', N'57', N'外幣現鈔、旅行支票買賣爭議', 1, N'(未使用)', N'3', N'100603', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2278, NULL, NULL, NULL, NULL, N'dispute_kind', N'58', N'金融卡申請（換發、取消）或相關業務爭議', 1, N'(未使用)', N'4', N'100604', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2279, NULL, NULL, NULL, NULL, N'dispute_kind', N'59', N'保證金金額相關爭議', 1, N'(未使用)', N'5', N'100605', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2280, NULL, NULL, NULL, NULL, N'dispute_kind', N'60', N'不動產抵押權塗銷爭議', 1, N'(未使用)', N'6', N'100606', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2281, NULL, NULL, NULL, NULL, N'dispute_kind', N'61', N'辦理掛失業務爭議', 1, N'(未使用)', N'7', N'100607', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2282, NULL, NULL, NULL, NULL, N'dispute_kind', N'62', N'其他帳務交易（如不當扣款等）爭議', 1, N'(未使用)', N'8', N'100608', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2283, NULL, NULL, NULL, NULL, N'dispute_kind', N'63', N'違反認識客戶(KYC)規範爭議', 1, N'(未使用)', N'9', N'100609', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2284, NULL, NULL, NULL, NULL, N'dispute_kind', N'64', N'違反金融產品條件或風險說明爭議', 1, N'(未使用)', N'10', N'100610', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2285, NULL, NULL, NULL, NULL, N'dispute_kind', N'65', N'違反（定期）履行報告及通知義務爭議', 1, N'(未使用)', N'11', N'100611', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2286, NULL, NULL, NULL, NULL, N'dispute_kind', N'66', N'信用或現金卡申請、換發、取消或其相關業務爭議', 1, N'(未使用)', N'12', N'100612', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2287, NULL, NULL, NULL, NULL, N'dispute_kind', N'67', N'信用卡消費款代償、結清或爭議款爭議', 1, N'(未使用)', N'13', N'100613', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2288, NULL, NULL, NULL, NULL, N'dispute_kind', N'68', N'違反債權催收規範爭議', 1, N'(未使用)', N'14', N'100614', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2289, NULL, NULL, NULL, NULL, N'dispute_kind', N'69', N'違反自動化服務規範爭議', 1, N'(未使用)', N'15', N'100615', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2290, NULL, NULL, NULL, NULL, N'dispute_kind', N'70', N'境外金融商品買賣爭議', 1, N'(未使用)', N'16', N'100616', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2291, NULL, NULL, NULL, NULL, N'dispute_kind', N'71', N'受理信用狀業務爭議', 1, N'(未使用)', N'17', N'100617', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
GO
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2292, NULL, NULL, NULL, NULL, N'dispute_kind', N'72', N'其他爭議', 1, N'(未使用)', N'18', N'100618', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2293, NULL, NULL, NULL, NULL, N'dispute_kind', N'73', N'信用卡優惠項目之取得或是喪失爭議', 1, N'(未使用)', N'19', N'100624', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2294, NULL, NULL, NULL, NULL, N'dispute_kind', N'74', N'契約效力或條款解釋爭議（含存款、投資、授信、信用卡、外匯等）', 1, N'(未使用)', N'20', N'100499', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2295, NULL, NULL, NULL, NULL, N'dispute_kind', N'75', N'違反受理業務應告知事項義務爭議', 1, N'(未使用)', N'21', N'100518', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2296, NULL, NULL, NULL, NULL, N'dispute_kind', N'76', N'違反客戶辦理金融商品適合度爭議', 1, N'(未使用)', N'22', N'100501', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2297, NULL, NULL, NULL, NULL, N'dispute_kind', N'77', N'契約非本人親簽爭議（含存款、投資、授信、信用卡、外匯等）', 1, N'(未使用)', N'23', N'100502', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2298, NULL, NULL, NULL, NULL, N'dispute_kind', N'78', N'受理存、提款爭議（含外匯）', 1, N'(未使用)', N'24', N'100503', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2299, NULL, NULL, NULL, NULL, N'dispute_kind', N'79', N'受理存款、放款開戶爭議（含外匯）', 1, N'(未使用)', N'25', N'100504', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2300, NULL, NULL, NULL, NULL, N'dispute_kind', N'80', N'費用或違約金爭議收取爭議（含存款、投資、授信、信用卡、外匯等）', 1, N'(未使用)', N'26', N'100507', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2301, NULL, NULL, NULL, NULL, N'dispute_kind', N'81', N'票據權利爭議(含發票、退票、支付、掛失止付、公示催告、除權判決等)', 1, N'(未使用)', N'27', N'100508', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2302, NULL, NULL, NULL, NULL, N'dispute_kind', N'82', N'違反保證人徵提規範爭議', 1, N'(未使用)', N'28', N'100509', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2303, NULL, NULL, NULL, NULL, N'dispute_kind', N'83', N'貸款金額代償或結清爭議', 1, N'(未使用)', N'29', N'100510', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2304, NULL, NULL, NULL, NULL, N'dispute_kind', N'84', N'申請貸款清償證明爭議', 1, N'(未使用)', N'30', N'100511', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2305, NULL, NULL, NULL, NULL, N'dispute_kind', N'85', N'金融機構報送聯徵資料登載爭議', 1, N'(未使用)', N'31', N'100512', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2306, NULL, NULL, NULL, NULL, N'dispute_kind', N'86', N'金融機構未依規定查詢聯徵資料', 1, N'(未使用)', N'32', N'100625', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2307, NULL, NULL, NULL, NULL, N'dispute_kind', N'87', N'洩露個人資料爭議', 1, N'(未使用)', N'33', N'100513', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2308, NULL, NULL, NULL, NULL, N'dispute_kind', N'88', N'民事強制執行爭議', 1, N'(未使用)', N'34', N'100515', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2309, NULL, NULL, NULL, NULL, N'dispute_kind', N'89', N'定價政策', 1, N'(未使用)', N'35', N'100802', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2310, NULL, NULL, NULL, NULL, N'dispute_kind', N'90', N'信用評等', 1, N'(未使用)', N'36', N'100803', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2311, NULL, NULL, NULL, NULL, N'dispute_kind', N'91', N'投資表現', 1, N'(未使用)', N'37', N'100804', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2312, NULL, NULL, NULL, NULL, N'dispute_kind', N'92', N'債務協商', 1, N'(未使用)', N'38', N'100801', N'100001', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2314, NULL, NULL, NULL, NULL, N'file_path', N'form_template_path', N'報表樣板', 1, N'(未使用)', N'000', N'(未使用)', N'com/ezcore/tools/spreadsheetgen/template/', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2315, NULL, NULL, NULL, NULL, N'root', N'band_code', N'案件主檔顯示區塊定義', 1, NULL, N'010', N'[未使用]', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2316, NULL, NULL, NULL, NULL, N'band_code', N'base', N'案件文號', 1, NULL, N'020', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2317, NULL, NULL, CAST(N'2023-07-18T13:58:52.650' AS DateTime), N'admin', N'band_code', N'attribute', N'案件資訊', 1, NULL, N'030', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2318, NULL, NULL, NULL, NULL, N'band_code', N'users', N'人名資料', 1, NULL, N'040', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2319, NULL, NULL, NULL, NULL, N'band_code', N'user_refer', N'契約關係人', 1, NULL, N'050', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2320, NULL, NULL, NULL, NULL, N'band_code', N'dispute.content', N'爭議內容', 1, NULL, N'060', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2321, NULL, NULL, NULL, NULL, N'band_code', N'flow', N'案件進度', 1, NULL, N'070', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2322, NULL, NULL, NULL, NULL, N'band_code', N'annotation', N'案情摘要', 1, NULL, N'080', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2323, NULL, NULL, NULL, NULL, N'band_code', N'memo', N'案件備註', 1, NULL, N'090', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2324, NULL, NULL, NULL, NULL, N'band_code', N'receiveAppl', N'案關文號', 1, NULL, N'100', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2325, NULL, NULL, NULL, NULL, N'band_code', N'receiveOther1', N'立委關切', 1, NULL, N'110', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2326, NULL, NULL, NULL, NULL, N'band_code', N'receiveOther2', N'法院核可', 1, NULL, N'120', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2327, NULL, NULL, NULL, NULL, N'band_code', N'consultant', N'諮詢顧問', 1, NULL, N'130', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2328, NULL, NULL, NULL, NULL, N'band_code', N'preExam', N'預審資訊', 1, NULL, N'140', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2329, NULL, NULL, NULL, NULL, N'band_code', N'meet', N'提會', 1, NULL, N'150', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2330, NULL, NULL, NULL, NULL, N'band_code', N'mediate', N'調處程序', 1, NULL, N'160', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2331, NULL, NULL, NULL, NULL, N'band_code', N'dispute.decision', N'評議決定', 1, NULL, N'170', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2332, NULL, NULL, NULL, NULL, N'band_code', N'companyResponse', N'金融服務業回覆', 1, NULL, N'180', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2333, NULL, NULL, NULL, NULL, N'band_code', N'closeSummary', N'議事行政(決定)', 1, NULL, N'190', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2334, NULL, NULL, NULL, NULL, N'root', N'caseType.band', N'收件方式-顯示區塊', 1, N'(未使用)', NULL, N'band_code', N'可異動身分類型', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2335, NULL, NULL, NULL, NULL, N'caseType.band', N'C01003-title', N'臨櫃件-功能區塊', 1, N'(未使用)', N'010', N'title', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2336, NULL, NULL, NULL, NULL, N'caseType.band', N'C01003-base', N'臨櫃件-案件文號', 1, N'(未使用)', N'020', N'base', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2337, NULL, NULL, CAST(N'2023-07-18T14:00:59.707' AS DateTime), N'admin', N'caseType.band', N'C01003-attribut', N'臨櫃件-案件資訊', 1, N'(未使用)', N'030', N'attribut', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2338, NULL, NULL, NULL, NULL, N'caseType.band', N'C01003-users', N'臨櫃件-人名資料', 1, N'(未使用)', N'040', N'users', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2339, NULL, NULL, NULL, NULL, N'caseType.band', N'C01003-dispute.content', N'臨櫃件-爭議內容', 1, N'(未使用)', N'050', N'dispute.content', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2340, NULL, NULL, NULL, NULL, N'caseType.band', N'C01003-annoation', N'臨櫃件-案件摘要', 1, N'(未使用)', N'060', N'annoation', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2341, NULL, NULL, NULL, NULL, N'caseType.band', N'C01003-flow', N'臨櫃件-案件進度', 1, N'(未使用)', N'070', N'flow', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2342, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-title', N'電話件-功能區塊', 1, N'(未使用)', N'010', N'title', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2343, NULL, NULL, NULL, NULL, N'caseType.band', N'C01002-base', N'電話件-案件文號', 1, N'(未使用)', N'020', N'base', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2344, NULL, NULL, CAST(N'2023-07-18T14:00:55.190' AS DateTime), N'admin', N'caseType.band', N'C01002-attribut', N'電話件-案件資訊', 1, N'(未使用)', N'030', N'attribut', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2345, NULL, NULL, NULL, NULL, N'caseType.band', N'C01002-users', N'電話件-人名資料', 1, N'(未使用)', N'040', N'users', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2346, NULL, NULL, NULL, NULL, N'caseType.band', N'C01002-user_refer', N'電話件-契約關係人', 1, N'(未使用)', N'050', N'user_refer', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2347, NULL, NULL, NULL, NULL, N'caseType.band', N'C01002-dispute.content', N'電話件-爭議內容', 1, N'(未使用)', N'060', N'dispute.content', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2348, NULL, NULL, NULL, NULL, N'caseType.band', N'C01002-flow', N'電話件-案件進度', 1, N'(未使用)', N'070', N'flow', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2349, NULL, NULL, NULL, NULL, N'caseType.band', N'C01002-annoation', N'電話件-案件摘要', 1, N'(未使用)', N'080', N'annoation', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2350, NULL, NULL, NULL, NULL, N'caseType.band', N'C01002-memo', N'電話件-案件備註', 1, N'(未使用)', N'090', N'memo', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2351, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-base', N'公文件-案件文號', 1, N'(未使用)', N'020', N'base', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2352, NULL, NULL, CAST(N'2023-07-18T14:00:49.500' AS DateTime), N'admin', N'caseType.band', N'C01001-attribute', N'公文件-案件資訊', 1, N'(未使用)', N'030', N'attribut', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2353, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-users', N'公文件-人名資料', 1, N'(未使用)', N'040', N'users', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2354, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-user_refer', N'公文件-契約關係人', 1, N'(未使用)', N'050', N'user_refer', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2355, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-dispute.content', N'公文件-爭議內容', 1, N'(未使用)', N'060', N'dispute.content', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2356, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-flow', N'公文件-案件進度', 1, N'(未使用)', N'070', N'flow', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2357, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-consultant', N'公文件-諮詢顧問', 1, N'(未使用)', N'080', N'consultant', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2358, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-preExam', N'公文件-預審資訊', 1, N'(未使用)', N'090', N'preExam', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2359, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-meet', N'公文件-提會', 1, N'(未使用)', N'100', N'meet', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2360, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-dispute.decision', N'公文件-評議決定', 1, N'(未使用)', N'110', N'dispute.decision', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2361, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-mediate', N'公文件-調處程序', 1, N'(未使用)', N'120', N'mediate', N'updateByOwner,updateByMember', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2362, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-annotation', N'公文件-案件摘要', 1, N'(未使用)', N'130', N'annoation', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2363, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-memo', N'公文件-案件備註', 1, N'(未使用)', N'140', N'memo', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2364, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-refDocNoAppl', N'公文件-案關文號', 1, N'(未使用)', N'150', N'receiveAppl', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2365, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-companyResponse', N'公文件-金融服務業回覆', 1, N'(未使用)', N'160', N'companyResponse', N'updateByCompanyOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2366, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-refDocNoOther1', N'公文件-立切關切', 1, N'(未使用)', N'170', N'receiveOther1', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2367, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-refDocNoOther2', N'公文件-法院核可', 1, N'(未使用)', N'180', N'receiveOther2', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2368, NULL, NULL, NULL, NULL, N'caseType.band', N'C01001-closeSummary', N'公文件-議事行政(決定 )', 1, N'(未使用)', N'190', N'closeSummary', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2369, NULL, NULL, NULL, NULL, N'root', N'column_adjust', N'欄位調整', 1, N'(未使用)', NULL, N'欄位類型(fix/dynamic)', N'欄位型別(dynamic類)', N'版面寬', N'版面高', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2370, NULL, NULL, NULL, NULL, N'column_adjust', N'caseNo', N'申請編號', 1, N'(未使用)', NULL, N'fix', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2371, NULL, NULL, NULL, NULL, N'column_adjust', N'caseDate', N'申請日期/時間', 1, N'(未使用)', NULL, N'fix', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2372, NULL, NULL, NULL, NULL, N'column_adjust', N'subject', N'主旨', 1, N'(未使用)', NULL, N'fix', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2373, NULL, NULL, NULL, NULL, N'column_adjust', N'receiveName', N'來文者', 1, N'(未使用)', NULL, N'fix', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2374, NULL, NULL, NULL, NULL, N'column_adjust', N'dytest1', N'動態欄位1', 1, N'(未使用)', NULL, N'dynamic', N'text', N'1', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2375, NULL, NULL, NULL, NULL, N'column_adjust', N'dytest2', N'動態欄位2', 1, N'(未使用)', NULL, N'dynamic', N'date', N'1', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2376, NULL, NULL, NULL, NULL, N'column_adjust', N'dytest3', N'動態欄位3', 1, N'(未使用)', NULL, N'dynamic', N'datetime', N'1', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2377, NULL, NULL, NULL, NULL, N'column_adjust', N'dytest4', N'動態欄位4', 1, N'(未使用)', NULL, N'dynamic', N'text', N'1', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2378, NULL, NULL, NULL, NULL, N'column_adjust', N'docCombo', N'評字號', 1, N'(未使用)', NULL, N'combo', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2379, NULL, NULL, NULL, NULL, N'column_adjust', N'applealCaseNo', N'原申訴案號', 1, N'(未使用)', NULL, N'fix', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2380, NULL, NULL, NULL, NULL, N'column_adjust', N'continueCombo', N'續辦否/續辦案號', 1, N'(未使用)', NULL, N'combo', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2381, NULL, NULL, NULL, NULL, N'column_adjust', N'contractNo', N'契約號碼', 1, N'(未使用)', NULL, N'fix', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2382, NULL, NULL, NULL, NULL, N'column_adjust', N'communicationClass', N'來文態樣', 1, N'(未使用)', NULL, N'fix', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2383, NULL, NULL, NULL, NULL, N'column_adjust', N'identifyType', N'身分類型', 1, N'(未使用)', NULL, N'fix', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2384, NULL, NULL, NULL, NULL, N'column_adjust', N'reviewSignDate', N'申訴轉評議簽收日', 1, N'(未使用)', NULL, N'fix', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2385, NULL, NULL, NULL, NULL, N'column_adjust', N'agreeStopDate', N'合意停止日(地院轉介案)', 1, N'(未使用)', NULL, N'fix', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2386, NULL, NULL, NULL, NULL, N'column_adjust', N'isSpecialExtent', N'是否簽延長', 1, N'(未使用)', NULL, N'fix', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2387, NULL, NULL, NULL, NULL, N'column_adjust', N'publicMemoGrid', N'公開備註', 1, N'(未使用)', NULL, N'grid', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2388, NULL, NULL, NULL, NULL, N'root', N'special', N'件別', 1, N'(未使用)', N'000', N'對應之公文-字', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2389, NULL, NULL, NULL, NULL, N'special', N'C00001', N'一般件', 1, N'(未使用)', N'000', N'評', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2390, NULL, NULL, NULL, NULL, N'special', N'C00002', N'特補件', 1, N'(未使用)', N'000', N'他', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2391, NULL, NULL, NULL, NULL, N'special', N'C00003', N'TRF專案', 1, N'(未使用)', N'000', N'特', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2392, NULL, NULL, NULL, NULL, N'special', N'C00004', N'非複雜型專案', 1, N'(未使用)', N'000', N'非', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
GO
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2393, NULL, NULL, NULL, NULL, N'special', N'C00005', N'金融科技創新專案', 1, N'(未使用)', N'000', N'', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2394, NULL, NULL, NULL, NULL, N'special', N'C00006', N'學保件', 1, N'(未使用)', N'000', N'學', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2395, NULL, NULL, NULL, NULL, N'special', N'C00007', N'農險件', 1, N'(未使用)', N'000', N'農', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2396, NULL, NULL, NULL, NULL, N'root', N'plan_type', N'提會類型', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2397, NULL, NULL, NULL, NULL, N'plan_type', N'01', N'一般', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2398, NULL, NULL, NULL, NULL, N'plan_type', N'02', N'不受理', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2399, NULL, NULL, NULL, NULL, N'plan_type', N'03', N'諮委', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2400, NULL, NULL, NULL, NULL, N'plan_type', N'04', N'報告案', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2401, NULL, NULL, NULL, NULL, N'plan_type', N'05', N'甲乙案', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2402, NULL, NULL, NULL, NULL, N'root', N'mediate_type', N'試行調處-成立否', 1, N'(未使用)', N'000', N'調處', N'成立否', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2403, NULL, NULL, NULL, NULL, N'mediate_type', N'0', N'否不調處', 1, N'(未使用)', N'000', N'0', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2404, NULL, NULL, NULL, NULL, N'mediate_type', N'1', N'調處成立', 1, N'(未使用)', N'000', N'1', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2405, NULL, NULL, NULL, NULL, N'mediate_type', N'2', N'調處不成立', 1, N'(未使用)', N'000', N'1', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2406, NULL, NULL, NULL, NULL, N'root', N'contact_type', N'聯繫目的', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2407, NULL, NULL, NULL, NULL, N'contact_type', N'mediate', N'調處', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2408, NULL, NULL, NULL, NULL, N'contact_type', N'contract', N'聯繫', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2409, NULL, NULL, NULL, NULL, N'root', N'contact_method', N'調處方式/聯繫方式', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2410, NULL, NULL, NULL, NULL, N'contact_method', N'phone', N'電話', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2411, NULL, NULL, NULL, NULL, N'contact_method', N'turnUp', N'到場', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2412, NULL, NULL, NULL, NULL, N'contact_method', N'paper', N'書面', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2413, NULL, NULL, NULL, NULL, N'root', N'contract_user_kind', N'聯繫對象(調處)', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2414, NULL, NULL, NULL, NULL, N'contract_user_kind', N'applicant', N'申請人', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2415, NULL, NULL, NULL, NULL, N'contract_user_kind', N'agent', N'代理人', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2416, NULL, NULL, NULL, NULL, N'contract_user_kind', N'company', N'相對人', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2417, NULL, NULL, NULL, NULL, N'contract_user_kind', N'other', N'其他', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2418, NULL, NULL, NULL, NULL, N'root', N'sign_status', N'審核狀態', 1, N'(未使用)', N'000', N'同意否', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2419, NULL, NULL, NULL, NULL, N'sign_status', N'agree', N'同意', 1, N'(未使用)', N'000', N'1', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2420, NULL, NULL, NULL, NULL, N'sign_status', N'reject', N'不同意', 1, N'(未使用)', N'000', N'0', NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2421, NULL, NULL, NULL, NULL, N'case_log_type', N'Mail.preExam', N'預審通知', 1, N'(未使用)', N'000', NULL, NULL, N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2422, NULL, NULL, NULL, NULL, N'close_reason1', N'10038', N'非金融消費爭議', 1, N'(未使用)', N'000', N'T01003', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2423, NULL, NULL, NULL, NULL, N'close_reason1', N'10045', N'其他', 1, N'(未使用)', N'000', N'T01003', N'Y', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2424, NULL, NULL, NULL, NULL, N'caseType.band', N'C01002-title', N'電話件-功能區塊', 1, N'(未使用)', N'010', N'title', N'updateByOwner', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2426, NULL, NULL, NULL, NULL, N'session', N'7', N'7', NULL, NULL, NULL, N'2023/07/11', N'2023/07/13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2428, CAST(N'2023-07-18T00:00:00.000' AS DateTime), N'nfoi', NULL, NULL, N'root', N'appeal_type', N'是否曾向業者申訴', 1, N'電話件-申訴確認視窗的本次是否曾向業者申訴選項值', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2429, CAST(N'2023-07-18T00:00:00.000' AS DateTime), N'nfoi', NULL, NULL, N'appeal_type', N'1', N'否', 1, N'(未使用)', N'1', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2430, CAST(N'2023-07-18T00:00:00.000' AS DateTime), N'nfoi', NULL, NULL, N'appeal_type', N'2', N'申訴過，惟已超過法定期限60天（請依話術說明）', 1, N'(未使用)', N'2', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2431, CAST(N'2023-07-18T00:00:00.000' AS DateTime), N'nfoi', NULL, NULL, N'appeal_type', N'3', N'申訴過，惟無申訴時間（請依話術說明）', 1, N'(未使用)', N'3', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2432, NULL, NULL, NULL, NULL, N'root', N'user_kind', N'臨櫃身分', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'舊系統代碼', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2433, NULL, NULL, CAST(N'2023-07-19T13:51:03.867' AS DateTime), N'admin', N'user_kind', N'contractor', N'契約當事人', NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2434, NULL, NULL, CAST(N'2023-07-19T13:51:12.860' AS DateTime), N'admin', N'user_kind', N'insured', N'被保險人', NULL, NULL, N'3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2435, NULL, NULL, CAST(N'2023-07-19T13:51:17.097' AS DateTime), N'admin', N'user_kind', N'beneficiary', N'受益人', NULL, NULL, N'4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2436, NULL, NULL, CAST(N'2023-07-19T13:51:23.357' AS DateTime), N'admin', N'user_kind', N'guarantor', N'保證人', NULL, NULL, N'5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2437, NULL, NULL, CAST(N'2023-07-19T13:51:27.170' AS DateTime), N'admin', N'user_kind', N'other', N'其他', NULL, NULL, N'6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2438, NULL, NULL, CAST(N'2023-07-19T13:51:08.347' AS DateTime), N'admin', N'user_kind', N'proposer', N'要保人', NULL, NULL, N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'new', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2454, NULL, NULL, NULL, NULL, N'root', N'ws', N'評議動作代碼', 1, N'(未使用)', N'000', N'程式名稱', N'新增流程', N'日期參數(0: 收文時間, 1: 決行時間, 2: 發文時間, 3: 來文日期, 4: 電子來文轉入日期)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2455, NULL, NULL, NULL, NULL, N'ws', N'10002', N'補正通知書函', 1, N'(未使用)', N'001', N'wsDocDefault', N'10013', N'2', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2456, NULL, NULL, NULL, NULL, N'ws', N'10003.F001', N'申請人補正資料日', 1, N'(未使用)', N'002', N'wsDocDefault', N'10049', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2457, NULL, NULL, NULL, NULL, N'ws', N'10003.F002', N'申請人首次提出補充理由書', 1, N'(未使用)', N'003', N'wsDocDefault', N'10050', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2458, NULL, NULL, NULL, NULL, N'ws', N'10003.F003', N'申請人提出病歷資料', 1, N'(未使用)', N'004', N'wsDocDefault', N'10051', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2459, NULL, NULL, NULL, NULL, N'ws', N'10003.F004', N'評議委員或諮詢委員要求提出病歷資料', 1, N'(未使用)', N'005', N'wsDocDefault', N'10052', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2460, NULL, NULL, NULL, NULL, N'ws', N'10003.F005', N'大會決議延長之日', 1, N'(未使用)', N'006', N'wsDocDefault', N'10053', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2461, NULL, NULL, NULL, NULL, N'ws', N'10004', N'請求金融服務業陳述意見書函', 1, N'(未使用)', N'007', N'wsDocDefault', N'10010', N'2', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2462, NULL, NULL, NULL, NULL, N'ws', N'10028', N'(未使用)', 1, N'(未使用)', N'008', N'wsDocDefault', N'10010', N'2', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2463, NULL, NULL, NULL, NULL, N'ws', N'10005.0', N'金融服務業陳述意見函', 1, N'(未使用)', N'009', N'wsDocCompanyResponse', N'10035', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2464, NULL, NULL, NULL, NULL, N'ws', N'10005.1', N'金融服務業陳述意見函', 1, N'(未使用)', N'010', N'wsDocCompanyResponse', N'10035', N'3', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2465, NULL, NULL, NULL, NULL, N'ws', N'10005.C1', N'受理金融服務業回覆陳述意見', 1, N'(未使用)', N'011', N'wsDocDefault', N'10011', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2466, NULL, NULL, NULL, NULL, N'ws', N'10005.C2', N'金融服務業回覆申訴處理結果', 1, N'(未使用)', N'012', N'wsDocDefault', N'10004', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2467, NULL, NULL, NULL, NULL, N'ws', N'10005.C3', N'受理金融服務業回覆處理申訴', 1, N'(未使用)', N'013', N'wsDocDefault', N'10022', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2468, NULL, NULL, NULL, NULL, N'ws', N'10006', N'詢問諮詢顧問意見書函稿', 1, N'(未使用)', N'014', N'wsDocDefault', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2469, NULL, NULL, NULL, NULL, N'ws', N'10007', N'諮詢顧問意見回函', 1, N'(未使用)', N'015', N'wsDocDefault', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2470, NULL, NULL, NULL, NULL, N'ws', N'10030', N'(未使用)', 1, N'(未使用)', N'016', N'wsDocDefault', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2471, NULL, NULL, NULL, NULL, N'ws', N'10013', N'調處成立通知函及附件調處書', 1, N'(未使用)', N'017', N'wsDocDefault', N'10042', N'0', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2472, CAST(N'2023-07-28T12:58:55.040' AS DateTime), N'admin', CAST(N'2023-07-28T12:59:31.380' AS DateTime), N'admin', N'case_file_type', N'WEB030201', N'電子檔上傳頁面', 1, N'(未使用)', N'008', N'(未使用)', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2473, NULL, NULL, NULL, NULL, N'exam_status', N'0', N'未送審', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA1002', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2478, NULL, NULL, NULL, NULL, N'email_template', N'smtp001', N'14', 1, N'金融服務業未辦理案件，專案移交金融業者超過21天，機催將逾期業者通知信', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2484, NULL, NULL, NULL, NULL, N'email_template', N'smtp002', N'15', 1, N'金融服務業未辦理案件，專案移交金融業者超過30天，機催將逾期業者通知信', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2486, NULL, NULL, NULL, NULL, N'email_template', N'smtp003', N'16', 1, N'每週五統計當周稽催統計', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2489, NULL, NULL, NULL, NULL, N'email_template', N'smtp004', N'18', 1, N'提供資訊人員核對機催通知信是否執行完成。', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2490, NULL, NULL, NULL, NULL, N'email_template', N'smtp005', N'20', 1, N'通知承辦人逾二個月未結案案件提醒', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2491, NULL, NULL, NULL, NULL, N'email_template', N'smtp006', N'21', 1, N'通知議事行政人員', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2492, NULL, NULL, NULL, NULL, N'email_template', N'smtp007', N'17', 1, N'議事行政逾二個月未結案案件提醒', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2493, NULL, NULL, NULL, NULL, N'email_template', N'smtp008', N'27', 1, N'案件未如期移交金融服務業處理，於第3個工作日示警通知金融業者。', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2494, NULL, NULL, NULL, NULL, N'email_template', N'smtp009', N'31', 1, N'案件未如期移交評議處處理，於第3個工作日示警通知承辦人。', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2495, NULL, NULL, NULL, NULL, N'email_template', N'smtp010', N'32', 1, N'每週一以EMAIL通知已逾二個月之尚未通過大會的專案(承辦人)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2496, NULL, NULL, NULL, NULL, N'email_template', N'smtp011', N'33', 1, N'每週一以EMAIL通知已逾二個月之尚未通過大會的專案(議事行政人員)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2497, NULL, NULL, NULL, NULL, N'email_template', N'smtp012', N'34', 1, N'每週一以EMAIL通知已逾二個月之尚未通過大會的專案(專委)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2498, NULL, NULL, NULL, NULL, N'email_template', N'smtp013', N'35', 1, N'每天以EMAIL通知承辦及單位主管已逾二個半月(70日)之尚未通過大會案件(組長)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2499, NULL, NULL, NULL, NULL, N'email_template', N'smtp014', N'36', 1, N'每天以EMAIL通知承辦及單位主管已逾二個半月(70日)之尚未通過大會案件(副處長)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2500, NULL, NULL, NULL, NULL, N'email_template', N'smtp015', N'37', 1, N'每天以EMAIL通知承辦及單位主管已逾二個半月(70日)之尚未通過大會案件(專委)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2501, NULL, NULL, NULL, NULL, N'email_template', N'smtp016', N'38', 1, N'每週一以EMAIL通知承辦已通過大會或撤回,調處成立而逾45天尚未結案之案件(承辦人)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2502, NULL, NULL, NULL, NULL, N'email_template', N'smtp017', N'39', 1, N'每週一以EMAIL通知承辦已通過大會或撤回,調處成立而逾45天尚未結案之案件(議事行政人員)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2503, NULL, NULL, NULL, NULL, N'email_template', N'smtp018', N'40', 1, N'每週一以EMAIL通知承辦已通過大會或撤回,調處成立而逾45天尚未結案之案件(專委)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2504, NULL, NULL, NULL, NULL, N'email_template', N'smtp019', N'41', 1, N'通知預審委員協助預審', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2505, NULL, NULL, NULL, NULL, N'email_template', N'smtp020', N'42', 1, N'預審委員超過5個日曆天未回覆預審意見，以電子郵件通知預審委員', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2506, NULL, NULL, NULL, NULL, N'email_template', N'smtp021', N'43', 1, N'債務協商-電話進件通知銀行信', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2507, NULL, NULL, NULL, NULL, N'email_template', N'smtp022', N'44', 1, N'移交金融服務業處理申訴', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2508, NULL, NULL, NULL, NULL, N'email_template', N'smtp023', N'45', 1, N'業者完成線上對件發出疑義通知信(業者端)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2509, NULL, NULL, NULL, NULL, N'email_template', N'smtp024', N'46', 1, N'業者完成線上對件發出疑義通知信(線上對件承辦人)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2510, NULL, NULL, NULL, NULL, N'email_template', N'smtp025', N'47', 1, N'如果有清空委員資料，通知案件最後承辦人和sysuser', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2511, NULL, NULL, NULL, NULL, N'email_template', N'smtp026', N'48', 1, N'確認是否已先向金融服務業申訴，通知業者接獲案件申訴(TRF案件)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2512, NULL, NULL, NULL, NULL, N'email_template', N'smtp027', N'49', 1, N'確認是否已先向金融服務業申訴，通知業者接獲案件申訴', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2513, NULL, NULL, NULL, NULL, N'email_template', N'smtp028', N'50', 1, N'確認是否已先向金融服務業申訴，通知業者接獲案件申訴(金管會副知之申訴案件)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2514, NULL, NULL, NULL, NULL, N'email_template', N'smtp029', N'51', 1, N'確認是否已先向金融服務業申訴，通知業者接獲案件申訴(金管服務業)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2515, NULL, NULL, NULL, NULL, N'email_template', N'smtp030', N'52', 1, N'新增備註', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2516, NULL, NULL, NULL, NULL, N'email_template', N'smtp031', N'53', 1, N'通知業者登入案管系統受理案件(主管機關:金管會、保險局、銀行局、證期局)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2517, NULL, NULL, NULL, NULL, N'email_template', N'smtp032', N'54', 1, N'通知業者登入案管系統受理案件(銀行局)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2518, NULL, NULL, NULL, NULL, N'email_template', N'smtp033', N'55', 1, N'通知業者登入案管系統受理案件(各銀行)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2519, NULL, NULL, NULL, NULL, N'email_template', N'smtp034', N'56', 1, N'新增案件進度', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2520, NULL, NULL, NULL, NULL, N'email_template', N'smtp035', N'91', 1, N'(Insert_casencc)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2521, NULL, NULL, NULL, NULL, N'email_template', N'smtp036', N'92', 1, N'案件主檔維護', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
GO
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2522, NULL, NULL, NULL, NULL, N'email_template', N'smtp037', N'93', 1, N'輸入備註', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2523, NULL, NULL, NULL, NULL, N'email_template', N'smtp038', N'94', 1, N'案件主檔維護(金融業者備註)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2524, NULL, NULL, NULL, NULL, N'email_template', N'smtp039', N'95', 1, N'輸入備註觸發寄給金融業者', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2525, NULL, NULL, NULL, NULL, N'email_template', N'smtp040', N'96', 1, N'專案移交給業者會觸發寄信', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2526, NULL, NULL, NULL, NULL, N'email_template', N'smtp041', N'97', 1, N'(TRF、非複雜專案、學生團體保險、農業保險)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2527, NULL, NULL, NULL, NULL, N'email_template', N'smtp042', N'98', 1, N'電話進件留言板新增通知信', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2528, NULL, NULL, NULL, NULL, N'email_template', N'smtp043', N'99', 1, N'承辦人留言給主管機關(a金管會、a保險局、a銀行局、a證期局、b銀行局、b各銀行)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2529, NULL, NULL, NULL, NULL, N'email_template', N'smtp044', N'100', 1, N'電話進件留言板新增通知信', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2530, NULL, NULL, NULL, NULL, N'email_template', N'smtp045', N'101', 1, N'主管機關留言給承辦人', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2531, NULL, NULL, NULL, NULL, N'email_template', N'smtp046', N'102', 1, N'業者修改基本資料通知信', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2532, NULL, NULL, NULL, NULL, N'email_template', N'smtp047', N'103', 1, N'預審判斷書各委員回覆狀態通知信', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2533, NULL, NULL, NULL, NULL, N'email_template', N'smtp048', N'104', 1, N'「預審判斷書」通知信', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2534, NULL, NULL, NULL, NULL, N'email_template', N'smtp049', N'105', 1, N'將申請人補正相關文件資料上傳至案管系統', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2535, NULL, NULL, NULL, NULL, N'email_template', N'smtp050', N'106', 1, N'(案關文號中心檔案上傳、案關文號業者檔案上傳)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2536, NULL, NULL, NULL, NULL, N'email_template', N'smtp051', N'107', 1, N'使用者忘記密碼，使用查詢密碼信件通知', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2537, NULL, NULL, NULL, NULL, N'email_template', N'smtp052', N'108', 1, N'連續登入失敗通知信', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2538, NULL, NULL, NULL, NULL, N'email_template', N'smtp053', N'109', 1, N'帳號超過180日停用通知', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2539, NULL, NULL, NULL, NULL, N'email_template', N'smtp054', N'110', 1, N'帳號超過180日停用通知', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2540, NULL, NULL, NULL, NULL, N'email_template', N'smtp055', N'111', 1, N'雙重認證（Two-factor authentication）機制，於使用者登入後，系統自動發送檢核電子郵件給該使用者，並於信件中附上隨機產生之四位數檢核碼', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2541, NULL, NULL, NULL, NULL, N'email_template', N'smtp056', N'112', 1, N'系統管理員發送忘記密碼通知信', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2542, NULL, NULL, NULL, NULL, N'root', N'meeting_file_type', N'會議檔案類型', NULL, NULL, NULL, N'顯示位置-預設選項', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2543, NULL, NULL, NULL, NULL, N'meeting_file_type', N'1', N'會議目錄', NULL, NULL, NULL, N'public', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2544, NULL, NULL, NULL, NULL, N'meeting_file_type', N'2', N'會議議程', NULL, NULL, NULL, N'public', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2545, NULL, NULL, NULL, NULL, N'meeting_file_type', N'3', N'會議紀錄', NULL, NULL, NULL, N'private', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2546, NULL, NULL, NULL, NULL, N'meeting_file_type', N'9', N'其他', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2547, NULL, NULL, NULL, NULL, N'root', N'meeting_file_display', N'會議檔案顯示位置', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2548, NULL, NULL, NULL, NULL, N'meeting_file_display', N'public', N'(委員)會議與預審資料/提會查詢', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2549, NULL, NULL, NULL, NULL, N'meeting_file_display', N'private', N'會議議程', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2550, NULL, NULL, NULL, NULL, N'root', N'meeting_result_desc', N'會議決議結果(文字選項)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2551, NULL, NULL, NULL, NULL, N'meeting_result_desc', N'1', N'照案通過，請依規定辦理評議程序。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2552, NULL, NULL, NULL, NULL, N'meeting_result_desc', N'2', N'經與會委員表決後同意採甲案，請依規定辦理評議程序。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2553, NULL, NULL, NULL, NULL, N'meeting_result_desc', N'3', N'經與會委員表決後同意採乙案，請依規定辦理評議程序。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2554, NULL, NULL, NULL, NULL, N'meeting_result_desc', N'4', N'本件撤案。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2555, NULL, NULL, NULL, NULL, N'API.Comm07', N'workgroup.10', N'名單-0800電話客服', NULL, NULL, NULL, N'10', N'Y', N'Y', N'1', NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2556, NULL, NULL, NULL, NULL, N'API.Comm07', N'workgroup.11', N'名單-服務組審核人員', NULL, NULL, NULL, N'11', N'Y', N'Y', N'1', NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2557, NULL, NULL, NULL, NULL, N'API.Comm07', N'workgroup.12', N'名單-服務組主管', NULL, NULL, NULL, N'12', N'Y', N'Y', N'1', NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2558, NULL, NULL, NULL, NULL, N'API.Comm07', N'workgroup.21', N'名單-申訴組承辦人', NULL, NULL, NULL, N'21', N'Y', N'Y', N'1', NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2559, NULL, NULL, NULL, NULL, N'API.Comm07', N'workgroup.22', N'名單-申訴組主管', NULL, NULL, NULL, N'22', N'Y', N'Y', N'1', NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2560, NULL, NULL, NULL, NULL, N'API.Comm07', N'workgroup.31', N'名單-評議主管', NULL, NULL, NULL, N'31', N'Y', N'Y', N'1', NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2561, NULL, NULL, NULL, NULL, N'API.Comm07', N'workgroup.32', N'名單-評議承辦人', NULL, NULL, NULL, N'32', N'Y', N'Y', N'1', NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2562, NULL, NULL, NULL, NULL, N'API.Comm07', N'workgroup.33', N'名單-調處人員', NULL, NULL, NULL, N'33', N'Y', N'Y', N'1', NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2563, NULL, NULL, NULL, NULL, N'API.Comm07', N'workgroup.34', N'名單-議事人員', NULL, NULL, NULL, N'34', N'Y', N'Y', N'1', NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2564, NULL, NULL, NULL, NULL, N'API.Comm07', N'WEB010803', N'提會查詢', NULL, NULL, NULL, N'32,33', N'Y', N'N', N'1', NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2565, NULL, NULL, NULL, NULL, N'API.Comm07', N'WEB090101.mediate', N'調處人員', NULL, NULL, NULL, N'33', N'Y', N'Y', N'1', NULL, NULL, NULL, NULL, N'', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2567, NULL, NULL, NULL, NULL, N'email_template', N'sms001', N'129', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2568, NULL, NULL, NULL, NULL, N'email_template', N'sms002', N'130', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2570, NULL, NULL, NULL, NULL, N'email_template', N'sms003', N'131', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2571, NULL, NULL, NULL, NULL, N'email_template', N'sms004', N'132', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2572, NULL, NULL, NULL, NULL, N'reparation', N'0', N'無理賠', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
INSERT [codedetail] ([cid], [ins_date], [ins_usr], [upd_date], [upd_usr], [kind], [code], [name], [is_enabled], [description], [sort_code], [property1], [property2], [property3], [property4], [property5], [property6], [property7], [property8], [property9], [child_id], [parent_id]) VALUES (2573, NULL, NULL, NULL, NULL, N'reparation', N'1', N'有理賠', 1, N'(未使用)', N'000', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', N'(未使用)', NULL, NULL)
SET IDENTITY_INSERT [codedetail] OFF
GO
SET IDENTITY_INSERT [codedetail_filter] ON 

INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (1, 1612, 1549, N'1100', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (2, 1613, 1553, N'2000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (3, 1613, 1600, N'9000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (4, 1613, 1601, N'9000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (5, 1613, 1608, N'9000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (6, 1614, 1554, N'2000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (7, 1614, 1556, N'2000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (8, 1615, 1557, N'2000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (9, 1615, 1558, N'2000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (10, 1615, 1559, N'2000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (11, 1615, 1560, N'2000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (12, 1615, 1561, N'2000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (13, 1615, 1562, N'2000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (14, 1615, 1563, N'2000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (15, 1615, 1564, N'2000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (16, 1615, 1600, N'9000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (17, 1615, 1601, N'9000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (18, 1615, 1608, N'9000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (19, 1618, 1566, N'1100', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (20, 1622, 1608, N'9000', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (23, 1643, 1635, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (24, 1643, 1636, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (25, 1643, 1637, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (26, 1643, 1638, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (27, 1644, 1631, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (28, 1645, 1640, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (29, 1645, 1641, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (30, 1631, 1629, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (31, 1631, 1626, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (32, 1633, 1625, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (33, 1633, 1626, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (34, 1635, 1625, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (35, 1635, 1626, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (36, 1635, 1627, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (37, 1635, 1628, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (38, 1634, 1626, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (39, 1639, 1627, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (40, 1636, 1625, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (41, 1636, 1626, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (42, 1636, 1627, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (43, 1636, 1628, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (44, 1637, 1625, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (45, 1637, 1626, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (46, 1637, 1627, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (47, 1637, 1628, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (48, 1640, 1625, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (49, 1640, 1626, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (50, 1640, 1627, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (51, 1640, 1628, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (52, 1641, 1625, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (53, 1641, 1626, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (54, 1641, 1627, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (55, 1641, 1628, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (56, 1625, 1674, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (57, 1626, 1670, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (58, 1626, 1671, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (59, 1627, 1671, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (60, 1627, 1672, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (61, 1627, 1673, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (62, 1628, 1669, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (63, 1628, 1671, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (64, 1628, 1672, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (65, 1628, 1673, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (99, 1643, 2389, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (100, 1643, 2390, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (101, 1643, 2391, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (102, 1643, 2392, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (103, 1643, 2393, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (104, 1643, 2394, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (105, 1643, 2395, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (106, 1644, 2389, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (107, 1644, 2390, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (108, 1644, 2391, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (109, 1644, 2392, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (110, 1644, 2394, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (111, 1644, 2395, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (112, 1669, 1661, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (113, 1670, 1658, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (114, 1671, 1660, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (115, 1672, 1660, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (116, 1673, 1661, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (117, 1674, 1662, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (118, 1673, 1691, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (119, 1673, 1692, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (120, 1673, 1693, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (121, 1673, 1694, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (122, 1673, 1695, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (123, 1673, 1696, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (124, 1669, 1676, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (125, 1669, 1677, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (126, 1669, 1678, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (127, 1669, 1679, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (128, 1669, 1680, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (129, 1669, 1681, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (130, 1669, 1682, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (131, 1669, 1683, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (132, 1669, 1684, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (133, 1671, 1689, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (134, 1671, 1690, N'(未使用)', N'(未使用)', N'(未使用)')
GO
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (135, 1672, 1689, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (136, 1672, 1690, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (137, 1670, 1685, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (138, 1670, 1686, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (139, 1670, 1687, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (140, 1670, 1688, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (141, 1674, 2422, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (142, 1674, 1697, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (143, 1674, 1698, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (144, 1674, 1700, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (145, 1674, 1701, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (146, 1674, 1702, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (147, 1674, 1703, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (148, 1674, 2423, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (149, 2351, 2370, N'rename', N'收文文號', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (150, 2351, 2371, N'rename', N'收文日期', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (151, 2351, 2374, N'add', N'動態欄位1', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (152, 2351, 2375, N'add', N'動態欄位2', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (153, 2351, 2376, N'add', N'動態欄位3', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (154, 2351, 2377, N'add', N'動態欄位4', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (155, 2343, 2370, N'rename', N'收件編號', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (156, 2343, 2371, N'rename', N'來電日期/時間', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (157, 2343, 2372, N'hide', NULL, N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (158, 2343, 2373, N'hide', NULL, N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (159, 2336, 2370, N'rename', N'臨櫃編號', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (160, 2336, 2371, N'rename', N'臨櫃日期/時間', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (161, 2336, 2372, N'hide', NULL, N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (162, 2336, 2373, N'hide', NULL, N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (163, 2363, 2387, N'hide', NULL, N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (182, 1645, 2335, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (183, 1645, 2336, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (184, 1645, 2337, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (185, 1645, 2338, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (186, 1645, 2339, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (187, 1645, 2340, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (188, 1645, 2341, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (189, 1644, 2343, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (190, 1644, 2344, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (191, 1644, 2345, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (192, 1644, 2346, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (193, 1644, 2347, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (194, 1644, 2348, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (195, 1644, 2349, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (196, 1644, 2350, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (197, 1643, 2342, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (198, 1643, 2351, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (199, 1643, 2352, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (200, 1643, 2353, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (201, 1643, 2354, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (202, 1643, 2355, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (203, 1643, 2356, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (204, 1643, 2357, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (205, 1643, 2358, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (206, 1643, 2359, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (207, 1643, 2360, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (208, 1643, 2361, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (209, 1643, 2362, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (210, 1643, 2363, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (211, 1643, 2364, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (212, 1643, 2365, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (213, 1643, 2366, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (214, 1643, 2367, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (215, 1643, 2368, N'(未使用)', N'(未使用)', N'(未使用)')
INSERT [codedetail_filter] ([id], [pid], [fid], [option1], [option2], [option3]) VALUES (216, 1629, 1674, N'(未使用)', N'(未使用)', N'(未使用)')
SET IDENTITY_INSERT [codedetail_filter] OFF
GO
SET IDENTITY_INSERT [sys_user] ON 

INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (1, 24, N'admin', N'ezcore', NULL, N'男', N'0908765433', N'ezadmin@ezcore.com', N'avatar-2022122710170439.png', N'C:\\ez-admin\\avatar\\avatar-2022122710170439.png', N'$2a$10$5XpavnwVP8P58zAzMOm7WOpJ9SWh.iOw4swCHi7VRLF/sMWwiVyuu', 1, 1, N'0', CAST(N'2023-08-07T18:47:00.080' AS DateTime), 0, NULL, N'admin', CAST(N'2018-08-23T09:11:56.000' AS DateTime), CAST(N'2023-08-07T18:47:00.187' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (7, 27, N'foi01', N'f01', NULL, N'男', N'987654321', N'f01@mail.com', NULL, NULL, N'$2a$10$mO/l7Q8GRCuXR1dtoqf.YOSelkK2xjMg91M0KdvLaZXyYgvhmdVJq', 0, 1, N'0', CAST(N'2023-01-18T15:26:51.000' AS DateTime), 0, N'admin', N'foi01', CAST(N'2022-12-16T09:49:31.000' AS DateTime), CAST(N'2023-01-18T15:26:51.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (8, 28, N'foi02', N'f02', NULL, N'男', N'987654320', N'f02@mail.com', NULL, NULL, N'$2a$10$ASpGMo1B8wUnbefmQNVVA.1nTjagDkh.CLy4odbRwK3U27Ex75G6C', 0, 1, N'0', CAST(N'2023-01-17T11:22:24.000' AS DateTime), 0, N'admin', N'foi02', CAST(N'2022-12-16T09:51:56.000' AS DateTime), CAST(N'2023-01-17T11:22:24.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (9, 29, N'foi03', N'f03', NULL, N'男', N'987654319', N'f03@mail.com', NULL, NULL, N'$2a$10$WExo40ZuxqeFkKhbGja39OFKPbmv8hakS0v.YS8ZeB1oSPKHHvlwG', 0, 1, N'0', CAST(N'2023-07-17T17:43:01.843' AS DateTime), 0, N'admin', N'foi03', CAST(N'2022-12-16T09:52:28.000' AS DateTime), CAST(N'2023-07-17T17:43:01.867' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (10, 117, N'foi04', N'f04', NULL, N'男', N'987654318', N'f04@mail.com', NULL, NULL, N'$2a$10$8zsZGz9o87u2z9HgMT8ek.3cvRPCFeS6uf77hA8GeCdw.BmljirRW', 0, 1, N'0', CAST(N'2023-06-17T11:06:34.630' AS DateTime), 0, N'admin', N'foi04', CAST(N'2022-12-16T09:53:20.000' AS DateTime), CAST(N'2023-06-17T11:06:34.667' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (11, 118, N'foi05', N'f05', NULL, N'男', N'987654317', N'f05@mail.com', NULL, NULL, N'$2a$10$InyZx/U6uvg8.cmNciOQ9.9OHRoPR3KiUEuBiaTL6dkazbwRY9S2G', 0, 1, N'0', CAST(N'2022-12-27T11:22:35.000' AS DateTime), 0, N'admin', N'foi05', CAST(N'2022-12-16T09:53:51.000' AS DateTime), CAST(N'2022-12-27T11:22:35.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (12, 119, N'foi06', N'f06', NULL, N'男', N'987654316', N'f06@mail.com', NULL, NULL, N'$2a$10$hZsXiW6f8umLr3iR9w8fAu1QaNEE5VIpyyis2XL6NIGa8tJ9ycY6G', 0, 1, N'0', CAST(N'2022-12-16T11:50:55.000' AS DateTime), 0, N'admin', N'foi06', CAST(N'2022-12-16T09:54:31.000' AS DateTime), CAST(N'2022-12-16T11:50:55.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (13, 120, N'foi07', N'f07', NULL, N'男', N'987654315', N'f07@mail.com', NULL, NULL, N'$2a$10$YGnMfdc6CzO5hJpuHpm0We2bdGwrc4cVcNm2JSsseOwmCUiZP70hu', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T09:55:06.000' AS DateTime), CAST(N'2022-12-16T09:55:06.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (14, 121, N'foi08', N'f08', NULL, N'男', N'987654314', N'f08@mail.com', NULL, NULL, N'$2a$10$gGv5kCFz2CRhrx5NZiaD6u7ZP6qbfuMSjO0/yfv46sb2qQ23OPl7a', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T09:56:06.000' AS DateTime), CAST(N'2022-12-16T09:57:11.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (15, 122, N'foi09', N'f09', NULL, N'男', N'987654313', N'f09@mail.com', NULL, NULL, N'$2a$10$eYUeCBqDHng8a93AzLkYTuzCkP1e0Coqn7YeADgbh3d2JLnSF37N6', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T09:57:47.000' AS DateTime), CAST(N'2022-12-16T09:57:47.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (16, 111, N'foi10', N'f10', NULL, N'男', N'987654312', N'f10@mail.com', NULL, NULL, N'$2a$10$mvjV6Q00hLH1psPTJqyKnOeZnuhKA3hVvev5lLR6P3ow0cbM0myKm', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T09:58:23.000' AS DateTime), CAST(N'2022-12-16T09:58:23.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (17, 112, N'foi11', N'f11', NULL, N'女', N'987654311', N'f11@mail.com', NULL, NULL, N'$2a$10$RyYUZLAUk7/XRttW1OK7EOWei8SBz08DSSZamNFOpyf8gOXEqzP1a', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T09:58:56.000' AS DateTime), CAST(N'2022-12-16T09:58:56.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (18, 113, N'foi12', N'f12', NULL, N'女', N'987654310', N'f12@mail.com', NULL, NULL, N'$2a$10$sueYMWOIf1wMCKi02vKQCuq2nCzxkWshLTfzhoCHYKcuneTXm/XRq', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T09:59:43.000' AS DateTime), CAST(N'2022-12-16T09:59:43.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (19, 114, N'foi13', N'f13', NULL, N'女', N'987654309', N'f13@mail.com', NULL, NULL, N'$2a$10$lt4IX/5w4TIMRFlPlTOoKelMAzEkL2yFO/sJouPg0bj8hbxQvOAvW', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T10:00:18.000' AS DateTime), CAST(N'2022-12-16T10:00:18.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (20, 115, N'foi14', N'f14', NULL, N'女', N'987654308', N'f14@mail.com', NULL, NULL, N'$2a$10$0/o7JsEPrK5VHymI9GCeaOchQrXui8gT3tu/YDuFkrEMQ2Yf0MGku', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T10:01:05.000' AS DateTime), CAST(N'2022-12-16T10:01:05.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (21, 116, N'foi15', N'f15', NULL, N'女', N'987654307', N'f15@mail.com', NULL, NULL, N'$2a$10$bzaHUHYpS77IdawYzP1Z9.4pAnoENBz1JjL0uiog4lVuqE9lKxubu', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T10:05:46.000' AS DateTime), CAST(N'2022-12-16T10:05:46.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (22, 123, N'foi16', N'f16', NULL, N'男', N'987654306', N'f16@mail.com', NULL, NULL, N'$2a$10$RdlI1WKtdpVa/3hrtdXWqeemdeCPs68cKNw6KuWFTj7S3ugZX1NYu', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T10:08:28.000' AS DateTime), CAST(N'2022-12-16T11:11:21.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (23, 124, N'foi17', N'f17', NULL, N'女', N'987654305', N'f17@mail.com', NULL, NULL, N'$2a$10$boxztKMIDfCaiUVETKU/QuoQ8YNDx5/Q/B6tB8n8BOA2LUJFDHQwS', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T10:09:06.000' AS DateTime), CAST(N'2022-12-16T10:09:06.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (24, 125, N'foi18', N'f18', NULL, N'女', N'987654304', N'f18@mail.com', NULL, NULL, N'$2a$10$FKV5R/VRJRG0Cq6BwSCI6eUkNftJ3D0X44HKR89poP0e.VXmAs8Qe', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T11:16:05.000' AS DateTime), CAST(N'2022-12-16T11:16:05.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (25, 126, N'foi19', N'f19', NULL, N'女', N'987654303', N'f19@mail.com', NULL, NULL, N'$2a$10$ecbJAYw3SZsFJ2BEMigZk.Pp1dy5fjYFRsOnKf3VuPQd3lHsZ9x0u', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T11:16:36.000' AS DateTime), CAST(N'2022-12-16T11:16:36.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (26, 53, N'foi20', N'f20', NULL, N'女', N'987654302', N'f20@mail.com', NULL, NULL, N'$2a$10$scKPA7GEyoLLoDji7WOibubkq4uJFkIqRPL2hOF4dvgcXGmAWcUN2', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T11:18:03.000' AS DateTime), CAST(N'2022-12-16T11:18:03.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (27, 54, N'foi21', N'f21', NULL, N'女', N'987654301', N'f21@mail.com', NULL, NULL, N'$2a$10$EKB7AYrk7cloRUGvlvmFNuzJzgBsZudulJQa6UNrpt.iTxMWyyAEW', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T11:19:14.000' AS DateTime), CAST(N'2022-12-16T11:19:14.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (28, 56, N'foi22', N'f22', NULL, N'男', N'987654298', N'f22@mail.com', NULL, NULL, N'$2a$10$4ATSNxG2kM8B4JvG6VK1VOfDhM2HYwv6p/sx7KsU5tGFrWlW2/xbi', 0, 1, N'0', NULL, 0, N'admin', N'admin', CAST(N'2022-12-16T11:31:12.000' AS DateTime), CAST(N'2022-12-16T11:36:56.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (29, 57, N'foi23', N'f23', NULL, N'男', N'987654297', N'f23@mail.com', NULL, NULL, N'$2a$10$4H8NnRsgHlXeEUkkpINUO.Vu6g1/lyMJcLYXs.NVfRT/2zUPcEkwu', 0, 1, N'0', CAST(N'2022-12-27T19:08:54.000' AS DateTime), 0, N'admin', N'foi23', CAST(N'2022-12-16T11:32:24.000' AS DateTime), CAST(N'2022-12-27T19:08:54.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (30, 61, N'foi24', N'f24', NULL, N'男', N'987654296', N'f24@mail.com', NULL, NULL, N'$2a$10$ko7Qit5STO0rZ6cPuTFJ0O77/m2afqSRG.fGfaVFZ4XpHnwNI6eU.', 0, 1, N'0', CAST(N'2022-12-27T11:22:50.000' AS DateTime), 0, N'admin', N'foi24', CAST(N'2022-12-16T11:37:37.000' AS DateTime), CAST(N'2022-12-27T11:22:50.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (31, 62, N'foi25', N'f25', NULL, N'男', N'987654295', N'f25@mail.com', NULL, NULL, N'$2a$10$CTUkMz0R7T/ZEiFoz3hMDOwdahI6Vm23rydOrb150g0vpO/9W2QVi', 0, 1, N'0', CAST(N'2022-12-16T11:48:14.000' AS DateTime), 0, N'admin', N'foi25', CAST(N'2022-12-16T11:38:13.000' AS DateTime), CAST(N'2022-12-16T11:48:14.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (32, 65, N'foi26', N'f26', NULL, N'男', N'987654294', N'f26@mail.com', NULL, NULL, N'$2a$10$siKV7/Dt/WMVso./chS4Pei2p6j5HXLu4bLeapTqhyBj63PHsy4ue', 0, 1, N'0', CAST(N'2023-01-09T15:45:02.000' AS DateTime), 0, N'admin', N'foi26', CAST(N'2022-12-16T11:41:33.000' AS DateTime), CAST(N'2023-01-09T15:45:02.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (33, 65, N'foi27', N'f27', NULL, N'男', N'987654293', N'f27@mail.com', NULL, NULL, N'$2a$10$oNonYgnOWyNide5sRkZfvuPY1h5Txui2c8hH/aEf/JVq1iJp8tati', 0, 1, N'0', CAST(N'2023-01-10T09:09:28.000' AS DateTime), 0, N'admin', N'foi27', CAST(N'2022-12-16T11:42:14.000' AS DateTime), CAST(N'2023-01-10T09:09:28.000' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (40, 24, N'test', N'test', NULL, N'男', N'0987654321', N'test@test.tw', NULL, NULL, N'$2a$10$Eyj4l8Qdmv3E2yk97Igt8ugcudZ7zNfoPLB1vIGwPOquj0bx6kuE.', 0, 1, NULL, CAST(N'2023-07-17T17:42:29.787' AS DateTime), 0, N'admin', N'test', CAST(N'2023-01-18T14:31:19.000' AS DateTime), CAST(N'2023-07-17T17:42:29.807' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (41, NULL, N'A010000000002001', N'奕科銀行銀行業-外國銀行管理者', NULL, NULL, NULL, NULL, NULL, NULL, N'1qaz@WSX', 1, 1, NULL, NULL, NULL, N'admin', N'admin', CAST(N'2023-07-12T17:26:25.457' AS DateTime), CAST(N'2023-07-12T17:26:25.457' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (48, 24, N'foiadmin', N'中心管理者', NULL, N'男', N'0987654324', N'foiadmin@foi.tw', NULL, NULL, N'$2a$10$Oj9djLOrnfy2ByjGCODOx.aW7O6iaxSjQzYWgOgwlX5GHDPEMNEkO', 0, 1, NULL, CAST(N'2023-07-28T13:59:59.987' AS DateTime), 0, N'admin', N'foiadmin', CAST(N'2023-07-21T18:33:57.107' AS DateTime), CAST(N'2023-07-28T14:00:00.003' AS DateTime))
INSERT [sys_user] ([user_id], [dept_id], [account], [name], [nickname], [gender], [phone], [email], [avatar_name], [avatar_path], [password], [is_admin], [enabled], [err_flag], [latest_login_time], [err_count], [create_by], [update_by], [create_time], [update_time]) VALUES (49, 18, N'companyadmin', N'公司管理者', NULL, N'男', N'0912345699', N'companyad@company.tw', NULL, NULL, N'$2a$10$onDuYq3ptLWnRFAxfdgo5e8pU2GlMMrzTHxUGcCoTxZ5wbH30/dXK', 0, 1, NULL, CAST(N'2023-07-28T15:12:46.580' AS DateTime), 0, N'admin', N'companyadmin', CAST(N'2023-07-21T19:09:38.653' AS DateTime), CAST(N'2023-07-28T15:12:46.597' AS DateTime))
SET IDENTITY_INSERT [sys_user] OFF
GO
SET IDENTITY_INSERT [substitute] ON 

INSERT [substitute] ([id], [main_id], [subs_id], [begins], [ends], [active]) VALUES (1, 40, 1, CAST(N'2023-04-17T13:10:00.000' AS DateTime), CAST(N'2023-05-17T13:10:00.000' AS DateTime), 0)
INSERT [substitute] ([id], [main_id], [subs_id], [begins], [ends], [active]) VALUES (2, 40, 12, CAST(N'2023-04-17T13:10:00.000' AS DateTime), CAST(N'2023-05-17T13:10:00.000' AS DateTime), 0)
INSERT [substitute] ([id], [main_id], [subs_id], [begins], [ends], [active]) VALUES (3, 40, 1, CAST(N'2023-06-02T00:00:00.000' AS DateTime), CAST(N'2023-07-02T23:59:59.000' AS DateTime), 0)
INSERT [substitute] ([id], [main_id], [subs_id], [begins], [ends], [active]) VALUES (4, 9, 40, CAST(N'2023-07-17T00:00:00.000' AS DateTime), CAST(N'2023-07-20T23:59:59.000' AS DateTime), 0)
SET IDENTITY_INSERT [substitute] OFF
GO
SET IDENTITY_INSERT [__demo] ON 

INSERT [__demo] ([__demo_id], [__demo_msg_a], [__demo_msg_b], [__demo_msg_c], [create_by], [update_by], [create_time], [update_time]) VALUES (1, N'Terminator', N'1984', N'very famous', N'admin', N'admin', CAST(N'2023-06-02T17:14:40.510' AS DateTime), CAST(N'2023-06-02T17:14:40.510' AS DateTime))
INSERT [__demo] ([__demo_id], [__demo_msg_a], [__demo_msg_b], [__demo_msg_c], [create_by], [update_by], [create_time], [update_time]) VALUES (2, N'Terminator 2', N'1991', N'still very famous', N'admin', N'admin', CAST(N'2023-06-02T17:15:30.470' AS DateTime), CAST(N'2023-06-02T17:15:30.470' AS DateTime))
SET IDENTITY_INSERT [__demo] OFF
GO
INSERT [actioncode_pgcode] ([actioncode], [pgcode]) VALUES (N'10010', N'web1001')
INSERT [actioncode_pgcode] ([actioncode], [pgcode]) VALUES (N'10020', N'web1002')
INSERT [actioncode_pgcode] ([actioncode], [pgcode]) VALUES (N'10030', N'web1003')
INSERT [actioncode_pgcode] ([actioncode], [pgcode]) VALUES (N'10050', N'web1004')
GO
INSERT [CASE_CONSULTANT] ([id], [case_master_tid], [member_tid], [seq_no], [name], [issue_no], [issue_date], [receive_date], [receive_no], [create_by], [create_time], [update_by], [update_time]) VALUES (N'7af90537-8a6e-44be-8d82-dd7418a7d461', N'40bdb528-7d8a-4f72-81b7-c1c9703370d9', N'd0756417-2d50-4fcc-b840-96a6cb479b70', 1, N'陳顧問', NULL, CAST(N'2023-06-12' AS Date), NULL, NULL, N'admin', CAST(N'2023-06-12T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [CASE_DOC_EXT] ([id], [case_master_tid], [subject], [receive_name], [communication_class_cid], [identify_type_cid], [doc_year], [doc_word], [doc_no], [agree_stop_date], [is_special_extent], [review_sign_date], [issue_sign_date], [issue_sign_kind_cid], [issue_cancel_date], [issue_sure_date], [issue_receive_no], [create_by], [create_time], [update_by], [update_time]) VALUES (N'fa98e82a-219d-42d5-b3c1-281d526a46c5', N'33ab62b7-c9d1-42cd-8f45-99dd2d7a03b0', N'測試文號一', N'皮皮', 1836, 1853, N'112', N'評', N'00035', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'admin', CAST(N'2023-06-08T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [CASE_EFLOW] ([id], [case_master_tid], [pcode], [process_no], [current_code], [current_workgroup_code], [current_account], [action_account], [next_code], [next_workgroup_code], [next_account], [create_by], [create_time], [update_by], [update_time]) VALUES (N'65cdc6fc-66c5-4ecc-bd15-187a8601d73e', N'5f29b65e-d9f8-4ddb-84cd-a80c369d76c4', N'1000', N'20230714001', N'1110', N'11', N'foi02', N'a01', N'1111', N'12', NULL, N'a01', CAST(N'2023-07-14T19:00:17.200' AS DateTime), NULL, NULL)
INSERT [CASE_EFLOW] ([id], [case_master_tid], [pcode], [process_no], [current_code], [current_workgroup_code], [current_account], [action_account], [next_code], [next_workgroup_code], [next_account], [create_by], [create_time], [update_by], [update_time]) VALUES (N'668137e0-156a-418c-bf0c-bb5dbc648584', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', N'1000', N'20230619012', N'0000', N'10', N'foi02', N'admin', N'1110', N'11', NULL, N'admin', CAST(N'2023-06-19T18:06:36.033' AS DateTime), N'admin', CAST(N'2023-06-19T18:06:39.797' AS DateTime))
INSERT [CASE_EFLOW] ([id], [case_master_tid], [pcode], [process_no], [current_code], [current_workgroup_code], [current_account], [action_account], [next_code], [next_workgroup_code], [next_account], [create_by], [create_time], [update_by], [update_time]) VALUES (N'3adcbcdd-2898-4d7b-8673-bea02a0697e7', N'5f29b65e-d9f8-4ddb-84cd-a80c369d76c4', N'1000', N'20230629001', N'0000', N'10', N'foi02', N'admin', N'1110', N'11', NULL, N'admin', CAST(N'2023-06-29T14:00:44.167' AS DateTime), N'a01', CAST(N'2023-07-14T19:00:17.247' AS DateTime))
INSERT [CASE_EFLOW] ([id], [case_master_tid], [pcode], [process_no], [current_code], [current_workgroup_code], [current_account], [action_account], [next_code], [next_workgroup_code], [next_account], [create_by], [create_time], [update_by], [update_time]) VALUES (N'09505c42-f627-40c6-933b-c10ac4415a59', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', N'1000', N'20230619013', N'1110', N'11', N'foi02', N'admin', N'1111', N'12', NULL, N'admin', CAST(N'2023-06-19T18:06:39.773' AS DateTime), NULL, NULL)
INSERT [CASE_EFLOW] ([id], [case_master_tid], [pcode], [process_no], [current_code], [current_workgroup_code], [current_account], [action_account], [next_code], [next_workgroup_code], [next_account], [create_by], [create_time], [update_by], [update_time]) VALUES (N'a7d39690-797c-4407-89e9-e61be8310541', N'10000001-1001-1001-1001-100000000001', N'1000', N'20230714002', N'0000', N'10', N'foi02', N'a01', N'1110', N'11', NULL, N'a01', CAST(N'2023-07-14T19:08:30.777' AS DateTime), NULL, NULL)
GO
INSERT [CASE_FLOW] ([id], [case_master_tid], [flow_time], [flow_code_cid], [flow_state_cid], [doc_no], [doc_action_code], [open_modify_date], [scope_flag], [manager_flag], [owner_account], [create_by], [create_time], [update_by], [update_time]) VALUES (N'dcd56de8-bd07-4559-802a-573e687f690d', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', CAST(N'2023-05-12T12:00:00.000' AS DateTime), 1566, NULL, NULL, NULL, NULL, N'web', N'N', N'foi02', N'foi02', CAST(N'2023-05-12T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [CASE_MASTER] ([id], [case_no], [case_date], [case_type_cid], [in_method_cid], [case_class_cid], [case_class_cnt], [appeal_case_no], [appeal_case_master_tid], [contact_no], [special_cid], [is_appeal], [latest_case_flow_tid], [latest_case_eflow_tid], [tree_industry_cid], [company_tid], [dispute_kind_cid], [close_status_cid], [close_reason1_cid], [close_reason2_cid], [close_stage_cid], [center_owner_account], [company_owner_account], [is_cc], [is_close], [continue_status_cid], [pre_case_no], [pre_case_case_master_tid], [is_free], [case_attribute_old_cid], [create_by], [create_time], [update_by], [update_time], [reparation_cid]) VALUES (N'10000001-1001-1001-1001-100000000001', N'T1120524002', CAST(N'2023-06-14T13:47:06.000' AS DateTime), 1644, 1631, 1626, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1403, N'555ccccc-6e55-4385-a83f-aaa222222eee', 1740, 1674, NULL, NULL, NULL, N'foi02', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'admin', CAST(N'2023-06-05T00:00:00.000' AS DateTime), N'admin', CAST(N'2023-07-11T17:42:18.573' AS DateTime), NULL)
INSERT [CASE_MASTER] ([id], [case_no], [case_date], [case_type_cid], [in_method_cid], [case_class_cid], [case_class_cnt], [appeal_case_no], [appeal_case_master_tid], [contact_no], [special_cid], [is_appeal], [latest_case_flow_tid], [latest_case_eflow_tid], [tree_industry_cid], [company_tid], [dispute_kind_cid], [close_status_cid], [close_reason1_cid], [close_reason2_cid], [close_stage_cid], [center_owner_account], [company_owner_account], [is_cc], [is_close], [continue_status_cid], [pre_case_no], [pre_case_case_master_tid], [is_free], [case_attribute_old_cid], [create_by], [create_time], [update_by], [update_time], [reparation_cid]) VALUES (N'5f29b65e-d9f8-4ddb-84cd-a80c369d76c4', N'T1120524003', CAST(N'2023-05-12T00:00:00.000' AS DateTime), 1644, 1631, 1626, NULL, NULL, NULL, NULL, NULL, 0, NULL, N'65cdc6fc-66c5-4ecc-bd15-187a8601d73e', 1403, N'641cc8ec-6e55-4385-a83f-bd626f2760e9', 1740, 1674, NULL, NULL, NULL, N'foi02', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'admin', CAST(N'2023-06-05T00:00:00.000' AS DateTime), N'a01', CAST(N'2023-07-14T19:00:17.287' AS DateTime), 2572)
INSERT [CASE_MASTER] ([id], [case_no], [case_date], [case_type_cid], [in_method_cid], [case_class_cid], [case_class_cnt], [appeal_case_no], [appeal_case_master_tid], [contact_no], [special_cid], [is_appeal], [latest_case_flow_tid], [latest_case_eflow_tid], [tree_industry_cid], [company_tid], [dispute_kind_cid], [close_status_cid], [close_reason1_cid], [close_reason2_cid], [close_stage_cid], [center_owner_account], [company_owner_account], [is_cc], [is_close], [continue_status_cid], [pre_case_no], [pre_case_case_master_tid], [is_free], [case_attribute_old_cid], [create_by], [create_time], [update_by], [update_time], [reparation_cid]) VALUES (N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', N'T1120524001', CAST(N'2023-05-12T00:00:00.000' AS DateTime), 1644, 1631, 1626, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1403, N'641cc8ec-6e55-4385-a83f-bd626f2760e9', 1740, 1674, NULL, NULL, NULL, N's', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'admin', CAST(N'2023-06-05T00:00:00.000' AS DateTime), N'admin', CAST(N'2023-06-19T18:06:39.820' AS DateTime), 2573)
GO
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'30fc8b04-498c-4df2-a334-166501e8975f', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-07-04T10:48:18.943' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'7a2cddc1-cd39-4447-9558-38750d728200', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-06-29T14:01:45.507' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'041850e6-5acd-4010-8c12-5136b39c5a8b', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-06-29T17:59:09.017' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'2a272207-240c-4d42-853f-57a8585b5996', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-06-29T17:43:40.797' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'b41e4757-477f-4477-9ac3-5cbba538c27a', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-06-19T15:19:40.817' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'85d86af4-1031-4cb9-86e2-60a060f4b8ac', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', 2135, N'foi02', N'admin', CAST(N'2023-06-19T17:21:22.327' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'31dc23fd-b449-44ac-8d15-6303bde18cf0', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-06-19T17:14:59.130' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'8fbe420a-02ff-4c75-934a-7efd0b38354e', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-07-11T17:11:36.897' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'5785330c-e74c-400e-9723-7f11e4b65004', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-06-29T17:54:47.517' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'3467b625-6815-4a78-8efd-86566d88c308', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-06-29T14:14:58.747' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'f014436a-bda3-4e18-906f-8c8978f23f9b', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-06-29T17:51:55.983' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'e874f31b-a1d0-4601-9cb3-90c56aa95aa7', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-06-19T16:22:22.253' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'6eead068-f683-47da-87b1-a9d03a730305', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-06-29T13:32:48.063' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'8af5261b-00c1-4456-9c4c-b9d6431b9fff', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-06-29T17:41:16.790' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'2c327aaa-ad2f-4ed2-8ae4-c7f47680549f', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-06-19T17:21:29.077' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'45e51e83-29af-4dd1-8068-c8861744a0fd', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-06-29T17:58:09.220' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'1a64b09c-fbf6-49ee-8d54-d39b07e31b4a', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-07-11T17:41:18.773' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'7083cfd4-f128-435a-a188-d62f54a6ff4e', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-06-29T14:18:15.660' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'0f17bd8c-2c05-4287-bcc4-f4eb8edf02d7', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-07-11T17:38:23.753' AS DateTime))
INSERT [CASE_OWNER_LOG] ([id], [case_master_tid], [owner_type_cid], [owner_account], [create_by], [create_time]) VALUES (N'62657a58-6977-493c-8c68-f778a7289cb9', N'10000001-1001-1001-1001-100000000001', 2135, N'foi02', N'admin', CAST(N'2023-06-29T15:08:09.457' AS DateTime))
GO
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'0ff46d5a-aece-4a98-b186-234993d7b423', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f066', 1749, N'Y', N'admin', CAST(N'2023-07-17T15:53:04.783' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'ff1f1956-06c4-4f16-aa54-e820a1edbf04', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f066', 1750, N'Y', N'admin', CAST(N'2023-07-17T15:53:04.913' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'7216721a-15a9-41db-be54-2180e7acffe2', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f066', 1751, N'Y', N'admin', CAST(N'2023-07-17T15:53:04.937' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'67b543c5-295d-426b-8d3e-2e418a5952cb', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f066', 1752, N'Y', N'admin', CAST(N'2023-07-17T15:53:04.967' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'80517304-f31c-47bd-af8e-b06030fb5339', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f066', 1753, N'', N'admin', CAST(N'2023-07-17T15:53:04.987' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'6587be54-6261-4260-a7eb-8703fc43bd22', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f066', 1754, N'', N'admin', CAST(N'2023-07-17T15:53:05.007' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'1b320cb5-1980-481a-8b82-58c563b092d1', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f066', 1755, N'', N'admin', CAST(N'2023-07-17T15:53:05.030' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'c24cfada-7759-4f99-a90d-7e128d20569d', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f066', 1756, N'', N'admin', CAST(N'2023-07-17T15:53:05.050' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'7afdb940-4662-4c0d-b07c-65efae2dee83', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f066', 1757, N'', N'admin', CAST(N'2023-07-17T15:53:05.067' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'2fb60b16-f753-446b-8fe7-6c9289a7e305', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f066', 1758, N'', N'admin', CAST(N'2023-07-17T15:53:05.087' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'9ad08e70-c153-448f-8a1c-795de42b57fb', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f066', 1759, N'', N'admin', CAST(N'2023-07-17T15:53:05.103' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'c0281451-3199-4526-ab65-71af7400bece', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f077', 1749, N'Y', N'admin', CAST(N'2023-07-17T15:53:05.137' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'b118f7a4-5125-4403-86ec-c307d1e80756', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f077', 1750, N'Y', N'admin', CAST(N'2023-07-17T15:53:05.153' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'4c7675a5-d342-48a1-9cc7-1135ea0bd617', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f077', 1751, N'Y', N'admin', CAST(N'2023-07-17T15:53:05.170' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'4b318459-1cd0-45c6-bc76-7677fbf1fa05', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f077', 1752, N'Y', N'admin', CAST(N'2023-07-17T15:53:05.187' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'e1c54be4-27eb-4f75-8cf6-ab6bef0a0cc7', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f077', 1753, N'', N'admin', CAST(N'2023-07-17T15:53:05.210' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'79276a3a-3369-4840-a036-ddfbc8def921', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f077', 1754, N'', N'admin', CAST(N'2023-07-17T15:53:05.223' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'740ad7c6-dad7-46df-abb5-972e4af18467', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f077', 1755, N'', N'admin', CAST(N'2023-07-17T15:53:05.240' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'780c2652-4f27-4008-9950-89afda31fd1e', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f077', 1756, N'', N'admin', CAST(N'2023-07-17T15:53:05.257' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'466149db-ecd3-403e-a703-3793641212c5', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f077', 1757, N'', N'admin', CAST(N'2023-07-17T15:53:05.277' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'c454d0fb-b213-45b1-a247-3d788c45ef5d', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f077', 1758, N'', N'admin', CAST(N'2023-07-17T15:53:05.293' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'12c09f88-5abe-4c9c-a011-e037e3e9b53e', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f077', 1759, N'', N'admin', CAST(N'2023-07-17T15:53:05.310' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'f3dd5650-7f0e-4ec8-9ebd-cd8939fea6df', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f088', 1749, N'Y', N'admin', CAST(N'2023-07-17T15:53:05.347' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'72935f42-8cc4-4e86-9601-1495ca66ea03', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f088', 1750, N'Y', N'admin', CAST(N'2023-07-17T15:53:05.360' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'bf7c4abd-a702-4b4f-b99d-69898eb4338e', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f088', 1751, N'Y', N'admin', CAST(N'2023-07-17T15:53:05.383' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'829a8c99-44d7-448a-a144-51b37b936735', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f088', 1752, N'Y', N'admin', CAST(N'2023-07-17T15:53:05.397' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'd9e79581-c4d2-451f-8fc1-2ba0b34d390c', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f088', 1753, N'', N'admin', CAST(N'2023-07-17T15:53:05.417' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'e939b873-bbff-4e83-8a87-2412aca736f7', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f088', 1754, N'', N'admin', CAST(N'2023-07-17T15:53:05.433' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'd75bfdfc-ec59-4a03-84be-1e0e89b80bf4', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f088', 1755, N'', N'admin', CAST(N'2023-07-17T15:53:05.450' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'8b83d4c5-3275-46c9-8fe3-959cde35a7ff', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f088', 1756, N'', N'admin', CAST(N'2023-07-17T15:53:05.467' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'14c58b41-28c6-44e7-84ff-66c3ad22b608', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f088', 1757, N'', N'admin', CAST(N'2023-07-17T15:53:05.487' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'0193c48b-97a6-46d9-911f-c40098377469', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f088', 1758, N'', N'admin', CAST(N'2023-07-17T15:53:05.503' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'7aabba99-487e-4973-b459-d8c28471bcd3', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f088', 1759, N'', N'admin', CAST(N'2023-07-17T15:53:05.520' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'b875f311-8b51-44db-8ee6-7474cc8ca8df', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', 1749, N'Y', N'admin', CAST(N'2023-07-17T15:53:04.783' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'af78f001-14d5-4e64-b9bb-2f486e94b877', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', 1750, N'Y', N'admin', CAST(N'2023-07-17T15:53:04.913' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'3021ea64-0185-47d2-9ebc-7ff510ed507d', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', 1751, N'Y', N'admin', CAST(N'2023-07-17T15:53:04.937' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'c8c73491-c97e-4a47-a0ec-dd6d869fe31e', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', 1752, N'Y', N'admin', CAST(N'2023-07-17T15:53:04.953' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'c27b7864-3e66-4d31-a48e-e19e3b489161', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', 1753, N'N', N'admin', CAST(N'2023-07-17T15:53:04.980' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'13433e9f-8b12-4ba4-aa59-df82d8001abf', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', 1754, N'Y', N'admin', CAST(N'2023-07-17T15:53:04.997' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'd0aaf2f1-ef47-4eae-80c0-8852797873b4', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', 1755, N'N', N'admin', CAST(N'2023-07-17T15:53:05.017' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'1c4fb1a3-4ac1-4efb-89e4-dd17ba4e6d99', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', 1756, N'Y', N'admin', CAST(N'2023-07-17T15:53:05.040' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'8862ae5c-fb40-4ba3-81a3-317613541fec', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', 1757, N'', N'admin', CAST(N'2023-07-17T15:53:05.057' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'6730282a-ce37-4126-a58b-87cabf795e50', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', 1758, N'', N'admin', CAST(N'2023-07-17T15:53:05.077' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'c79df7d0-eb96-42be-ba70-5a2530eacfb0', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', 1759, N'', N'admin', CAST(N'2023-07-17T15:53:05.093' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'd0f9d087-9d3a-4269-9a90-537f85fdd4ca', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f055', 1749, N'Y', N'admin', CAST(N'2023-07-17T15:53:05.130' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'f99ac18d-a63c-4f25-8f80-aebb6abd1313', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f055', 1750, N'Y', N'admin', CAST(N'2023-07-17T15:53:05.150' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'83e7ffb5-eb2a-46fe-9c8b-9aa4891c657f', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f055', 1751, N'Y', N'admin', CAST(N'2023-07-17T15:53:05.170' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'ac2c6d6c-73da-477c-b43f-d5655877a585', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f055', 1752, N'Y', N'admin', CAST(N'2023-07-17T15:53:05.183' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'76a68345-11a7-4e04-9201-cc75a7fdf224', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f055', 1753, N'', N'admin', CAST(N'2023-07-17T15:53:05.210' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'b47c9c59-afd3-40fc-a0e8-d67481567c1a', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f055', 1754, N'N', N'admin', CAST(N'2023-07-17T15:53:05.227' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'09d4f073-f6b5-4332-b36c-80b3527ee3ae', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f055', 1755, N'', N'admin', CAST(N'2023-07-17T15:53:05.243' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'7cb04725-53d1-48f7-b251-05fad94c8037', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f055', 1756, N'', N'admin', CAST(N'2023-07-17T15:53:05.260' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'9fdca886-0bae-4942-be4c-451ca2bb6fba', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f055', 1757, N'', N'admin', CAST(N'2023-07-17T15:53:05.277' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'96da9302-1889-449a-8edb-2d2d0b979350', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f055', 1758, N'', N'admin', CAST(N'2023-07-17T15:53:05.293' AS DateTime))
INSERT [CASE_TEL_CHECK] ([id], [case_master_tid], [eflow_2000_check_cid], [value], [update_by], [update_time]) VALUES (N'23430d5c-fcc8-4e5a-85bd-528ff7e573be', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f055', 1759, N'', N'admin', CAST(N'2023-07-17T15:53:05.310' AS DateTime))
GO
INSERT [CASE_TREE] ([id], [case_master_tid], [tree_name], [node_cid], [create_by], [create_time], [update_by], [update_time]) VALUES (N'f56408e7-9fe3-4408-b99a-1043b3e448f4', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', N'tagTree', 1486, N'admin', CAST(N'2023-06-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [CASE_TREE] ([id], [case_master_tid], [tree_name], [node_cid], [create_by], [create_time], [update_by], [update_time]) VALUES (N'5ff8e15d-720c-4f4b-8ead-1d80e1f5b9d1', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', N'industry', 1458, N'admin', CAST(N'2023-06-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [CASE_TREE] ([id], [case_master_tid], [tree_name], [node_cid], [create_by], [create_time], [update_by], [update_time]) VALUES (N'e24c6278-f94b-45d4-ac30-7a473f8795ff', N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', N'tagTree', 1487, N'admin', CAST(N'2023-06-22T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [CASE_TREE#] ([case_tree_tid], [node_cid], [case_master_tid], [tree_name], [level]) VALUES (N'f56408e7-9fe3-4408-b99a-1043b3e448f4', 1444, N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', N'tagTree', 1)
INSERT [CASE_TREE#] ([case_tree_tid], [node_cid], [case_master_tid], [tree_name], [level]) VALUES (N'f56408e7-9fe3-4408-b99a-1043b3e448f4', 1446, N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', N'tagTree', 2)
INSERT [CASE_TREE#] ([case_tree_tid], [node_cid], [case_master_tid], [tree_name], [level]) VALUES (N'f56408e7-9fe3-4408-b99a-1043b3e448f4', 1452, N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', N'tagTree', 3)
INSERT [CASE_TREE#] ([case_tree_tid], [node_cid], [case_master_tid], [tree_name], [level]) VALUES (N'e24c6278-f94b-45d4-ac30-7a473f8795ff', 1444, N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', N'tagTree', 1)
INSERT [CASE_TREE#] ([case_tree_tid], [node_cid], [case_master_tid], [tree_name], [level]) VALUES (N'e24c6278-f94b-45d4-ac30-7a473f8795ff', 1448, N'dcc1d0a6-8fdf-41dd-8e95-b74a2d82f048', N'tagTree', 2)
GO
SET IDENTITY_INSERT [code_column_config] ON 

INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (1, N'sys_quartz_job', N'job_id', N'bigint', NULL, N'auto_increment', 1, NULL, N'PRI', 1, 0, NULL, N'ID', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (2, N'sys_quartz_job', N'bean_name', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'Spring Bean名稱', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (3, N'sys_quartz_job', N'cron_expression', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'cron 表達式', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (4, N'sys_quartz_job', N'is_pause', N'bit', NULL, N'', 1, NULL, N'MUL', 1, 0, NULL, N'狀態：1暫停、0啟用', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (5, N'sys_quartz_job', N'job_name', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'任務名稱', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (6, N'sys_quartz_job', N'method_name', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'方法名稱', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (7, N'sys_quartz_job', N'params', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'參數', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (8, N'sys_quartz_job', N'description', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'備註', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (9, N'sys_quartz_job', N'person_in_charge', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'負責人', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (10, N'sys_quartz_job', N'email', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'報警信箱', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (11, N'sys_quartz_job', N'sub_task', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'子任務ID', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (12, N'sys_quartz_job', N'pause_after_failure', N'bit', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'任務失敗後是否暫停', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (13, N'sys_quartz_job', N'create_by', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'建立者', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (14, N'sys_quartz_job', N'update_by', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'更新者', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (15, N'sys_quartz_job', N'create_time', N'datetime', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'建立日期', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (16, N'sys_quartz_job', N'update_time', N'datetime', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'更新日期', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (17, N'user_log', N'log_id', N'bigint', NULL, N'auto_increment', 1, NULL, N'PRI', 1, 0, NULL, N'', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (18, N'user_log', N'account', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (19, N'user_log', N'operation', N'varchar', NULL, N'', 1, NULL, N'', 1, 1, NULL, N'', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (20, N'user_log', N'verify', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (21, N'user_log', N'verify_start', N'datetime', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (22, N'user_log', N'temp_pw', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (23, N'user_log', N'temppw_start', N'datetime', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (24, N'user_log', N'prev_pw_sort', N'bigint', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (25, N'user_log', N'prev_pw', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (26, N'user_log', N'create_by', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (27, N'user_log', N'update_by', N'varchar', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (28, N'user_log', N'create_time', N'datetime', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'', NULL)
INSERT [code_column_config] ([column_id], [table_name], [column_name], [column_type], [dict_name], [extra], [form_show], [form_type], [key_type], [list_show], [not_null], [query_type], [remark], [date_annotation]) VALUES (29, N'user_log', N'update_time', N'datetime', NULL, N'', 1, NULL, N'', 1, 0, NULL, N'', NULL)
SET IDENTITY_INSERT [code_column_config] OFF
GO
INSERT [COMPANY] ([ID], [code], [tax_id], [name], [chairman], [company_addr], [mail_addr], [company_state_cid], [enable_date], [close_date], [close_remark], [combine_date], [code_end_date], [create_by], [create_time], [update_by], [update_time]) VALUES (N'00000000-1000-1000-0000-000000000001', N'A010000000002', N'82818206  ', N'奕科銀行', N'joe', N'公司地址A', N'公司信箱A', 1423, NULL, NULL, NULL, NULL, NULL, N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
INSERT [COMPANY] ([ID], [code], [tax_id], [name], [chairman], [company_addr], [mail_addr], [company_state_cid], [enable_date], [close_date], [close_remark], [combine_date], [code_end_date], [create_by], [create_time], [update_by], [update_time]) VALUES (N'555ccccc-6e55-4385-a83f-aaa222222eee', N'A010000000004', N'444000777 ', N'國泰世華銀行', N'bankMannn', N'銀行地址B', N'cathaybk@bank.tw', 1423, NULL, NULL, NULL, NULL, NULL, N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
INSERT [COMPANY] ([ID], [code], [tax_id], [name], [chairman], [company_addr], [mail_addr], [company_state_cid], [enable_date], [close_date], [close_remark], [combine_date], [code_end_date], [create_by], [create_time], [update_by], [update_time]) VALUES (N'641cc8ec-6e55-4385-a83f-bd626f2760e9', N'A010000000004', N'222111000 ', N'臺灣銀行股份有限公司', N'bankMan', N'銀行地址A', N'taiwanbank@bank.tw', 1423, NULL, NULL, NULL, NULL, NULL, N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
GO
INSERT [COMPANY_CONCAT] ([ID], [company_tid], [seq_no], [name], [tel_no], [tel_ext], [fax_no], [fax_ext], [email], [create_by], [create_time], [update_by], [update_time]) VALUES (N'0507000c-0000-0000-0000-000000000001', N'00000000-1000-1000-0000-000000000001', 1, N'陳小旺', N'01-21115775', N'909', N'01-21115775', N'999', N'ppp@gmail.com', N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
INSERT [COMPANY_CONCAT] ([ID], [company_tid], [seq_no], [name], [tel_no], [tel_ext], [fax_no], [fax_ext], [email], [create_by], [create_time], [update_by], [update_time]) VALUES (N'0609000c-0000-0000-0000-000000000001', N'00000000-1000-1000-0000-000000000001', 2, N'趙AB', N'08-27725554', N'808', N'08-27725554', N'888', N'zzz@hotmail.com', N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
INSERT [COMPANY_CONCAT] ([ID], [company_tid], [seq_no], [name], [tel_no], [tel_ext], [fax_no], [fax_ext], [email], [create_by], [create_time], [update_by], [update_time]) VALUES (N'00000000-0000-0000-0000-000000000111', N'555ccccc-6e55-4385-a83f-aaa222222eee', 2, N'張三', N'03-2225554', N'135', N'03-2225554', N'777', N'ccc@gmail.com', N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
INSERT [COMPANY_CONCAT] ([ID], [company_tid], [seq_no], [name], [tel_no], [tel_ext], [fax_no], [fax_ext], [email], [create_by], [create_time], [update_by], [update_time]) VALUES (N'b2ded116-45b1-40da-a3f4-35d33428d970', N'641cc8ec-6e55-4385-a83f-bd626f2760e9', 1, N'王小明', N'02-22225555', N'123', N'02-22225555', N'999', N'aaa@gmail.com', N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
INSERT [COMPANY_CONCAT] ([ID], [company_tid], [seq_no], [name], [tel_no], [tel_ext], [fax_no], [fax_ext], [email], [create_by], [create_time], [update_by], [update_time]) VALUES (N'4b75a855-e3d2-4d1e-899a-3d672c80e528', N'641cc8ec-6e55-4385-a83f-bd626f2760e9', 2, N'小叮噹', N'02-22225554', N'321', N'02-22225554', N'888', N'bbb@hotmail.com', N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
GO
INSERT [COMPANY_INDUSTRY] ([id], [company_tid], [seq_no], [industry_cid], [agent_company_industry_tid], [create_by], [create_time], [update_by], [update_time]) VALUES (N'20000000-1000-0000-0000-000000000001', N'00000000-1000-1000-0000-000000000001', 1, 1443, NULL, N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
INSERT [COMPANY_INDUSTRY] ([id], [company_tid], [seq_no], [industry_cid], [agent_company_industry_tid], [create_by], [create_time], [update_by], [update_time]) VALUES (N'40000000-1000-0000-0000-000000000003', N'00000000-1000-1000-0000-000000000001', 2, 1458, NULL, N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
INSERT [COMPANY_INDUSTRY] ([id], [company_tid], [seq_no], [industry_cid], [agent_company_industry_tid], [create_by], [create_time], [update_by], [update_time]) VALUES (N'00000000-1185-47d0-1111-baf2f52d7842', N'555ccccc-6e55-4385-a83f-aaa222222eee', 2, 1457, NULL, N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
INSERT [COMPANY_INDUSTRY] ([id], [company_tid], [seq_no], [industry_cid], [agent_company_industry_tid], [create_by], [create_time], [update_by], [update_time]) VALUES (N'4ac305d7-1185-47d0-940d-baf2f52d7842', N'641cc8ec-6e55-4385-a83f-bd626f2760e9', 2, 1457, NULL, N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
INSERT [COMPANY_INDUSTRY] ([id], [company_tid], [seq_no], [industry_cid], [agent_company_industry_tid], [create_by], [create_time], [update_by], [update_time]) VALUES (N'29e72ac9-65bc-455d-afc0-c8f6a5c28b22', N'641cc8ec-6e55-4385-a83f-bd626f2760e9', 4, 1463, NULL, N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
INSERT [COMPANY_INDUSTRY] ([id], [company_tid], [seq_no], [industry_cid], [agent_company_industry_tid], [create_by], [create_time], [update_by], [update_time]) VALUES (N'00000000-78b1-47e0-1111-d0da463daff1', N'555ccccc-6e55-4385-a83f-aaa222222eee', 1, 1443, NULL, N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
INSERT [COMPANY_INDUSTRY] ([id], [company_tid], [seq_no], [industry_cid], [agent_company_industry_tid], [create_by], [create_time], [update_by], [update_time]) VALUES (N'f943b30f-78b1-47e0-a806-d0da463daff7', N'641cc8ec-6e55-4385-a83f-bd626f2760e9', 1, 1443, NULL, N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
INSERT [COMPANY_INDUSTRY] ([id], [company_tid], [seq_no], [industry_cid], [agent_company_industry_tid], [create_by], [create_time], [update_by], [update_time]) VALUES (N'2be0bf8f-b90c-4485-9045-d55c0fe36393', N'641cc8ec-6e55-4385-a83f-bd626f2760e9', 3, 1444, NULL, N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
GO
INSERT [COMPANY_INDUSTRY#] ([industry_cid], [company_tid], [company_industry_tid], [seq_no]) VALUES (1457, N'555ccccc-6e55-4385-a83f-aaa222222eee', N'00000000-1185-47d0-1111-baf2f52d7842', 1)
INSERT [COMPANY_INDUSTRY#] ([industry_cid], [company_tid], [company_industry_tid], [seq_no]) VALUES (1457, N'641cc8ec-6e55-4385-a83f-bd626f2760e9', N'4ac305d7-1185-47d0-940d-baf2f52d7842', 1)
INSERT [COMPANY_INDUSTRY#] ([industry_cid], [company_tid], [company_industry_tid], [seq_no]) VALUES (1458, N'00000000-1000-1000-0000-000000000001', N'40000000-1000-0000-0000-000000000003', 1)
INSERT [COMPANY_INDUSTRY#] ([industry_cid], [company_tid], [company_industry_tid], [seq_no]) VALUES (1463, N'641cc8ec-6e55-4385-a83f-bd626f2760e9', N'29e72ac9-65bc-455d-afc0-c8f6a5c28b22', 2)
GO
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER', N'13207a45-4de2-40c1-855b-11e53ad7a25e', N'admin', CAST(N'2023-07-11T16:48:44.890' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER', N'0d8b4c12-af2c-4d14-b26b-3b1f8237b9b0', N'admin', CAST(N'2023-07-11T16:36:35.827' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER', N'37cdc3b3-267e-4d99-916e-588245c9a77b', N'admin', CAST(N'2023-06-02T10:52:59.343' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER', N'03ad53d2-48dd-4a55-8d91-5a6875072cd5', N'admin', CAST(N'2023-06-02T10:52:59.373' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER_AVOID', N'7d781c7f-700a-4e13-a762-5f4cd7b3fa4c', N'admin', CAST(N'2023-06-02T10:52:59.327' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER', N'f10d16be-0158-46f4-9a3b-614605a91a2d', N'admin', CAST(N'2023-07-11T16:48:45.107' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER', N'24bacca8-b107-40a4-b0bf-720f4c1440ed', N'admin', CAST(N'2023-07-11T16:36:35.770' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER_AVOID', N'a9615975-de36-4a1c-9d77-7263905b1cf2', N'admin', CAST(N'2023-07-11T14:42:47.133' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER', N'fae0897b-92ff-4afe-a14a-7cb90a98b82d', N'admin', CAST(N'2023-07-11T16:48:45.187' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER', N'15542292-c5d9-433d-816c-9c2a4b91b0e3', N'admin', CAST(N'2023-06-02T10:30:43.347' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER', N'1f6d61b8-6e25-4b90-9f7f-b8498475eb1e', N'admin', CAST(N'2023-07-11T14:43:02.637' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER', N'157a533d-ff7e-4e31-8196-b8c6732d34bb', N'admin', CAST(N'2023-07-11T16:48:45.033' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER', N'e2b7ec4d-c158-4958-a99c-c0ec1fccc888', N'admin', CAST(N'2023-07-11T16:36:35.907' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER_AVOID', N'425523b2-237b-43cd-a6d8-cbf2eff95f66', N'admin', CAST(N'2023-07-14T15:38:46.197' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER_AVOID', N'836316ed-9926-423d-a9f0-d8c769600c24', N'admin', CAST(N'2023-06-02T10:38:30.017' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER', N'fee10e2d-5017-404c-bce9-df28d392761c', N'admin', CAST(N'2023-07-11T16:48:44.960' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER', N'470a5219-e967-49b3-b43e-eaefc854a52b', N'admin', CAST(N'2023-06-02T10:52:59.297' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER', N'ccc0ad02-a7a9-48c1-bba6-ee51b69792f0', N'admin', CAST(N'2023-06-02T11:00:30.037' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER', N'7d3fe573-4a75-4e8f-a6be-f05c7775d664', N'admin', CAST(N'2023-06-02T11:02:30.853' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER_AVOID', N'215fede9-7a10-4e0c-89c0-f57eb2a79943', N'admin', CAST(N'2023-06-02T10:53:28.797' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER_AVOID', N'ec9e947b-20aa-479f-b69f-f6588067a990', N'admin', CAST(N'2023-07-14T15:38:46.243' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER_AVOID', N'be9ce38c-7bd1-4a6d-b6af-f716edab96d5', N'admin', CAST(N'2023-07-14T15:38:55.713' AS DateTime))
INSERT [DELETE_LOG] ([table_name], [table_id], [create_by], [create_time]) VALUES (N'SESSION_MEMBER_AVOID', N'09e5ae89-c9e0-4a1f-8e95-f775cfb3f009', N'admin', CAST(N'2023-07-11T16:48:44.777' AS DateTime))
GO
INSERT [EFLOW] ([id], [code], [name]) VALUES (N'431aa5d4-aed7-4e9f-bcef-144fc043b408', N'1000', N'電話件轉申訴組')
INSERT [EFLOW] ([id], [code], [name]) VALUES (N'bb787930-51e2-4379-90d0-a2a371bc112c', N'2000', N'電話申訴件結案')
GO
INSERT [EFLOW_MAP] ([id], [eflow_tid], [name], [page_code], [current_code], [current_workgroup_code], [next_code], [next_workgroup_code], [action], [condition], [case_flow_code]) VALUES (N'0cc6ce4d-79db-44ac-b1e2-231e77ed604a', N'431aa5d4-aed7-4e9f-bcef-144fc043b408', N'諮服組-複審人員通過', N'WEB020302', N'1110', N'11', N'1111', N'12', N'Y', NULL, NULL)
INSERT [EFLOW_MAP] ([id], [eflow_tid], [name], [page_code], [current_code], [current_workgroup_code], [next_code], [next_workgroup_code], [action], [condition], [case_flow_code]) VALUES (N'7b5f19c7-b213-427c-92e5-6fc58d00353f', N'bb787930-51e2-4379-90d0-a2a371bc112c', N'申訴組-承辦人送陳', N'WEB020401', N'0000', N'21', N'1200', N'22', N'Y', NULL, NULL)
INSERT [EFLOW_MAP] ([id], [eflow_tid], [name], [page_code], [current_code], [current_workgroup_code], [next_code], [next_workgroup_code], [action], [condition], [case_flow_code]) VALUES (N'33cf06ed-b827-4025-a649-77e1e46eab50', N'431aa5d4-aed7-4e9f-bcef-144fc043b408', N'諮服組-主管審核通過', N'WEB020302', N'1111', N'12', N'1200', N'22', N'Y', NULL, NULL)
INSERT [EFLOW_MAP] ([id], [eflow_tid], [name], [page_code], [current_code], [current_workgroup_code], [next_code], [next_workgroup_code], [action], [condition], [case_flow_code]) VALUES (N'30e3c80d-8374-4ee9-95d8-9d247dbe5b98', N'431aa5d4-aed7-4e9f-bcef-144fc043b408', N'申訴組-主管派案', N'WEB020303', N'1200', N'22', N'9999', N'21', N'Y', NULL, NULL)
INSERT [EFLOW_MAP] ([id], [eflow_tid], [name], [page_code], [current_code], [current_workgroup_code], [next_code], [next_workgroup_code], [action], [condition], [case_flow_code]) VALUES (N'b1279aa0-79dc-48d7-a9fa-b261256d6f73', N'431aa5d4-aed7-4e9f-bcef-144fc043b408', N'諮服組-主管退件', N'WEB020302', N'1111', N'12', N'0000', N'10', N'N', NULL, NULL)
INSERT [EFLOW_MAP] ([id], [eflow_tid], [name], [page_code], [current_code], [current_workgroup_code], [next_code], [next_workgroup_code], [action], [condition], [case_flow_code]) VALUES (N'd3a13186-d59c-4797-8fc9-caaf6001b8a1', N'bb787930-51e2-4379-90d0-a2a371bc112c', N'申訴組-主管退件', N'WEB020402', N'1200', N'22', N'0000', N'21', N'N', NULL, NULL)
INSERT [EFLOW_MAP] ([id], [eflow_tid], [name], [page_code], [current_code], [current_workgroup_code], [next_code], [next_workgroup_code], [action], [condition], [case_flow_code]) VALUES (N'4d11d58c-b5e4-4306-960c-ce16d8d74d82', N'bb787930-51e2-4379-90d0-a2a371bc112c', N'申訴組-主管審核通過', N'WEB020402', N'1200', N'22', N'9999', N'9999', N'Y', NULL, N'99999')
INSERT [EFLOW_MAP] ([id], [eflow_tid], [name], [page_code], [current_code], [current_workgroup_code], [next_code], [next_workgroup_code], [action], [condition], [case_flow_code]) VALUES (N'94aa01ef-c4d0-423f-bc84-f5c6aaf0d3fd', N'431aa5d4-aed7-4e9f-bcef-144fc043b408', N'諮服組-啟流程', N'WEB020301', N'0000', N'10', N'1110', N'11', N'Y', NULL, NULL)
INSERT [EFLOW_MAP] ([id], [eflow_tid], [name], [page_code], [current_code], [current_workgroup_code], [next_code], [next_workgroup_code], [action], [condition], [case_flow_code]) VALUES (N'b4fbd391-0d5f-417e-8bf0-f935b82c3f76', N'431aa5d4-aed7-4e9f-bcef-144fc043b408', N'諮服組-複審人員退件', N'WEB020302', N'1110', N'11', N'0000', N'10', N'N', NULL, NULL)
GO
INSERT [MEETING] ([id], [session], [meet_no], [meet_date], [limit_date], [meet_room], [chairman], [create_by], [create_time], [update_by], [update_time]) VALUES (N'00000000-0000-0000-0000-000000000011', 5, 1, CAST(N'2020-06-24T10:00:00.000' AS DateTime), CAST(N'2020-06-24T18:00:00.000' AS DateTime), N'A001', N'陳一二', N'system', CAST(N'2020-06-24T10:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [MEMBER] ([id], [member_type_cid], [seq_no], [account], [name], [domain_cid], [sex], [tel_no], [ext_no], [email1], [email2], [bank_desc], [bank_account], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'00000000-0000-0000-0000-000000000002', 1376, 6, N'test', N'王小姐A', 1380, N'F', N'0987654311', N'457', N'mary21@example.co', N'mary22@another.com', N'BankB', N'123456790', 1, N'System', CAST(N'2020-02-22T00:00:00.000' AS DateTime), N'admin', CAST(N'2023-06-14T10:49:35.183' AS DateTime))
INSERT [MEMBER] ([id], [member_type_cid], [seq_no], [account], [name], [domain_cid], [sex], [tel_no], [ext_no], [email1], [email2], [bank_desc], [bank_account], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'00000000-0000-0000-0000-000000000003', 1376, 7, N'foi01', N'陳先生A', 1382, N'M', N'0987654312', N'457', N'mary41@example.com', N'mary22@another.com', N'BankB', N'023456790', 0, N'System', CAST(N'2020-02-22T00:00:00.000' AS DateTime), N'admin', CAST(N'2023-06-02T18:32:17.030' AS DateTime))
INSERT [MEMBER] ([id], [member_type_cid], [seq_no], [account], [name], [domain_cid], [sex], [tel_no], [ext_no], [email1], [email2], [bank_desc], [bank_account], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'00000000-0000-0000-0000-000000000021', 1376, 2, N'admin', N'宋品毅', 1381, N'M', N'0912345679', N'124', N'andysong@ezcore.tw', N'', N'BankA', N'987654321', 0, N'System', CAST(N'2019-07-21T00:00:00.000' AS DateTime), N'admin', CAST(N'2023-07-18T17:14:24.797' AS DateTime))
INSERT [MEMBER] ([id], [member_type_cid], [seq_no], [account], [name], [domain_cid], [sex], [tel_no], [ext_no], [email1], [email2], [bank_desc], [bank_account], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'00000000-0000-0000-0000-000000000022', 1376, 8, N'test', N'王小姐', 1380, N'F', N'0987654322', N'457', N'mary22@example.com', N'mary22@another.com', N'BankB', N'23456790', 0, N'System', CAST(N'2020-02-22T00:00:00.000' AS DateTime), N'admin', CAST(N'2023-06-02T18:32:17.067' AS DateTime))
INSERT [MEMBER] ([id], [member_type_cid], [seq_no], [account], [name], [domain_cid], [sex], [tel_no], [ext_no], [email1], [email2], [bank_desc], [bank_account], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'00000000-0000-0000-0000-000000000023', 1376, 5, N'foi01', N'陳大大', 1382, N'M', N'0987654322', N'123', N'mary22@example.com', N'mary22@another.com', N'BankC', N'987654321', 0, N'System', CAST(N'2020-02-22T00:00:00.000' AS DateTime), N'admin', CAST(N'2023-06-14T10:49:35.150' AS DateTime))
INSERT [MEMBER] ([id], [member_type_cid], [seq_no], [account], [name], [domain_cid], [sex], [tel_no], [ext_no], [email1], [email2], [bank_desc], [bank_account], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'c076be13-2116-4f8e-8cec-4139061b4fb5', 1376, 1, N'ttytt', N'測試猴子', NULL, N'M', N'123456789', N'', N'aaa@aaa.org', N'', NULL, NULL, 0, N'admin', CAST(N'2023-05-30T14:55:33.497' AS DateTime), N'admin', CAST(N'2023-07-18T17:14:24.763' AS DateTime))
INSERT [MEMBER] ([id], [member_type_cid], [seq_no], [account], [name], [domain_cid], [sex], [tel_no], [ext_no], [email1], [email2], [bank_desc], [bank_account], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'b66a649f-4315-4eb1-8cba-5a42fa40e113', 1377, 3, N'Tesla', N'Elon', NULL, N'M', N'0973214214', N'', N'elon@musk.com', N'', NULL, NULL, 0, N'admin', CAST(N'2023-06-15T11:04:00.320' AS DateTime), N'admin', CAST(N'2023-06-15T11:04:00.320' AS DateTime))
INSERT [MEMBER] ([id], [member_type_cid], [seq_no], [account], [name], [domain_cid], [sex], [tel_no], [ext_no], [email1], [email2], [bank_desc], [bank_account], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'd032d854-5cbb-4ddb-a835-5dab9f0b72ce', 1377, 1, N'ezcore', N'王小明', NULL, N'M', N'0912312312', N'', N'Aa123@ezcore.tw', N'', NULL, NULL, 0, N'admin', CAST(N'2023-05-23T11:53:11.670' AS DateTime), N'admin', CAST(N'2023-05-23T11:53:11.670' AS DateTime))
INSERT [MEMBER] ([id], [member_type_cid], [seq_no], [account], [name], [domain_cid], [sex], [tel_no], [ext_no], [email1], [email2], [bank_desc], [bank_account], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'c6bfdd16-96f0-48af-b08e-749b69f86a43', 1376, 3, N'f01', N'陳大大A', NULL, N'M', N'0912456789', N'', N'f01@foi.tw', N'f01@foai.tw', N'822', N'00110021234567', 0, N'admin', CAST(N'2023-06-02T18:29:02.633' AS DateTime), N'admin', CAST(N'2023-06-14T10:49:35.087' AS DateTime))
INSERT [MEMBER] ([id], [member_type_cid], [seq_no], [account], [name], [domain_cid], [sex], [tel_no], [ext_no], [email1], [email2], [bank_desc], [bank_account], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'8fcaf844-bf12-4207-9b29-817f77a82950', 1377, 2, N'Carrefour', N'Carlos', 1380, N'M', N'0972281343', N'', N'carre@four.com', N'', NULL, N'8281', 0, N'admin', CAST(N'2023-06-15T10:53:07.967' AS DateTime), N'admin', CAST(N'2023-06-15T11:02:16.800' AS DateTime))
INSERT [MEMBER] ([id], [member_type_cid], [seq_no], [account], [name], [domain_cid], [sex], [tel_no], [ext_no], [email1], [email2], [bank_desc], [bank_account], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'5107ffae-a1bc-4260-8fff-c40937d3388d', 1376, 9, N'foi02', N'王大中', NULL, N'M', N'0912435678', N'', N'f02@foi.tw', N'f02@foi.tw', N'中國信託', N'00110021345678', 0, N'admin', CAST(N'2023-05-29T15:16:14.627' AS DateTime), N'admin', CAST(N'2023-06-02T18:32:17.103' AS DateTime))
INSERT [MEMBER] ([id], [member_type_cid], [seq_no], [account], [name], [domain_cid], [sex], [tel_no], [ext_no], [email1], [email2], [bank_desc], [bank_account], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'd4852c44-4b61-46c0-babd-f243057aaa9c', 1376, 4, N'abc', N'陳大明', 1381, N'F', N'0911111111', N'1', N'sinyi.lin@ezcore.tw', N'', NULL, NULL, 0, N'admin', CAST(N'2023-05-23T10:26:19.667' AS DateTime), N'admin', CAST(N'2023-07-28T11:27:07.243' AS DateTime))
GO
INSERT [SERIAL_NO_RECORD] ([type], [label], [next_no]) VALUES (N'CA', N'1120807', 13)
INSERT [SERIAL_NO_RECORD] ([type], [label], [next_no]) VALUES (N'CA', N'1120808', 2)
GO
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'00000000-0000-0000-0000-010000000002', 1387, 2, N'5107ffae-a1bc-4260-8fff-c40937d3388d', 0, N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'00000000-0000-0000-0000-010000000003', 1387, 1, N'00000000-0000-0000-0000-000000000022', 0, N'system', CAST(N'2023-05-30T16:30:00.000' AS DateTime), NULL, NULL)
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'1af282d9-5e2e-41a7-af39-2497bde37b4c', 2426, 1, N'c076be13-2116-4f8e-8cec-4139061b4fb5', 0, N'admin', CAST(N'2023-07-11T16:36:58.170' AS DateTime), N'admin', CAST(N'2023-07-11T16:36:58.177' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'9916bc9e-6e3d-4324-8e8b-27344bb764c1', 1760, 1, N'00000000-0000-0000-0000-000000000021', 0, N'admin', CAST(N'2023-06-02T10:18:16.587' AS DateTime), N'admin', CAST(N'2023-06-02T10:59:52.580' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'e9e2e82b-a4fe-4c7f-bb61-573573cbb5d5', 1383, 1, N'c076be13-2116-4f8e-8cec-4139061b4fb5', 0, N'admin', CAST(N'2023-07-12T14:43:38.973' AS DateTime), N'admin', CAST(N'2023-07-12T14:43:38.983' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'a988c122-e9af-4b32-8c8a-5e03dbeb9035', 1760, 2, N'd4852c44-4b61-46c0-babd-f243057aaa9c', 0, N'admin', CAST(N'2023-06-01T16:59:00.417' AS DateTime), N'admin', CAST(N'2023-06-02T11:00:30.107' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'cde000bb-b099-4851-b477-642fdc59bd93', 2017, 3, N'00000000-0000-0000-0000-000000000003', 0, N'admin', CAST(N'2023-06-02T10:53:17.207' AS DateTime), N'admin', CAST(N'2023-06-02T11:02:41.247' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'18b920cf-4bc9-4e57-8d9f-72694ed780b0', 2426, 4, N'd4852c44-4b61-46c0-babd-f243057aaa9c', 0, N'admin', CAST(N'2023-07-13T11:54:51.330' AS DateTime), N'admin', CAST(N'2023-07-13T11:54:51.340' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'7b00b186-d432-4aa0-98dc-8e31bce7e522', 2017, 2, N'00000000-0000-0000-0000-000000000021', 0, N'admin', CAST(N'2023-06-02T10:53:17.157' AS DateTime), N'admin', CAST(N'2023-06-02T11:02:42.853' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'd14b19db-ddf1-4da4-ab89-9ae4b078d316', 2426, 8, N'5107ffae-a1bc-4260-8fff-c40937d3388d', 0, N'admin', CAST(N'2023-07-13T11:54:51.593' AS DateTime), N'admin', CAST(N'2023-07-13T11:54:51.597' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'f123fb26-8037-481b-9e5c-9b413763224b', 1760, 3, N'00000000-0000-0000-0000-000000000023', 0, N'admin', CAST(N'2023-06-02T11:00:30.210' AS DateTime), N'admin', CAST(N'2023-06-02T11:00:30.217' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'ac113676-870c-428e-85a5-9cb94434ee0b', 2426, 2, N'00000000-0000-0000-0000-000000000021', 0, N'admin', CAST(N'2023-07-11T16:36:58.297' AS DateTime), N'admin', CAST(N'2023-07-11T16:36:58.310' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'3caf6007-d737-447f-8e78-b7078eff585e', 1760, 4, N'5107ffae-a1bc-4260-8fff-c40937d3388d', 0, N'admin', CAST(N'2023-06-02T11:00:30.297' AS DateTime), N'admin', CAST(N'2023-06-02T11:00:30.297' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'46ee1089-5ea9-4028-8658-c00a696d3fdb', 2426, 3, N'c6bfdd16-96f0-48af-b08e-749b69f86a43', 0, N'admin', CAST(N'2023-07-11T16:36:58.357' AS DateTime), N'admin', CAST(N'2023-07-11T16:36:58.360' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'aad779e2-6d0a-4fb9-bbcf-c541bca3b9f7', 2426, 6, N'00000000-0000-0000-0000-000000000003', 0, N'admin', CAST(N'2023-07-13T11:54:51.477' AS DateTime), N'admin', CAST(N'2023-07-13T11:54:51.477' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'a5436aa9-368d-4d95-ac47-e3a3ef4ae59d', 2426, 5, N'00000000-0000-0000-0000-000000000023', 0, N'admin', CAST(N'2023-07-13T11:54:51.413' AS DateTime), N'admin', CAST(N'2023-07-13T11:54:51.417' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'5c9ccacb-bbb2-4c08-9573-e499fe8c4b0a', 2017, 1, N'00000000-0000-0000-0000-000000000022', 0, N'admin', CAST(N'2023-06-02T11:02:31.067' AS DateTime), N'admin', CAST(N'2023-06-02T11:02:42.740' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'b8c9ccd9-8bd6-4d0f-959e-e657d2dfce30', 2426, 7, N'00000000-0000-0000-0000-000000000022', 0, N'admin', CAST(N'2023-07-13T11:54:51.533' AS DateTime), N'admin', CAST(N'2023-07-13T11:54:51.537' AS DateTime))
INSERT [SESSION_MEMBER] ([id], [session_cid], [seq_no], [member_tid], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'd83d1b80-db97-494c-a2ee-e66e60c2fa93', 1383, 2, N'00000000-0000-0000-0000-000000000021', 0, N'admin', CAST(N'2023-07-12T14:43:39.107' AS DateTime), N'admin', CAST(N'2023-07-12T14:43:39.120' AS DateTime))
GO
INSERT [SESSION_MEMBER_AVOID] ([id], [session_member_tid], [company_tid], [create_by], [create_time]) VALUES (N'0ceafb90-99ee-480d-bdf4-46469a925300', N'2be9f87c-350f-4669-a5c1-cd8067ccdc2e', N'641cc8ec-6e55-4385-a83f-bd626f2760e9', N'admin', CAST(N'2023-06-01T17:53:19.873' AS DateTime))
INSERT [SESSION_MEMBER_AVOID] ([id], [session_member_tid], [company_tid], [create_by], [create_time]) VALUES (N'c65d9898-c889-439e-9339-7fbc5ea47757', N'2be9f87c-350f-4669-a5c1-cd8067ccdc2e', N'641cc8ec-6e55-4385-a83f-bd626f2760e9', N'admin', CAST(N'2023-06-01T17:53:19.870' AS DateTime))
INSERT [SESSION_MEMBER_AVOID] ([id], [session_member_tid], [company_tid], [create_by], [create_time]) VALUES (N'7d2509d8-7d3d-4543-9791-8561e49f3c92', N'2be9f87c-350f-4669-a5c1-cd8067ccdc2e', N'00000000-1000-1000-0000-000000000001', N'admin', CAST(N'2023-06-01T17:53:19.867' AS DateTime))
INSERT [SESSION_MEMBER_AVOID] ([id], [session_member_tid], [company_tid], [create_by], [create_time]) VALUES (N'c00cbd67-3571-42d2-8770-8c834421b346', N'd83d1b80-db97-494c-a2ee-e66e60c2fa93', N'641cc8ec-6e55-4385-a83f-bd626f2760e9', N'admin', CAST(N'2023-07-12T14:43:39.117' AS DateTime))
INSERT [SESSION_MEMBER_AVOID] ([id], [session_member_tid], [company_tid], [create_by], [create_time]) VALUES (N'c94a110c-7ee3-4a7b-860d-d14089fe4579', N'9916bc9e-6e3d-4324-8e8b-27344bb764c1', N'641cc8ec-6e55-4385-a83f-bd626f2760e9', N'admin', CAST(N'2023-06-02T10:18:16.590' AS DateTime))
INSERT [SESSION_MEMBER_AVOID] ([id], [session_member_tid], [company_tid], [create_by], [create_time]) VALUES (N'd49516c0-c55b-4c07-85d0-e6c8f0c45f4e', N'7b00b186-d432-4aa0-98dc-8e31bce7e522', N'641cc8ec-6e55-4385-a83f-bd626f2760e9', N'admin', CAST(N'2023-06-02T10:53:17.157' AS DateTime))
GO
SET IDENTITY_INSERT [sys_dept] ON 

INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (18, NULL, 5, N'金融服務業', 103, 1, N'admin', N'admin', CAST(N'2022-11-15T10:19:10.000' AS DateTime), CAST(N'2022-12-08T09:43:29.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (19, 18, 6, N'銀行業', 101, 1, N'admin', N'admin', CAST(N'2022-11-15T10:19:27.000' AS DateTime), CAST(N'2022-12-08T11:25:40.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (20, 19, 4, N'本國銀行', 101, 1, N'admin', N'admin', CAST(N'2022-11-15T10:20:10.000' AS DateTime), CAST(N'2022-12-08T11:26:29.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (24, NULL, 9, N'評議中心', 101, 1, N'admin', N'admin', CAST(N'2022-12-07T11:59:15.000' AS DateTime), CAST(N'2022-12-08T09:43:41.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (26, NULL, 5, N'主管機關', 102, 1, N'admin', N'admin', CAST(N'2022-12-07T11:59:47.000' AS DateTime), CAST(N'2022-12-08T09:43:48.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (27, 24, 0, N'機構管理者群組', 101, 1, N'admin', N'admin', CAST(N'2022-12-07T12:00:39.000' AS DateTime), CAST(N'2022-12-08T14:11:55.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (28, 24, 0, N'服務組案件建檔群組', 102, 1, N'admin', N'admin', CAST(N'2022-12-07T12:01:07.000' AS DateTime), CAST(N'2022-12-08T14:12:27.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (29, 24, 0, N'服務組', 103, 1, N'admin', N'admin', CAST(N'2022-12-07T12:01:29.000' AS DateTime), CAST(N'2022-12-08T14:12:39.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (40, 18, 5, N'保險業', 102, 1, N'admin', N'admin', CAST(N'2022-12-07T12:05:58.000' AS DateTime), CAST(N'2022-12-08T11:25:34.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (41, 18, 5, N'證券期貨業', 103, 1, N'admin', N'admin', CAST(N'2022-12-07T12:06:31.000' AS DateTime), CAST(N'2022-12-08T11:25:27.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (42, 18, 1, N'電子票證業', 104, 1, N'admin', N'admin', CAST(N'2022-12-08T11:24:21.000' AS DateTime), CAST(N'2022-12-08T11:25:19.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (43, 18, 3, N'其他金融服務業', 105, 1, N'admin', N'admin', CAST(N'2022-12-08T11:25:10.000' AS DateTime), CAST(N'2022-12-08T11:25:10.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (44, 19, 3, N'外國銀行', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T11:27:15.000' AS DateTime), CAST(N'2022-12-08T11:27:15.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (45, 19, 3, N'信用合作社', 103, 1, N'admin', N'admin', CAST(N'2022-12-08T11:27:41.000' AS DateTime), CAST(N'2022-12-08T11:27:41.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (46, 19, 1, N'中華郵政', 104, 1, N'admin', N'admin', CAST(N'2022-12-08T11:28:10.000' AS DateTime), CAST(N'2022-12-08T11:28:10.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (47, 19, 2, N'信用卡公司', 105, 1, N'admin', N'admin', CAST(N'2022-12-08T11:28:45.000' AS DateTime), CAST(N'2022-12-08T11:28:45.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (48, 19, 3, N'票券金融公司', 106, 1, N'admin', N'admin', CAST(N'2022-12-08T11:29:08.000' AS DateTime), CAST(N'2022-12-08T11:29:08.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (49, 20, 2, N'臺灣銀行股份有限公司', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T11:30:23.000' AS DateTime), CAST(N'2022-12-08T11:30:23.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (50, 20, 0, N'台灣土地銀行股份有限公司', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T11:31:16.000' AS DateTime), CAST(N'2022-12-16T11:20:24.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (51, 20, 0, N'華南商業銀行股份有限公司', 103, 1, N'admin', N'admin', CAST(N'2022-12-08T11:32:32.000' AS DateTime), CAST(N'2022-12-08T11:32:32.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (52, 20, 0, N'台北富邦商業銀行股份有限公司', 104, 1, N'admin', N'admin', CAST(N'2022-12-08T11:33:37.000' AS DateTime), CAST(N'2022-12-08T11:33:37.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (53, 49, 0, N'臺灣銀行股份有限公司管理者群組', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T11:35:50.000' AS DateTime), CAST(N'2022-12-08T11:35:50.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (54, 49, 0, N'臺灣銀行股份有限公司操作者群組', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T11:37:12.000' AS DateTime), CAST(N'2022-12-08T11:37:12.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (55, 44, 2, N'日商瑞穗銀行股份有限公司', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T11:38:32.000' AS DateTime), CAST(N'2022-12-08T11:38:32.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (56, 55, 0, N'日商瑞穗銀行股份有限公司管理者群組', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T11:39:02.000' AS DateTime), CAST(N'2022-12-08T11:39:02.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (57, 55, 0, N'日商瑞穗銀行股份有限公司操作者群組', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T11:39:35.000' AS DateTime), CAST(N'2022-12-08T11:39:35.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (58, 44, 0, N'美商美國銀行股份有限公司台北分行', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T11:40:22.000' AS DateTime), CAST(N'2022-12-08T11:40:22.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (59, 44, 0, N'新加坡商大華銀行有限公司台北分行', 103, 1, N'admin', N'admin', CAST(N'2022-12-08T11:42:20.000' AS DateTime), CAST(N'2022-12-08T11:42:20.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (60, 45, 2, N'台北市第五信用合作社', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T11:43:43.000' AS DateTime), CAST(N'2022-12-08T11:43:43.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (61, 60, 0, N'台北市第五信用合作社管理者群組', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T11:44:31.000' AS DateTime), CAST(N'2022-12-08T11:44:31.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (62, 60, 0, N'台北市第五信用合作社操作者群組', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T11:45:15.000' AS DateTime), CAST(N'2022-12-08T11:45:15.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (63, 45, 0, N'有限責任基隆市第二信用合作社', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T11:46:40.000' AS DateTime), CAST(N'2022-12-08T11:46:40.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (64, 45, 0, N'有限責任新北市淡水信用合作社', 103, 1, N'admin', N'admin', CAST(N'2022-12-08T11:47:59.000' AS DateTime), CAST(N'2022-12-08T11:47:59.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (65, 46, 0, N'中華郵政股份有限公司(儲匯處)', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T11:49:40.000' AS DateTime), CAST(N'2022-12-08T11:49:40.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (66, 47, 2, N'財團法人聯合信用卡處理中心', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T11:51:23.000' AS DateTime), CAST(N'2022-12-08T11:51:23.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (67, 66, 0, N'財團法人聯合信用卡處理中心管理者群組', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T11:52:06.000' AS DateTime), CAST(N'2022-12-08T11:52:06.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (68, 66, 0, N'財團法人聯合信用卡處理中心操作者群組', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T11:53:04.000' AS DateTime), CAST(N'2022-12-08T11:53:04.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (69, 47, 0, N'美商維信國際威士卡有限公司台灣分公司', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T11:55:09.000' AS DateTime), CAST(N'2022-12-08T11:55:09.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (70, 72, 0, N'兆豐票券金融股份有限公司操作者群組', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T11:56:29.000' AS DateTime), CAST(N'2022-12-08T11:59:51.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (71, 72, 0, N'兆豐票券金融股份有限公司管理者群組', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T11:57:39.000' AS DateTime), CAST(N'2022-12-08T12:00:21.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (72, 48, 2, N'兆豐票券金融股份有限公司', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T11:59:07.000' AS DateTime), CAST(N'2022-12-08T11:59:07.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (73, 48, 0, N'中華票券金融股份有限公司', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T13:16:05.000' AS DateTime), CAST(N'2022-12-08T13:16:05.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (74, 48, 0, N'大中票券金融股份有限公司', 103, 1, N'admin', N'admin', CAST(N'2022-12-08T13:16:48.000' AS DateTime), CAST(N'2022-12-08T13:16:48.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (75, 40, 3, N'人壽保險公司', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T13:18:00.000' AS DateTime), CAST(N'2022-12-08T13:18:00.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (76, 40, 0, N'產物保險公司', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T13:18:19.000' AS DateTime), CAST(N'2022-12-08T13:18:19.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (77, 40, 0, N'再保險公司', 103, 1, N'admin', N'admin', CAST(N'2022-12-08T13:18:46.000' AS DateTime), CAST(N'2022-12-08T13:18:46.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (78, 40, 0, N'保險合作社', 104, 1, N'admin', N'admin', CAST(N'2022-12-08T13:19:06.000' AS DateTime), CAST(N'2022-12-08T13:19:06.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (79, 40, 0, N'保險經紀人', 105, 1, N'admin', N'admin', CAST(N'2022-12-08T13:19:29.000' AS DateTime), CAST(N'2022-12-08T13:19:29.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (80, 75, 2, N'富邦人壽保險股份有限公司', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T13:20:16.000' AS DateTime), CAST(N'2022-12-08T13:20:16.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (81, 80, 0, N'富邦人壽保險股份有限公司管理者群組', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T13:20:50.000' AS DateTime), CAST(N'2022-12-08T13:20:50.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (82, 80, 0, N'富邦人壽保險股份有限公司操作者群組', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T13:21:19.000' AS DateTime), CAST(N'2022-12-08T13:21:19.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (83, 75, 0, N'臺銀人壽保險股份有限公司', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T13:22:32.000' AS DateTime), CAST(N'2022-12-08T13:22:32.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (84, 75, 0, N'台灣人壽保險股份有限公司', 103, 1, N'admin', N'admin', CAST(N'2022-12-08T13:22:57.000' AS DateTime), CAST(N'2022-12-08T13:22:57.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (85, 41, 4, N'證券公司', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T13:23:33.000' AS DateTime), CAST(N'2022-12-08T13:23:33.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (86, 41, 0, N'期貨公司', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T13:23:50.000' AS DateTime), CAST(N'2022-12-08T13:23:50.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (87, 41, 0, N'證券投資信託公司', 103, 1, N'admin', N'admin', CAST(N'2022-12-08T13:24:26.000' AS DateTime), CAST(N'2022-12-08T13:24:26.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (88, 41, 0, N'證券投資顧問公司', 104, 1, N'admin', N'admin', CAST(N'2022-12-08T13:24:45.000' AS DateTime), CAST(N'2022-12-08T13:24:45.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (89, 41, 0, N'證券金融公司', 105, 1, N'admin', N'admin', CAST(N'2022-12-08T13:25:13.000' AS DateTime), CAST(N'2022-12-08T13:25:13.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (90, 85, 0, N'富達證券股份有限公司', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T13:26:53.000' AS DateTime), CAST(N'2022-12-08T13:26:53.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (91, 85, 0, N'東亞股份有限公司', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T13:27:29.000' AS DateTime), CAST(N'2022-12-08T13:27:29.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (92, 85, 0, N'板信商業銀行股份有限公司', 103, 1, N'admin', N'admin', CAST(N'2022-12-08T13:28:00.000' AS DateTime), CAST(N'2022-12-08T13:28:00.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (93, 85, 0, N'摩根證券股份有限公司', 104, 1, N'admin', N'admin', CAST(N'2022-12-08T13:41:50.000' AS DateTime), CAST(N'2022-12-08T13:41:50.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (94, 42, 4, N'電子票證公司', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T13:42:30.000' AS DateTime), CAST(N'2022-12-08T13:42:30.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (95, 94, 2, N'悠遊卡股份有限公司', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T13:43:11.000' AS DateTime), CAST(N'2022-12-08T13:43:11.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (96, 94, 0, N'一卡通票證股份有限公司', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T13:43:58.000' AS DateTime), CAST(N'2022-12-08T13:43:58.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (97, 94, 0, N'愛金卡股份有限公司', 103, 1, N'admin', N'admin', CAST(N'2022-12-08T13:44:35.000' AS DateTime), CAST(N'2022-12-08T13:44:35.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (98, 94, 0, N'遠鑫電子票證股份有限公司', 104, 1, N'admin', N'admin', CAST(N'2022-12-08T13:45:21.000' AS DateTime), CAST(N'2022-12-08T13:45:21.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (99, 95, 0, N'悠遊卡股份有限公司管理者群組', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T13:46:07.000' AS DateTime), CAST(N'2022-12-08T13:46:07.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (100, 95, 0, N'悠遊卡股份有限公司操作者群組', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T13:46:27.000' AS DateTime), CAST(N'2022-12-08T13:46:27.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (101, 43, 2, N'歐付寶第三方支付股份有限公司', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T13:52:34.000' AS DateTime), CAST(N'2022-12-08T13:52:34.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (102, 101, 0, N'歐付寶第三方支付股份有限公司管理者群組', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T13:52:57.000' AS DateTime), CAST(N'2022-12-08T13:52:57.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (103, 101, 0, N'歐付寶第三方支付股份有限公司操作者群組', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T13:53:18.000' AS DateTime), CAST(N'2022-12-08T13:53:18.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (104, 43, 0, N'簡單行動支付股份有限公司(原智付寶)', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T13:54:20.000' AS DateTime), CAST(N'2022-12-08T13:54:20.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (105, 43, 0, N'橘子支行動支付股份有限公司(原 樂點行動支付股份有限公司)', 103, 1, N'admin', N'admin', CAST(N'2022-12-08T13:58:24.000' AS DateTime), CAST(N'2022-12-08T13:58:24.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (106, 26, 2, N'保險局', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T13:59:54.000' AS DateTime), CAST(N'2022-12-08T13:59:54.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (107, 26, 2, N'銀行局', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T14:00:08.000' AS DateTime), CAST(N'2022-12-08T14:00:08.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (108, 26, 2, N'證期局', 103, 1, N'admin', N'admin', CAST(N'2022-12-08T14:00:31.000' AS DateTime), CAST(N'2022-12-08T14:00:31.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (109, 26, 2, N'金管會', 104, 1, N'admin', N'admin', CAST(N'2022-12-08T14:00:45.000' AS DateTime), CAST(N'2022-12-08T14:00:45.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (110, 26, 2, N'教育局', 105, 1, N'admin', N'admin', CAST(N'2022-12-08T14:01:04.000' AS DateTime), CAST(N'2022-12-08T14:01:04.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (111, 106, 0, N'保險局管理者群組', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T14:01:51.000' AS DateTime), CAST(N'2022-12-08T14:01:51.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (112, 106, 0, N'保險局操作者群組', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T14:02:13.000' AS DateTime), CAST(N'2022-12-08T14:02:13.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (113, 107, 0, N'銀行局管理者群組', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T14:07:59.000' AS DateTime), CAST(N'2022-12-08T14:07:59.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (114, 107, 0, N'銀行局操作者群組', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T14:08:32.000' AS DateTime), CAST(N'2022-12-08T14:08:32.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (115, 108, 0, N'證期局管理者群組', 101, 1, N'admin', N'admin', CAST(N'2022-12-08T14:09:10.000' AS DateTime), CAST(N'2022-12-08T14:09:10.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (116, 108, 0, N'證期局操作者群組', 102, 1, N'admin', N'admin', CAST(N'2022-12-08T14:09:28.000' AS DateTime), CAST(N'2022-12-08T14:09:28.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (117, 24, 0, N'機構正職操作者群組', 104, 1, N'admin', N'admin', CAST(N'2022-12-08T14:13:29.000' AS DateTime), CAST(N'2022-12-08T14:13:29.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (118, 24, 0, N'機構派遣操作者群組', 105, 1, N'admin', N'admin', CAST(N'2022-12-08T14:14:08.000' AS DateTime), CAST(N'2022-12-08T14:14:08.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (119, 24, 0, N'機構正職操作者群組議事行政群組', 106, 1, N'admin', N'admin', CAST(N'2022-12-16T09:50:27.000' AS DateTime), CAST(N'2022-12-16T09:50:27.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (120, 24, 0, N'機構其他群組', 107, 1, N'admin', N'admin', CAST(N'2022-12-16T09:50:42.000' AS DateTime), CAST(N'2022-12-16T09:50:42.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (121, 24, 0, N'臨櫃群組', 108, 1, N'admin', N'admin', CAST(N'2022-12-16T09:50:56.000' AS DateTime), CAST(N'2022-12-16T09:50:56.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (122, 24, 0, N'評議委員群組', 109, 1, N'admin', N'admin', CAST(N'2022-12-16T09:51:10.000' AS DateTime), CAST(N'2022-12-16T09:51:10.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (123, 109, 0, N'金管會管理者群組', 101, 1, N'admin', N'admin', CAST(N'2022-12-16T10:06:56.000' AS DateTime), CAST(N'2022-12-16T10:06:56.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (124, 109, 0, N'金管會操作者群組', 102, 1, N'admin', N'admin', CAST(N'2022-12-16T10:07:10.000' AS DateTime), CAST(N'2022-12-16T10:07:10.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (125, 110, 0, N'教育部管理者群組', 101, 1, N'admin', N'admin', CAST(N'2022-12-16T10:07:25.000' AS DateTime), CAST(N'2022-12-16T10:07:25.000' AS DateTime))
INSERT [sys_dept] ([dept_id], [pid], [sub_count], [name], [dept_sort], [enabled], [create_by], [update_by], [create_time], [update_time]) VALUES (126, 110, 0, N'教育部操作者群組', 102, 1, N'admin', N'admin', CAST(N'2022-12-16T10:07:47.000' AS DateTime), CAST(N'2022-12-16T10:07:47.000' AS DateTime))
SET IDENTITY_INSERT [sys_dept] OFF
GO
SET IDENTITY_INSERT [sys_dict] ON 

INSERT [sys_dict] ([dict_id], [name], [description], [create_by], [update_by], [create_time], [update_time]) VALUES (1, N'user_status', N'使用者狀態', NULL, NULL, CAST(N'2019-10-27T20:31:36.000' AS DateTime), NULL)
INSERT [sys_dict] ([dict_id], [name], [description], [create_by], [update_by], [create_time], [update_time]) VALUES (4, N'dept_status', N'部門狀態', NULL, NULL, CAST(N'2019-10-27T20:31:36.000' AS DateTime), NULL)
INSERT [sys_dict] ([dict_id], [name], [description], [create_by], [update_by], [create_time], [update_time]) VALUES (5, N'job_status', N'職務狀態', NULL, NULL, CAST(N'2019-10-27T20:31:36.000' AS DateTime), NULL)
SET IDENTITY_INSERT [sys_dict] OFF
GO
SET IDENTITY_INSERT [sys_dict_detail] ON 

INSERT [sys_dict_detail] ([detail_id], [dict_id], [label], [value], [dict_sort], [create_by], [update_by], [create_time], [update_time]) VALUES (1, 1, N'啟用', N'true', 1, NULL, NULL, CAST(N'2022-12-20T10:48:28.000' AS DateTime), NULL)
INSERT [sys_dict_detail] ([detail_id], [dict_id], [label], [value], [dict_sort], [create_by], [update_by], [create_time], [update_time]) VALUES (2, 1, N'禁用', N'false', 2, NULL, NULL, CAST(N'2022-12-20T10:48:28.000' AS DateTime), NULL)
INSERT [sys_dict_detail] ([detail_id], [dict_id], [label], [value], [dict_sort], [create_by], [update_by], [create_time], [update_time]) VALUES (3, 4, N'啟用', N'true', 1, NULL, NULL, CAST(N'2022-12-20T10:48:28.000' AS DateTime), NULL)
INSERT [sys_dict_detail] ([detail_id], [dict_id], [label], [value], [dict_sort], [create_by], [update_by], [create_time], [update_time]) VALUES (4, 4, N'停用', N'false', 2, NULL, NULL, CAST(N'2022-12-20T10:48:28.000' AS DateTime), NULL)
INSERT [sys_dict_detail] ([detail_id], [dict_id], [label], [value], [dict_sort], [create_by], [update_by], [create_time], [update_time]) VALUES (5, 5, N'啟用', N'true', 1, NULL, NULL, CAST(N'2022-12-20T10:48:28.000' AS DateTime), NULL)
INSERT [sys_dict_detail] ([detail_id], [dict_id], [label], [value], [dict_sort], [create_by], [update_by], [create_time], [update_time]) VALUES (6, 5, N'停用', N'false', 2, NULL, NULL, CAST(N'2022-12-20T10:48:28.000' AS DateTime), NULL)
SET IDENTITY_INSERT [sys_dict_detail] OFF
GO
SET IDENTITY_INSERT [sys_job] ON 

INSERT [sys_job] ([job_id], [name], [enabled], [job_sort], [create_by], [update_by], [create_time], [update_time]) VALUES (8, N'人事專員', 1, 3, NULL, NULL, CAST(N'2019-03-29T14:52:28.000' AS DateTime), NULL)
INSERT [sys_job] ([job_id], [name], [enabled], [job_sort], [create_by], [update_by], [create_time], [update_time]) VALUES (10, N'產品經理', 1, 4, NULL, NULL, CAST(N'2019-03-29T14:55:51.000' AS DateTime), NULL)
INSERT [sys_job] ([job_id], [name], [enabled], [job_sort], [create_by], [update_by], [create_time], [update_time]) VALUES (11, N'全棧開發', 1, 2, NULL, N'admin', CAST(N'2019-03-31T13:39:30.000' AS DateTime), CAST(N'2020-05-05T11:33:43.000' AS DateTime))
INSERT [sys_job] ([job_id], [name], [enabled], [job_sort], [create_by], [update_by], [create_time], [update_time]) VALUES (12, N'軟體測試', 1, 5, NULL, N'admin', CAST(N'2019-03-31T13:39:43.000' AS DateTime), CAST(N'2020-05-10T19:56:26.000' AS DateTime))
INSERT [sys_job] ([job_id], [name], [enabled], [job_sort], [create_by], [update_by], [create_time], [update_time]) VALUES (14, N'科長', 1, 6, N'admin', N'admin', CAST(N'2022-12-06T17:16:30.000' AS DateTime), CAST(N'2022-12-06T17:16:30.000' AS DateTime))
SET IDENTITY_INSERT [sys_job] OFF
GO
SET IDENTITY_INSERT [sys_menu] ON 

INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (1, NULL, 7, 0, N'系統管理', NULL, NULL, 101, N'system', N'system', 0, 0, 0, NULL, NULL, N'admin', CAST(N'2018-12-18T15:11:29.000' AS DateTime), CAST(N'2022-12-08T09:03:50.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (2, 1, 3, 1, N'使用者管理', N'User', N'system/user/index', 2, N'peoples', N'user', 0, 0, 0, N'user:list', NULL, NULL, CAST(N'2018-12-18T15:14:44.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (3, 1, 3, 1, N'角色管理', N'Role', N'system/role/index', 3, N'role', N'role', 0, 0, 0, N'roles:list', NULL, NULL, CAST(N'2018-12-18T15:16:07.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (5, 1, 3, 1, N'選單管理', N'Menu', N'system/menu/index', 5, N'menu', N'menu', 0, 0, 0, N'menu:list', NULL, NULL, CAST(N'2018-12-18T15:17:28.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (6, NULL, 5, 0, N'系統監控', NULL, NULL, 102, N'monitor', N'monitor', 0, 0, 0, NULL, NULL, N'admin', CAST(N'2018-12-18T15:17:48.000' AS DateTime), CAST(N'2022-12-08T09:04:05.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (7, 6, 0, 1, N'操作日誌', N'Log', N'monitor/log/index', 11, N'log', N'logs', 0, 1, 0, N'log:list', NULL, N'admin', CAST(N'2018-12-18T15:18:26.000' AS DateTime), CAST(N'2022-12-06T16:04:53.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (9, 6, 0, 1, N'SQL監控', N'Sql', N'monitor/sql/index', 18, N'sqlMonitor', N'druid', 0, 0, 1, NULL, NULL, N'admin', CAST(N'2018-12-18T15:19:34.000' AS DateTime), CAST(N'2022-12-06T15:21:14.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (10, NULL, 5, 0, N'元件管理', NULL, NULL, 106, N'zujian', N'components', 0, 0, 1, NULL, NULL, N'admin', CAST(N'2018-12-19T13:38:16.000' AS DateTime), CAST(N'2022-12-13T11:36:58.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (11, 10, 0, 1, N'圖示庫', N'Icons', N'components/icons/index', 51, N'icon', N'icon', 0, 0, 0, NULL, NULL, NULL, CAST(N'2018-12-19T13:38:49.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (14, 36, 0, 1, N'寄信歷程管理', N'Email', N'tools/email/index', 35, N'email', N'email', 0, 0, 0, NULL, NULL, N'admin', CAST(N'2018-12-27T10:13:09.000' AS DateTime), CAST(N'2022-12-26T17:22:54.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (15, 10, 0, 1, N'富文字', N'Editor', N'components/Editor', 52, N'fwb', N'tinymce', 0, 0, 0, NULL, NULL, N'admin', CAST(N'2018-12-27T11:58:25.000' AS DateTime), CAST(N'2022-12-08T17:07:25.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (18, 36, 3, 1, N'儲存管理', N'Storage', N'tools/storage/index', 34, N'chain', N'storage', 0, 0, 0, N'storage:list', NULL, N'admin', CAST(N'2018-12-31T11:12:15.000' AS DateTime), CAST(N'2022-12-08T17:09:17.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (28, 1, 3, 1, N'任務排程', N'Timing', N'system/timing/index', 999, N'timing', N'timing', 0, 0, 1, N'timing:list', NULL, N'admin', CAST(N'2019-01-07T20:34:40.000' AS DateTime), CAST(N'2022-12-26T17:22:09.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (30, 36, 0, 1, N'程式碼產生', N'GeneratorIndex', N'generator/index', 32, N'dev', N'generator', 0, 1, 1, NULL, NULL, N'admin', CAST(N'2019-01-11T15:45:55.000' AS DateTime), CAST(N'2022-12-26T17:25:45.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (32, 6, 0, 1, N'異常日誌', N'ErrorLog', N'monitor/log/errorLog', 12, N'error', N'errorLog', 0, 0, 1, N'log:list', NULL, N'admin', CAST(N'2019-01-13T13:49:03.000' AS DateTime), CAST(N'2022-12-06T16:04:00.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (33, 10, 0, 1, N'Markdown', N'Markdown', N'components/MarkDown', 53, N'markdown', N'markdown', 0, 0, 0, NULL, NULL, NULL, CAST(N'2019-03-08T13:46:44.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (34, 10, 0, 1, N'Yaml編輯器', N'YamlEdit', N'components/YamlEdit', 54, N'dev', N'yaml', 0, 0, 0, NULL, NULL, NULL, CAST(N'2019-03-08T15:49:40.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (35, 1, 3, 1, N'組織單位管理', N'Dept', N'system/dept/index', 6, N'dept', N'dept', 0, 0, 0, N'dept:list', NULL, NULL, CAST(N'2019-03-25T09:46:00.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (36, NULL, 11, 0, N'系統工具', NULL, N'', 104, N'sys-tools', N'sys-tools', 0, 0, 0, NULL, NULL, N'admin', CAST(N'2019-03-29T10:57:35.000' AS DateTime), CAST(N'2022-12-08T09:06:37.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (37, 1, 3, 1, N'職務管理', N'Job', N'system/job/index', 7, N'Steve-Jobs', N'job', 0, 0, 0, N'job:list', NULL, NULL, CAST(N'2019-03-29T13:51:18.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (38, 36, 0, 1, N'介面文件', N'Swagger', N'tools/swagger/index', 36, N'swagger', N'swagger2', 0, 0, 0, NULL, NULL, NULL, CAST(N'2019-03-29T19:57:53.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (39, 1, 3, 1, N'字典管理', N'Dict', N'system/dict/index', 8, N'dictionary', N'dict', 0, 0, 0, N'dict:list', NULL, NULL, CAST(N'2019-04-10T11:49:04.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (41, 6, 0, 1, N'線上使用者', N'OnlineUser', N'monitor/online/index', 10, N'Steve-Jobs', N'online', 0, 0, 0, NULL, NULL, NULL, CAST(N'2019-10-26T22:08:43.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (44, 2, 0, 2, N'使用者新增', NULL, N'', 2, N'', N'', 0, 0, 0, N'user:add', NULL, NULL, CAST(N'2019-10-29T10:59:46.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (45, 2, 0, 2, N'使用者編輯', NULL, N'', 3, N'', N'', 0, 0, 0, N'user:edit', NULL, NULL, CAST(N'2019-10-29T11:00:08.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (46, 2, 0, 2, N'使用者刪除', NULL, N'', 4, N'', N'', 0, 0, 0, N'user:del', NULL, NULL, CAST(N'2019-10-29T11:00:23.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (48, 3, 0, 2, N'角色建立', NULL, N'', 2, N'', N'', 0, 0, 0, N'roles:add', NULL, NULL, CAST(N'2019-10-29T12:45:34.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (49, 3, 0, 2, N'角色修改', NULL, N'', 3, N'', N'', 0, 0, 0, N'roles:edit', NULL, NULL, CAST(N'2019-10-29T12:46:16.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (50, 3, 0, 2, N'角色刪除', NULL, N'', 4, N'', N'', 0, 0, 0, N'roles:del', NULL, NULL, CAST(N'2019-10-29T12:46:51.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (52, 5, 0, 2, N'選單新增', NULL, N'', 2, N'', N'', 0, 0, 0, N'menu:add', NULL, NULL, CAST(N'2019-10-29T12:55:07.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (53, 5, 0, 2, N'選單編輯', NULL, N'', 3, N'', N'', 0, 0, 0, N'menu:edit', NULL, NULL, CAST(N'2019-10-29T12:55:40.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (54, 5, 0, 2, N'選單刪除', NULL, N'', 4, N'', N'', 0, 0, 0, N'menu:del', NULL, NULL, CAST(N'2019-10-29T12:56:00.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (56, 35, 0, 2, N'部門新增', NULL, N'', 2, N'', N'', 0, 0, 0, N'dept:add', NULL, NULL, CAST(N'2019-10-29T12:57:09.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (57, 35, 0, 2, N'部門編輯', NULL, N'', 3, N'', N'', 0, 0, 0, N'dept:edit', NULL, NULL, CAST(N'2019-10-29T12:57:27.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (58, 35, 0, 2, N'部門刪除', NULL, N'', 4, N'', N'', 0, 0, 0, N'dept:del', NULL, NULL, CAST(N'2019-10-29T12:57:41.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (60, 37, 0, 2, N'職務新增', NULL, N'', 2, N'', N'', 0, 0, 0, N'job:add', NULL, NULL, CAST(N'2019-10-29T12:58:27.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (61, 37, 0, 2, N'職務編輯', NULL, N'', 3, N'', N'', 0, 0, 0, N'job:edit', NULL, NULL, CAST(N'2019-10-29T12:58:45.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (62, 37, 0, 2, N'職務刪除', NULL, N'', 4, N'', N'', 0, 0, 0, N'job:del', NULL, NULL, CAST(N'2019-10-29T12:59:04.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (64, 39, 0, 2, N'字典新增', NULL, N'', 2, N'', N'', 0, 0, 0, N'dict:add', NULL, NULL, CAST(N'2019-10-29T13:00:17.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (65, 39, 0, 2, N'字典編輯', NULL, N'', 3, N'', N'', 0, 0, 0, N'dict:edit', NULL, NULL, CAST(N'2019-10-29T13:00:42.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (66, 39, 0, 2, N'字典刪除', NULL, N'', 4, N'', N'', 0, 0, 0, N'dict:del', NULL, NULL, CAST(N'2019-10-29T13:00:59.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (73, 28, 0, 2, N'任務新增', NULL, N'', 2, N'', N'', 0, 0, 0, N'timing:add', NULL, NULL, CAST(N'2019-10-29T13:07:28.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (74, 28, 0, 2, N'任務編輯', NULL, N'', 3, N'', N'', 0, 0, 0, N'timing:edit', NULL, NULL, CAST(N'2019-10-29T13:07:41.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (75, 28, 0, 2, N'任務刪除', NULL, N'', 4, N'', N'', 0, 0, 0, N'timing:del', NULL, NULL, CAST(N'2019-10-29T13:07:54.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (77, 18, 0, 2, N'上傳檔案', NULL, N'', 2, N'', N'', 0, 0, 0, N'storage:add', NULL, NULL, CAST(N'2019-10-29T13:09:09.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (78, 18, 0, 2, N'檔案編輯', NULL, N'', 3, N'', N'', 0, 0, 0, N'storage:edit', NULL, NULL, CAST(N'2019-10-29T13:09:22.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (79, 18, 0, 2, N'檔案刪除', NULL, N'', 4, N'', N'', 0, 0, 0, N'storage:del', NULL, NULL, CAST(N'2019-10-29T13:09:34.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (80, 6, 0, 1, N'服務監控', N'ServerMonitor', N'monitor/server/index', 14, N'codeConsole', N'server', 0, 0, 0, N'monitor:list', NULL, N'admin', CAST(N'2019-11-07T13:06:39.000' AS DateTime), CAST(N'2020-05-04T18:20:50.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (82, 36, 0, 1, N'產生配置', N'GeneratorConfig', N'generator/config', 33, N'dev', N'generator/config/:tableName', 0, 1, 1, N'', NULL, N'admin', CAST(N'2019-11-17T20:08:56.000' AS DateTime), CAST(N'2022-12-26T17:23:10.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (83, 10, 0, 1, N'圖表庫', N'Echarts', N'components/Echarts', 50, N'chart', N'echarts', 0, 1, 0, N'', NULL, NULL, CAST(N'2019-11-21T09:04:32.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (90, NULL, 5, 1, N'運維管理', N'Mnt', N'', 103, N'mnt', N'mnt', 0, 0, 1, NULL, NULL, N'admin', CAST(N'2019-11-09T10:31:08.000' AS DateTime), CAST(N'2022-12-26T17:22:23.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (92, 90, 3, 1, N'伺服器', N'ServerDeploy', N'mnt/server/index', 22, N'server', N'mnt/serverDeploy', 0, 0, 0, N'serverDeploy:list', NULL, NULL, CAST(N'2019-11-10T10:29:25.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (93, 90, 3, 1, N'應用管理', N'App', N'mnt/app/index', 23, N'app', N'mnt/app', 0, 0, 0, N'app:list', NULL, NULL, CAST(N'2019-11-10T11:05:16.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (94, 90, 3, 1, N'部署管理', N'Deploy', N'mnt/deploy/index', 24, N'deploy', N'mnt/deploy', 0, 0, 0, N'deploy:list', NULL, NULL, CAST(N'2019-11-10T15:56:55.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (97, 90, 1, 1, N'部署備份', N'DeployHistory', N'mnt/deployHistory/index', 25, N'backup', N'mnt/deployHistory', 0, 0, 0, N'deployHistory:list', NULL, NULL, CAST(N'2019-11-10T16:49:44.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (98, 90, 3, 1, N'資料庫管理', N'Database', N'mnt/database/index', 26, N'database', N'mnt/database', 0, 0, 0, N'database:list', NULL, NULL, CAST(N'2019-11-10T20:40:04.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (102, 97, 0, 2, N'刪除', NULL, N'', 999, N'', N'', 0, 0, 0, N'deployHistory:del', NULL, NULL, CAST(N'2019-11-17T09:32:48.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (103, 92, 0, 2, N'伺服器新增', NULL, N'', 999, N'', N'', 0, 0, 0, N'serverDeploy:add', NULL, NULL, CAST(N'2019-11-17T11:08:33.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (104, 92, 0, 2, N'伺服器編輯', NULL, N'', 999, N'', N'', 0, 0, 0, N'serverDeploy:edit', NULL, NULL, CAST(N'2019-11-17T11:08:57.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (105, 92, 0, 2, N'伺服器刪除', NULL, N'', 999, N'', N'', 0, 0, 0, N'serverDeploy:del', NULL, NULL, CAST(N'2019-11-17T11:09:15.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (106, 93, 0, 2, N'應用新增', NULL, N'', 999, N'', N'', 0, 0, 0, N'app:add', NULL, NULL, CAST(N'2019-11-17T11:10:03.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (107, 93, 0, 2, N'應用編輯', NULL, N'', 999, N'', N'', 0, 0, 0, N'app:edit', NULL, NULL, CAST(N'2019-11-17T11:10:28.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (108, 93, 0, 2, N'應用刪除', NULL, N'', 999, N'', N'', 0, 0, 0, N'app:del', NULL, NULL, CAST(N'2019-11-17T11:10:55.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (109, 94, 0, 2, N'部署新增', NULL, N'', 999, N'', N'', 0, 0, 0, N'deploy:add', NULL, NULL, CAST(N'2019-11-17T11:11:22.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (110, 94, 0, 2, N'部署編輯', NULL, N'', 999, N'', N'', 0, 0, 0, N'deploy:edit', NULL, NULL, CAST(N'2019-11-17T11:11:41.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (111, 94, 0, 2, N'部署刪除', NULL, N'', 999, N'', N'', 0, 0, 0, N'deploy:del', NULL, NULL, CAST(N'2019-11-17T11:12:01.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (112, 98, 0, 2, N'資料庫新增', NULL, N'', 999, N'', N'', 0, 0, 0, N'database:add', NULL, NULL, CAST(N'2019-11-17T11:12:43.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (113, 98, 0, 2, N'資料庫編輯', NULL, N'', 999, N'', N'', 0, 0, 0, N'database:edit', NULL, NULL, CAST(N'2019-11-17T11:12:58.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (114, 98, 0, 2, N'資料庫刪除', NULL, N'', 999, N'', N'', 0, 0, 0, N'database:del', NULL, NULL, CAST(N'2019-11-17T11:13:14.000' AS DateTime), NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (116, 36, 0, 1, N'產生預覽', N'Preview', N'generator/preview', 999, N'java', N'generator/preview/:tableName', 0, 1, 1, NULL, NULL, N'admin', CAST(N'2019-11-26T14:54:36.000' AS DateTime), CAST(N'2022-12-26T17:22:45.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (123, 36, 5, 1, N'共用代碼管理', N'codeDetail', N'ezTool/codeDetail/CodeIndex', 105, N'dictionary', N'codedetail', 0, 0, 0, N'code:list', N'admin', N'admin', CAST(N'2022-11-15T17:59:47.000' AS DateTime), CAST(N'2023-01-07T10:14:01.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (124, 123, 0, 2, N'重新載入', NULL, NULL, 4, NULL, NULL, 0, 0, 0, N'code:reload', N'admin', N'admin', CAST(N'2022-11-15T18:32:48.000' AS DateTime), CAST(N'2022-11-16T13:19:05.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (125, 123, 0, 2, N'更新代碼', NULL, NULL, 3, NULL, NULL, 0, 0, 0, N'code:edit', N'admin', N'admin', CAST(N'2022-11-15T18:51:09.000' AS DateTime), CAST(N'2022-11-16T13:18:57.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (126, 123, 0, 2, N'刪除代碼', NULL, NULL, 2, NULL, NULL, 0, 0, 0, N'code:del', N'admin', N'admin', CAST(N'2022-11-15T18:51:40.000' AS DateTime), CAST(N'2022-11-16T13:18:44.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (127, 123, 0, 2, N'新增代碼', NULL, NULL, 1, NULL, NULL, 0, 0, 0, N'code:add', N'admin', N'admin', CAST(N'2022-11-15T19:01:08.000' AS DateTime), CAST(N'2022-11-16T13:18:30.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (128, 123, 0, 2, N'匯出', NULL, NULL, 5, NULL, NULL, 0, 0, 0, N'code:export', N'admin', N'admin', CAST(N'2022-11-16T13:18:13.000' AS DateTime), CAST(N'2022-11-16T13:18:13.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (281, 332, 0, 2, N'公告事項維護編輯', N'dbRecord89', N'dbRecord89/index', 101, N'log', N'dbRecord89', 0, 0, 0, N'dbRecord89:list', N'admin', N'admin', CAST(N'2022-12-14T15:31:24.000' AS DateTime), CAST(N'2022-12-14T15:31:24.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (331, 36, 0, 1, N'小幫手', N'helper', N'ezTool/help/EditHelp', 999, N'edit', N'helper', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2022-12-28T11:07:32.000' AS DateTime), CAST(N'2022-12-28T11:07:32.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (332, 36, 4, 1, N'公告管理', N'EditPost', N'ezTool/post/EditPost.vue', 1, N'edit', N'EditPost', 0, 0, 0, N'post:list', NULL, N'admin', NULL, CAST(N'2023-01-07T10:10:28.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (333, 332, 0, 2, N'公告修改', NULL, NULL, 999, NULL, NULL, 0, 0, 0, N'post:put', NULL, NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (334, 332, 0, 2, N'公告新增', NULL, NULL, 999, NULL, NULL, 0, 0, 0, N'post:post', NULL, NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (335, 332, 0, 2, N'公告刪除', NULL, NULL, 999, NULL, NULL, 0, 0, 0, N'post:delete', NULL, NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (336, 36, 0, 1, N'公告列表', N'PostIndex', N'ezTool/post/PostIndex.vue', 1, N'message', N'PostIndex', 0, 0, 0, N'post:list', NULL, N'admin', NULL, CAST(N'2023-01-07T10:10:49.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (337, 36, 0, 1, N'公告詳細', N'PostDetail', N'ezTool/post/PostDetail', 999, N'link', N'PostDetail', 0, 0, 1, N'post:get', NULL, N'admin', NULL, CAST(N'2023-01-07T10:22:41.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (338, NULL, 0, 1, N'*開發範例*', N'開發範例', N'ezTool/foi/demo/index', 999, N'dev', N'demo', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-03-13T13:40:15.000' AS DateTime), CAST(N'2023-03-14T15:54:01.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (339, NULL, 3, 0, N'申請人案件系統', N'OUT01', NULL, 2, N'zujian', N'OUT01', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:34:41.330' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (340, 339, 0, 1, N'防疫保單線上評議', N'OUT010101', N'OUT/OUT01/OUT0101/OUT010101', 2, N'app', N'OUT010101', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T10:35:55.690' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (341, 339, 0, 1, N'防疫保單爭議申訴', N'OUT010102', N'OUT/OUT01/OUT0101/OUT010102', 3, N'app', N'OUT010102', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T10:36:02.670' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (342, 445, 0, 1, N'爭議專案處理', N'OUT010201-1', N'OUT/OUT01/OUT0102/OUT010201', 1, N'app', N'OUT010201', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-08-01T09:56:43.813' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (343, 444, 0, 1, N'會議與預審資料', N'OUT010301', N'OUT/OUT01/OUT0103/OUT010301', 1, N'app', N'OUT010301', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T17:02:31.633' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (344, 444, 0, 1, N'預審資料判斷', N'out010302', N'OUT/OUT01/OUT0103/OUT010302', 2, N'app', N'OUT010302', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-08-01T09:48:08.233' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (345, 339, 0, 1, N'案件進度查詢', N'OUT010801', N'OUT/OUT01/OUT0108/OUT010801', 1, N'app', N'OUT010801', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T10:35:41.997' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (346, 446, 2, 0, N'公司維護', N'OUT03', NULL, 2, N'list', N'OUT03', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T17:00:38.887' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (347, 346, 0, 1, N'公司基本資料維護', N'OUT030501', N'OUT/OUT03/OUT0305/OUT030501', 1, N'app', N'OUT030501', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (348, 346, 0, 1, N'契約數登錄', N'OUT030502', N'OUT/OUT03/OUT0305/OUT030502', 2, N'app', N'OUT030502', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-06-30T14:13:28.707' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (349, 446, 3, 0, N'線上核對專區', N'OUT04', NULL, 3, N'list', N'OUT04', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T17:00:51.590' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (350, 349, 0, 1, N'季揭露申訴線上對件', N'OUT040201', N'OUT/OUT04/OUT0402/OUT040201', 1, N'app', N'OUT040201', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (351, 349, 0, 1, N'季揭露評議線上對件', N'OUT040202', N'OUT/OUT04/OUT0402/OUT040201', 2, N'app', N'OUT040202', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-05-23T10:12:19.630' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (352, 349, 0, 1, N'一般評議案件屬性線上對件', N'OUT040203', N'OUT/OUT04/OUT0402/OUT040201', 3, N'app', N'OUT040203', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-05-23T10:12:23.697' AS DateTime))
GO
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (354, 464, 0, 1, N'線上文件下載', N'OUT080101', N'OUT/OUT08/OUT0801/OUT080101', 1, N'swagger', N'OUT080101', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T17:02:55.367' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (355, 452, 16, 0, N'即時報表', N'WEB0802', NULL, 2, N'list', N'WEB0802', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:55:52.457' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (356, 462, 0, 1, N'金融服務業爭議案件統計表', N'WEB080204', N'WEB/WEB08/WEB0802/WEB080204', 1, N'swagger', N'WEB080204', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T17:51:06.357' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (357, 445, 0, 1, N'金融服務業爭議案件明細表v2', N'WEB080207', N'WEB/WEB08/WEB0802/WEB080207', 2, N'swagger', N'WEB080207', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T17:51:34.287' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (358, 462, 0, 1, N'金融服務業爭議案件屬性統計表', N'WEB080210', N'WEB/WEB08/WEB0802/WEB080210', 10, N'swagger', N'WEB080210', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T17:03:22.660' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (359, 447, 6, 0, N'案件管理', N'WEB01', NULL, 1, N'list', N'WEB01', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-08-01T10:18:29.297' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (360, 359, 0, 1, N'案件管理(服務組)', N'WEB010101', N'WEB/WEB01/WEB0101/WEB010101/index.vue', 1, N'app', N'WEB010101', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-08-01T10:00:42.463' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (361, 359, 0, 1, N'案件管理(申訴組)', N'WEB010102', N'WEB/WEB01/WEB0101/WEB010102', 2, N'app', N'WEB010102', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:30:06.760' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (362, 359, 0, 1, N'案件管理(評議組)', N'WEB010103', N'WEB/WEB01/WEB0101/WEB010103', 3, N'app', N'WEB010103', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:32:31.053' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (363, 359, 0, 1, N'調處情形確認', N'WEB010201', N'WEB/WEB01/WEB0102/WEB010201', 4, N'app', N'WEB010201', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:32:41.507' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (364, 359, 0, 1, N'會議紀錄', N'WEB010301', N'WEB/WEB01/WEB0103/WEB010301', 5, N'app', N'WEB010301', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:35:12.990' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (366, 448, 0, 1, N'金融服務專線客服人員工作日誌', N'WEB010801', N'WEB/WEB01/WEB0108/WEB010801/Web010801.vue', 1, N'swagger', N'WEB010801', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:44:08.977' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (367, 448, 0, 1, N'電話申訴案件檢核表', N'WEB010802', N'WEB/WEB01/WEB0108/WEB010802', 2, N'swagger', N'WEB010802', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:44:27.357' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (368, 448, 0, 1, N'提會查詢', N'WEB010803', N'WEB/WEB01/WEB0108/WEB010803', 3, N'app', N'WEB010803', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T09:57:10.467' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (369, 448, 0, 1, N'評議委員-出席費及審查費', N'WEB010804', N'WEB/WEB01/WEB0108/WEB010804', 4, N'app', N'WEB010804', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:56:50.937' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (370, 448, 0, 1, N'諮詢委員-審查費', N'WEB010805', N'WEB/WEB01/WEB0108/WEB010805', 5, N'app', N'WEB010805', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:57:01.603' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (371, 447, 6, 0, N'案件移轉', N'WEB02', NULL, 2, N'list', N'WEB02', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T17:48:55.270' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (372, 371, 0, 1, N'案件移轉', N'WEB020101', N'WEB/WEB02/WEB0201/WEB020101', 1, N'app', N'WEB020101', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:57:15.347' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (373, 371, 0, 1, N'評議案件指派', N'WEB020102', N'WEB/WEB02/WEB0201/WEB020102', 2, N'app', N'WEB020102', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:57:20.967' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (374, 371, 0, 1, N'案件結案', N'WEB020201', N'WEB/WEB02/WEB0202/WEB020201', 3, N'app', N'WEB020201', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:57:26.953' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (376, 449, 0, 1, N'電話件移出', N'WEB020301', N'WEB/WEB02/WEB0203/WEB020301', 1, N'app', N'WEB020301', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:58:25.107' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (377, 449, 0, 1, N'電話件移出審核', N'WEB020302', N'WEB/WEB02/WEB0203/WEB020302', 2, N'app', N'WEB020302', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:58:30.497' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (378, 449, 0, 1, N'電話件移入派案', N'WEB020303', N'WEB/WEB02/WEB0203/WEB020303', 3, N'app', N'WEB020303', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:58:37.087' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (380, 450, 0, 1, N'電話申訴結案檢核', N'WEB020401', N'WEB/WEB02/WEB0204/WEB020401', 1, N'app', N'WEB020401', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:58:42.840' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (381, 450, 0, 1, N'電話申訴結案檢核-結案確認', N'WEB020402', N'WEB/WEB02/WEB0204/WEB020402', 2, N'app', N'WEB020402', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:58:47.803' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (383, 451, 0, 1, N'電話件移交歷史查詢', N'WEB020801', N'WEB/WEB02/WEB0208/WEB020801', 1, N'app', N'WEB020801', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T11:16:02.393' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (384, 451, 0, 1, N'電話申訴結案檢核-歷史記錄', N'WEB020802', N'WEB/WEB02/WEB0208/WEB020802', 2, N'app', N'WEB020802', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T11:16:07.543' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (385, 451, 0, 1, N'爭議案件移交清單', N'WEB020803', N'WEB/WEB02/WEB0208/WEB020803', 3, N'app', N'WEB020803', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T11:16:15.157' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (386, 447, 9, 0, N'資料維護', N'WEB03', NULL, 3, N'list', N'WEB03', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:54:37.407' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (387, 386, 0, 1, N'案件進度維護', N'WEB030101', N'WEB/WEB03/WEB0301/WEB030101', 1, N'app', N'WEB030101', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:59:09.837' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (388, 386, 0, 1, N'案件續辦狀態維護', N'WEB030102', N'WEB/WEB03/WEB0301/WEB030102', 2, N'app', N'WEB030102', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:59:17.203' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (389, 386, 0, 1, N'電子檔傳送', N'WEB030201', N'WEB/WEB03/WEB0302/WEB030201', 3, N'app', N'WEB030201', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:59:40.510' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (390, 386, 0, 1, N'電子檔上傳歷程查詢', N'WEB030202', N'WEB/WEB03/WEB0302/WEB030202', 4, N'app', N'WEB030202', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:59:48.890' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (391, 386, 0, 1, N'預審委員資料維護', N'WEB030401', N'WEB/WEB03/WEB0304/WEB030401', 5, N'app', N'WEB030401', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (392, 386, 0, 1, N'屆次暨預審委員名單維護', N'WEB030402', N'WEB/WEB03/WEB0304/WEB030402', 6, N'app', N'WEB030402', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T17:00:05.897' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (393, 386, 0, 1, N'諮詢顧問名單維護', N'WEB030403', N'WEB/WEB03/WEB0304/WEB030403', 7, N'app', N'WEB030403', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (394, 386, 0, 1, N'爭議對象資料維護', N'WEB030501', N'WEB/WEB03/WEB0305/WEB030501', 8, N'app', N'WEB030501', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (395, 386, 0, 1, N'爭議對象契約數維護', N'WEB090302', N'WEB/WEB09/WEB0903/WEB090302', 9, N'app', N'WEB090302', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (396, 447, 9, 0, N'線上對件', N'WEB04', NULL, 4, N'list', N'WEB04', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T17:54:25.090' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (397, 396, 0, 1, N'線上對件期間設定', N'WEB040101', N'WEB/WEB04/WEB0401/WEB040101', 1, N'app', N'WEB040101', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (398, 396, 0, 1, N'線上對件', N'WEB040201', N'WEB/WEB04/WEB0402/WEB040201', 2, N'app', N'WEB040201', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (399, 396, 0, 1, N'凍結資料-前置查核', N'WEB040301', N'WEB/WEB04/WEB0403/WEB040301', 3, N'app', N'WEB040301', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (400, 396, 0, 1, N'凍結資料', N'WEB040302', N'WEB/WEB04/WEB0403/WEB040302', 4, N'app', N'WEB040302', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (401, 396, 0, 1, N'承辦人回覆疑義(季揭露申訴)', N'WEB040401', N'WEB/WEB04/WEB0404/WEB040401', 5, N'app', N'WEB040401', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (402, 396, 0, 1, N'承辦人回覆疑義(季揭露評議)', N'WEB040402', N'WEB/WEB04/WEB0404/WEB040401', 6, N'app', N'WEB040402', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-05-29T10:44:05.507' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (403, 396, 0, 1, N'承辦人回覆疑義(一般評議案件屬性)', N'WEB040403', N'WEB/WEB04/WEB0404/WEB040403', 7, N'app', N'WEB040403', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (404, 396, 0, 1, N'對件情形確認(季揭露申訴)', N'WEB040501', N'WEB/WEB04/WEB0405/WEB040501', 8, N'app', N'WEB040501', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-24T13:01:40.003' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (405, 396, 0, 1, N'對件情形確認(季揭露評議)', N'WEB040502', N'WEB/WEB04/WEB0405/WEB040502', 9, N'app', N'WEB040502', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-24T13:01:44.183' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (406, 447, 1, 0, N'線上收件', N'WEB05', NULL, 5, N'list', N'WEB05', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T17:54:11.243' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (407, 406, 0, 1, N'線上防疫保單匯入', N'WEB050101', N'WEB/WEB05/WEB0501/WEB050101', 1, N'app', N'WEB050101', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (408, NULL, 11, 0, N'內部報表', N'WEB08', NULL, 6, N'zujian', N'WEB08', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T16:49:15.400' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (410, 453, 0, 1, N'抄錄', N'WEB080101', NULL, 2, N'swagger', N'WEB080101', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T18:01:38.593' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (412, 355, 0, 1, N'年度各壽險公司申請評議案件、理案件數及契約件數統計表', N'WEB080201', N'WEB/WEB08/WEB0802/WEB080201', 1, N'swagger', N'WEB080201', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T10:16:00.253' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (413, 355, 0, 1, N'年度各產險公司申請評議案件、理案件數及契約件數統計表', N'WEB080202', N'WEB/WEB08/WEB0802/WEB080202', 2, N'swagger', N'WEB080202', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T10:16:31.100' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (414, 355, 0, 1, N'年（季）度案件件數核對映事項彙整表', N'web080203', N'WEB/WEB08/WEB0802/WEB080203', 3, N'swagger', N'WEB080203', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T10:27:33.827' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (415, 355, 0, 1, N'金融服務業爭議案件統計表', N'WEB080204-1', N'WEB/WEB08/WEB0802/WEB080204', 4, N'swagger', N'WEB080204-1', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T17:50:15.680' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (416, 355, 0, 1, N'爭議案件比率統計表', N'WEB080205', N'WEB/WEB08/WEB0802/WEB080205', 5, N'swagger', N'WEB080205', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T10:19:41.507' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (417, 355, 0, 1, N'爭議類型統計表', N'WEB080206', N'WEB/WEB08/WEB0802/WEB080206', 6, N'swagger', N'WEB080206', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T10:19:57.740' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (418, 355, 0, 1, N'金融服務業爭議案件明細表v2', N'WEB080207-1', N'WEB/WEB08/WEB0802/WEB080207', 7, N'swagger', N'WEB080207-1', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T17:50:20.823' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (419, 355, 0, 1, N'案件進件統計表', N'WEB080208', N'WEB/WEB08/WEB0802/WEB080208', 8, N'swagger', N'WEB080208', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T10:20:32.700' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (420, 355, 0, 1, N'申訴案件處理情形統計表', N'WEB080209', N'WEB/WEB08/WEB0802/WEB080209', 9, N'swagger', N'WEB080209', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T10:20:46.497' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (421, 355, 0, 1, N'金融服務業爭議案件屬性統計表', N'WEB080210-1', N'WEB/WEB08/WEB0802/WEB080210', 10, N'swagger', N'WEB080210-1', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T17:50:26.080' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (422, 355, 0, 1, N'一般評議案件屬性統計表', N'WEB080211', N'WEB/WEB08/WEB0802/WEB080211', 11, N'swagger', N'WEB080211', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T10:32:27.657' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (423, 355, 0, 1, N'綜合評分值對件用報表', N'WEB080212', N'WEB/WEB08/WEB0802/WEB080212', 12, N'swagger', N'WEB080212', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T10:21:41.017' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (424, 355, 0, 1, N'案件總表1', N'WEB080213', N'WEB/WEB08/WEB0802/WEB080213', 13, N'swagger', N'WEB080213', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T10:32:48.147' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (425, 355, 0, 1, N'評議案件處理期間明細表', N'WEB080215', N'WEB/WEB08/WEB0802/WEB080215', 15, N'swagger', N'WEB080215', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T10:34:41.630' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (426, 355, 0, 1, N'評議處調處案件統計報表', N'', N'WEB/WEB08/WEB0802/WEB080216', 16, N'swagger', N'WEB080216', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-31T10:34:20.000' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (427, 408, 0, 1, N'電話申訴、臨櫃及書面進件計表', N'WEB080216', N'WEB/WEB08/WEB0802/WEB080217', 19, N'swagger', N'WEB080216', 0, 0, 0, NULL, N'system', N'admin', NULL, CAST(N'2023-07-24T13:04:32.170' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (428, 408, 0, 1, N'金融服務專線來電紀錄明細表', N'WEB080217', N'WEB/WEB08/WEB0802/WEB080218', 20, N'swagger', N'WEB080217', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (429, 408, 0, 1, N'承辦人爭議案件承辦明細表', N'WEB080218', N'WEB/WEB08/WEB0802/WEB080219', 21, N'swagger', N'WEB080218', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (430, 408, 0, 1, N'公文收文爭議案件處理明細表', N'WEB080219', N'WEB/WEB08/WEB0802/WEB080220', 22, N'swagger', N'WEB080219', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (431, 408, 0, 1, N'臨櫃案件情形統計表', N'WEB080220', N'WEB/WEB08/WEB0802/WEB080221', 23, N'swagger', N'WEB080220', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (432, 408, 0, 1, N'來電內容分類及轉出單位統計報表', N'WEB080221', N'WEB/WEB08/WEB0802/WEB080222', 24, N'swagger', N'WEB080221', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (433, 408, 0, 1, N'案件標籤明細表', N'WEB080222', N'WEB/WEB08/WEB0802/WEB080223', 25, N'swagger', N'WEB080222', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (434, 408, 0, 1, N'立法委員請託明細統計表', N'WEB080223', N'WEB/WEB08/WEB0802/WEB080224', 26, N'swagger', N'WEB080223', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (435, 408, 0, 1, N'滿意度問卷明細', N'WEB080224', N'WEB/WEB08/WEB0802/WEB080225', 27, N'swagger', N'WEB080224', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (436, 408, 0, 1, N'金融服務專線來電紀錄進件統計表', N'WEB080225', NULL, 28, N'swagger', N'WEB080225', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (438, 408, 0, 1, N'抄錄資料庫', N'WEB080301', NULL, 30, N'swagger', N'WEB080301', 0, 0, 0, NULL, N'system', NULL, NULL, NULL)
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (439, NULL, 8, 0, N'子畫面', NULL, NULL, 7, N'zujian', N'WEB09', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-05-23T13:10:55.960' AS DateTime), CAST(N'2023-07-31T16:49:21.110' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (440, 439, 0, 1, N'公司基本資料維護(單筆)', N'WEB090301', N'WEB/WEB09/WEB0903/WEB090301', 999, N'app', N'WEB090301', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-05-23T13:11:56.323' AS DateTime), CAST(N'2023-05-23T13:15:05.747' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (441, 439, 0, 1, N'案件主檔(公文)', N'web090101', N'WEB/WEB09/WEB0901/WEB090101', 1, N'app', N'WEB090101', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-06T17:43:34.060' AS DateTime), CAST(N'2023-07-26T15:09:40.787' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (442, 439, 0, 1, N'案件主檔(電話)', N'web090102', N'WEB/WEB09/WEB0901/WEB090102', 2, N'app', N'WEB090102', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-26T15:11:10.243' AS DateTime), CAST(N'2023-07-31T11:03:19.243' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (443, 439, 0, 1, N'案件主檔(臨櫃)', N'web090103', N'WEB/WEB09/WEB0901/WEB090103', 3, N'app', N'WEB090103', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-26T15:11:42.273' AS DateTime), CAST(N'2023-07-31T11:03:25.613' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (444, NULL, 2, 0, N'預審委員線上預審系統', NULL, NULL, 4, N'zujian', N'OUT0103', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T09:38:10.380' AS DateTime), CAST(N'2023-07-31T16:48:57.230' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (445, NULL, 3, 0, N'主管機關線上查詢系統', NULL, NULL, 5, N'zujian', N'OUT0102', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T09:40:44.190' AS DateTime), CAST(N'2023-07-31T16:49:05.253' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (446, NULL, 6, 0, N'金融業者專案處理系統', NULL, NULL, 3, N'zujian', N'WEB0802', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T09:50:07.370' AS DateTime), CAST(N'2023-07-31T16:48:51.127' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (447, NULL, 6, 0, N'案管系統中心端', NULL, NULL, 1, N'zujian', N'WEB', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T09:53:38.857' AS DateTime), CAST(N'2023-07-31T16:34:47.973' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (448, 359, 5, 0, N'查詢', NULL, NULL, 6, N'list', N'WEB0108', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T09:56:07.903' AS DateTime), CAST(N'2023-07-31T17:53:20.267' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (449, 371, 3, 0, N'電話件諮詢階段', NULL, NULL, 4, N'list', N'WEB0203', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T09:59:29.000' AS DateTime), CAST(N'2023-07-31T16:57:46.823' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (450, 371, 2, 0, N'電話件申訴階段', NULL, NULL, 5, N'list', N'WEB0204', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:00:43.227' AS DateTime), CAST(N'2023-07-31T16:57:55.663' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (451, 371, 3, 0, N'查詢', NULL, NULL, 6, N'list', N'WEB0208', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:02:52.053' AS DateTime), CAST(N'2023-07-31T17:53:42.030' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (452, 447, 3, 0, N'報表', NULL, NULL, 6, N'list', N'WEB08', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:09:35.533' AS DateTime), CAST(N'2023-07-31T17:52:12.287' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (453, 452, 1, 0, N'統計作業', NULL, NULL, 1, N'list', N'WEB0801', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:11:28.277' AS DateTime), CAST(N'2023-07-31T16:55:43.917' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (454, 355, 0, 1, N'案件總表2', N'WEB080214', N'WEB/WEB08/WEB0802/WEB080214', 14, N'swagger', N'WEB080214', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:25:24.793' AS DateTime), CAST(N'2023-07-31T10:34:56.863' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (455, 452, 0, 0, N'統計報表', NULL, NULL, 3, N'list', N'WEB0803', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:29:18.027' AS DateTime), CAST(N'2023-07-31T16:56:00.163' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (456, 446, 0, 1, N'爭議專案處理', N'OUT010201-2', N'OUT/OUT01/OUT0102/OUT010201', 1, N'app', N'OUT010201', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:38:34.903' AS DateTime), CAST(N'2023-08-01T09:56:48.377' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (457, 446, 3, 0, N'子畫面', NULL, NULL, 4, N'list', N'OUT09', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:42:05.590' AS DateTime), CAST(N'2023-07-31T17:51:14.150' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (459, 457, 0, 1, N'疑義案件核對(季揭露申訴)', NULL, N'OUT/OUT09/OUT0904/OUT090401', 2, N'app', N'OUT090401', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:43:23.413' AS DateTime), CAST(N'2023-07-31T10:44:04.093' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (460, 457, 0, 1, N'疑義案件核對(季揭露評議)', N'', N'OUT/OUT09/OUT0904/OUT090401', 3, N'app', N'OUT090402', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:43:57.050' AS DateTime), CAST(N'2023-07-31T11:27:53.077' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (461, 457, 0, 1, N'疑義案件核對 (一般評議案件屬性)', N'OUT090403', N'OUT/OUT09/OUT0904/OUT090403', 4, N'app', N'OUT090403', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:44:35.583' AS DateTime), CAST(N'2023-07-31T11:26:49.480' AS DateTime))
GO
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (462, 446, 3, 0, N'即時報表', NULL, NULL, 5, N'list', N'WEB0802', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:46:40.300' AS DateTime), CAST(N'2023-07-31T17:55:13.387' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (463, 462, 0, 1, N'金融服務業爭議案件明細表v2', NULL, N'WEB/WEB08/WEB0802/WEB080207', 999, N'swagger', N'WEB080207', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:48:03.717' AS DateTime), CAST(N'2023-07-31T17:51:19.193' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (464, 446, 1, 0, N'報表', NULL, NULL, 6, N'list', N'OUT08', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:48:56.180' AS DateTime), CAST(N'2023-07-31T17:55:28.897' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (465, 445, 1, 0, N'報表', NULL, NULL, 2, N'list', N'WEB0802', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:52:47.397' AS DateTime), CAST(N'2023-07-31T17:55:52.660' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (466, 465, 0, 1, N'金融服務業爭議案件統計表', NULL, N'WEB/WEB08/WEB0802/WEB080204', 1, N'swagger', N'WEB080204', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:54:06.460' AS DateTime), CAST(N'2023-07-31T17:51:27.997' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (467, 439, 0, 1, N'季揭露申訴對件', NULL, N'WEB/WEB09/WEB0904/WEB090401', 999, N'app', N'WEB090401', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T10:59:36.140' AS DateTime), CAST(N'2023-07-31T10:59:36.143' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (468, 439, 0, 1, N'季揭露評議對件', NULL, N'WEB/WEB09/WEB0904/WEB090401', 999, N'app', N'WEB090402', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T11:00:01.580' AS DateTime), CAST(N'2023-07-31T11:00:01.587' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (469, 439, 0, 1, N'一般案件屬性對件', NULL, N'WEB/WEB09/WEB0904/WEB090403', 999, N'app', N'WEB090403', 0, 0, 0, NULL, N'admin', N'admin', CAST(N'2023-07-31T11:00:35.003' AS DateTime), CAST(N'2023-07-31T11:00:35.007' AS DateTime))
INSERT [sys_menu] ([menu_id], [pid], [sub_count], [type], [title], [name], [component], [menu_sort], [icon], [path], [i_frame], [cache], [hidden], [permission], [create_by], [update_by], [create_time], [update_time]) VALUES (470, 439, 0, 1, N'回覆疑義通知信', N'WEB090404', N'WEB/WEB09/WEB0904/WEB090404', 999, N'app', N'WEB090404', 0, 0, 1, NULL, N'admin', N'admin', CAST(N'2023-07-31T11:02:54.900' AS DateTime), CAST(N'2023-07-31T11:57:43.383' AS DateTime))
SET IDENTITY_INSERT [sys_menu] OFF
GO
SET IDENTITY_INSERT [sys_role] ON 

INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (1, N'超級管理員', 1, N'神', N'全部', NULL, N'admin', CAST(N'2018-11-23T11:04:37.000' AS DateTime), CAST(N'2023-08-01T09:23:39.683' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (5, N'系統管理者', 3, N'系統管理者', N'自定義', N'admin', N'admin', CAST(N'2022-12-15T16:23:43.000' AS DateTime), CAST(N'2023-06-02T17:20:38.227' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (6, N'機構管理者群組', 3, N'機構管理者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T16:30:55.000' AS DateTime), CAST(N'2022-12-27T15:10:39.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (7, N'服務組案件建檔群組', 3, N'服務組案件建檔群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T16:31:30.000' AS DateTime), CAST(N'2023-07-14T18:54:23.480' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (8, N'服務組', 3, N'服務組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T16:40:51.000' AS DateTime), CAST(N'2022-12-27T15:15:52.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (9, N'機構正職操作者群組', 3, N'機構正職操作者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T16:41:04.000' AS DateTime), CAST(N'2023-06-17T11:06:25.783' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (10, N'機構派遣操作者群組', 3, N'機構派遣操作者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T17:10:55.000' AS DateTime), CAST(N'2022-12-27T15:18:54.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (11, N'機構正職操作者群組議事行政群組', 3, N'機構正職操作者群組議事行政群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T17:11:19.000' AS DateTime), CAST(N'2022-12-27T15:25:33.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (12, N'機構其他群組', 3, N'機構其他群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T17:32:56.000' AS DateTime), CAST(N'2022-12-27T15:27:49.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (13, N'評議委員群組', 3, N'評議委員群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T17:36:41.000' AS DateTime), CAST(N'2022-12-15T17:38:38.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (14, N'保險局管理者群組', 3, N'保險局管理者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T17:39:12.000' AS DateTime), CAST(N'2022-12-15T18:02:27.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (15, N'保險局操作者群組', 3, N'保險局操作者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T17:40:46.000' AS DateTime), CAST(N'2022-12-27T15:35:06.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (16, N'銀行局管理者群組', 3, N'銀行局管理者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T17:42:32.000' AS DateTime), CAST(N'2022-12-27T15:36:24.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (17, N'銀行局操作者群組', 3, N'銀行局操作者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T17:44:10.000' AS DateTime), CAST(N'2022-12-27T15:36:36.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (18, N'證期局管理者群組', 3, N'證期局管理者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T17:46:36.000' AS DateTime), CAST(N'2022-12-27T15:37:00.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (19, N'證期局操作者群組', 3, N'證期局操作者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T17:48:28.000' AS DateTime), CAST(N'2022-12-15T17:59:33.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (20, N'金管會管理者群組', 3, N'金管會管理者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T17:49:33.000' AS DateTime), CAST(N'2022-12-27T15:37:25.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (21, N'金管會操作者群組', 3, N'金管會操作者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T17:49:42.000' AS DateTime), CAST(N'2022-12-27T15:38:03.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (22, N'臺灣銀行股份有限公司管理者群組', 3, N'臺灣銀行股份有限公司管理者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T17:51:36.000' AS DateTime), CAST(N'2022-12-15T17:55:22.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (23, N'臺灣銀行股份有限公司操作者群組', 3, N'臺灣銀行股份有限公司操作者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T17:51:48.000' AS DateTime), CAST(N'2022-12-15T17:57:27.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (24, N'日商瑞穗銀行股份有限公司管理者群組', 3, N'日商瑞穗銀行股份有限公司管理者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T18:03:06.000' AS DateTime), CAST(N'2022-12-15T18:04:55.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (25, N'日商瑞穗銀行股份有限公司操作者群組', 3, N'日商瑞穗銀行股份有限公司操作者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T18:03:22.000' AS DateTime), CAST(N'2022-12-15T18:06:31.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (26, N'台北市第五信用合作社管理者群組', 3, N'台北市第五信用合作社管理者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T18:07:14.000' AS DateTime), CAST(N'2022-12-15T18:08:21.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (27, N'台北市第五信用合作社操作者群組', 3, N'台北市第五信用合作社操作者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T18:07:24.000' AS DateTime), CAST(N'2022-12-15T18:09:45.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (28, N'財團法人聯合信用卡處理中心管理者群組', 3, N'財團法人聯合信用卡處理中心管理者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T18:10:30.000' AS DateTime), CAST(N'2022-12-15T18:12:18.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (29, N'財團法人聯合信用卡處理中心操作者群組', 3, N'財團法人聯合信用卡處理中心操作者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T18:10:40.000' AS DateTime), CAST(N'2022-12-15T18:13:29.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (30, N'兆豐票券金融股分有限公司管理者群組', 3, N'兆豐票券金融股分有限公司管理者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T18:14:02.000' AS DateTime), CAST(N'2022-12-15T18:15:01.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (31, N'兆豐票券金融股分有限公司操作者群組', 3, N'兆豐票券金融股分有限公司操作者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-15T18:14:11.000' AS DateTime), CAST(N'2022-12-15T18:15:57.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (32, N'臨櫃群組', 3, N'臨櫃群組', N'全部', N'admin', N'admin', CAST(N'2022-12-16T09:56:32.000' AS DateTime), CAST(N'2022-12-27T15:41:45.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (33, N'教育部管理者群組', 3, N'教育部管理者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-16T11:14:46.000' AS DateTime), CAST(N'2022-12-27T15:40:45.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (34, N'教育部操作者群組', 3, N'教育部操作者群組', N'全部', N'admin', N'admin', CAST(N'2022-12-16T11:15:02.000' AS DateTime), CAST(N'2022-12-27T15:41:17.000' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (35, N'六十四', 3, N'六月十四創建的腳色', N'全部', N'admin', N'admin', CAST(N'2023-06-14T18:09:43.647' AS DateTime), CAST(N'2023-06-14T18:09:43.647' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (36, N'中心管理者', 3, N'用於demo中心功能測試的角色
\', N'自定義', N'admin', N'admin', CAST(N'2023-07-21T18:32:11.330' AS DateTime), CAST(N'2023-07-21T19:08:11.450' AS DateTime))
INSERT [sys_role] ([role_id], [name], [level], [description], [data_scope], [create_by], [update_by], [create_time], [update_time]) VALUES (37, N'業者管理者', 3, N'用於demo外網功能測試的角色', N'自定義', N'admin', N'admin', CAST(N'2023-07-21T18:39:56.360' AS DateTime), CAST(N'2023-07-21T19:08:28.933' AS DateTime))
SET IDENTITY_INSERT [sys_role] OFF
GO
INSERT [sys_roles_depts] ([role_id], [dept_id]) VALUES (5, 24)
INSERT [sys_roles_depts] ([role_id], [dept_id]) VALUES (36, 24)
INSERT [sys_roles_depts] ([role_id], [dept_id]) VALUES (37, 18)
GO
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (1, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (2, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (3, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (5, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (6, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (7, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (9, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (10, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (11, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (14, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (15, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (18, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (28, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (30, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (32, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (33, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (34, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (35, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (36, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (37, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (38, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (39, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (41, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (44, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (45, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (46, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (48, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (49, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (50, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (52, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (53, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (54, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (56, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (57, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (58, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (60, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (61, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (62, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (64, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (65, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (66, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (73, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (74, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (75, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (77, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (78, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (79, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (80, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (82, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (83, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (90, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (92, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (93, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (94, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (97, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (98, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (102, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (103, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (104, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (105, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (106, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (107, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (108, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (109, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (110, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (111, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (112, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (113, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (114, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (116, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (123, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (124, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (125, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (126, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (127, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (128, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (135, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (339, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (340, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (341, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (342, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (343, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (344, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (345, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (346, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (347, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (348, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (349, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (350, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (351, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (352, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (444, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (354, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (355, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (356, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (357, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (358, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (359, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (360, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (361, 1)
GO
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (362, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (363, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (364, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (442, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (366, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (367, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (368, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (369, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (370, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (371, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (372, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (373, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (374, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (443, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (376, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (377, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (378, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (445, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (380, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (381, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (446, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (383, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (384, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (385, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (386, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (387, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (388, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (389, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (390, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (391, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (392, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (393, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (394, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (395, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (396, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (397, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (398, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (399, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (400, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (401, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (402, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (403, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (404, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (405, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (406, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (407, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (408, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (447, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (410, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (441, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (412, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (413, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (414, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (415, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (416, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (417, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (418, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (419, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (420, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (421, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (422, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (423, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (424, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (425, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (426, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (427, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (428, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (429, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (430, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (431, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (432, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (433, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (434, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (435, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (436, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (448, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (438, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (338, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (439, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (440, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (338, 5)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (38, 9)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (371, 7)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (376, 7)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (1, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (2, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (3, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (5, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (6, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (7, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (9, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (14, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (18, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (281, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (30, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (32, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (35, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (36, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (38, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (41, 36)
GO
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (44, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (45, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (46, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (48, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (49, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (50, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (52, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (53, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (54, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (56, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (57, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (58, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (331, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (332, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (333, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (77, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (334, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (78, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (335, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (79, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (80, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (281, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (336, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (337, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (82, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (339, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (340, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (341, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (342, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (343, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (344, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (345, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (349, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (350, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (351, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (352, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (449, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (354, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (355, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (356, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (357, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (358, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (359, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (360, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (361, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (362, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (363, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (364, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (450, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (366, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (367, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (368, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (369, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (370, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (371, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (372, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (116, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (373, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (374, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (451, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (376, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (377, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (378, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (452, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (123, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (380, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (124, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (381, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (125, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (331, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (332, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (333, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (334, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (335, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (336, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (337, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (453, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (126, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (383, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (127, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (384, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (128, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (385, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (386, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (387, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (388, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (389, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (390, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (391, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (392, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (393, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (394, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (395, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (396, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (397, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (398, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (399, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (400, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (401, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (402, 36)
GO
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (403, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (404, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (405, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (406, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (407, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (408, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (454, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (410, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (412, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (413, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (415, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (416, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (417, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (418, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (419, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (420, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (421, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (422, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (423, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (424, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (425, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (426, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (427, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (428, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (429, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (430, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (431, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (432, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (433, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (434, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (435, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (436, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (455, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (438, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (439, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (440, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (441, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (456, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (472, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (459, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (460, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (461, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (462, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (463, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (464, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (465, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (466, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (281, 5)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (281, 11)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (414, 36)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (457, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (346, 37)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (347, 37)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (348, 37)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (467, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (468, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (469, 1)
INSERT [sys_roles_menus] ([menu_id], [role_id]) VALUES (470, 1)
GO
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (1, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (7, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (8, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (9, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (10, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (11, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (12, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (13, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (14, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (15, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (16, 10)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (17, 10)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (18, 10)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (19, 10)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (20, 10)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (21, 10)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (22, 10)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (23, 10)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (24, 10)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (25, 10)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (26, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (27, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (28, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (29, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (30, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (31, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (32, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (33, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (40, 8)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (48, 12)
INSERT [sys_users_jobs] ([user_id], [job_id]) VALUES (49, 14)
GO
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (1, 1)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (40, 5)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (1, 5)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (7, 6)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (8, 7)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (9, 8)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (10, 9)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (11, 10)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (12, 11)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (13, 12)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (15, 13)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (16, 14)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (17, 15)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (18, 16)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (19, 17)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (20, 18)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (21, 19)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (22, 20)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (23, 21)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (26, 22)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (27, 23)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (28, 24)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (29, 25)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (30, 26)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (31, 27)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (32, 28)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (33, 29)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (14, 32)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (24, 33)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (25, 34)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (41, 23)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (48, 36)
INSERT [sys_users_roles] ([user_id], [role_id]) VALUES (49, 37)
GO
SET IDENTITY_INSERT [tool_local_storage] ON 

INSERT [tool_local_storage] ([storage_id], [storage_uuid], [real_name], [name], [suffix], [path], [type], [size], [sha2], [from_page_code], [create_by], [update_by], [create_time], [update_time]) VALUES (16, NULL, N'angyfatcat-20230107010558119.png', N'angyfatcat', N'png', N'C:\\project\\eladmin-20221216\\eladmin-web\\public\\temp\\file圖片\\angyfatcat-20230107010558119.png', N'圖片', N'19.95KB   ', N'8175b5a526ac8da9eac8ad039d4961eb48f462ad3c7d5cd3902f73ae50764363', N'預留實作【上傳程式路徑】', N'admin', N'admin', CAST(N'2023-01-07T13:05:58.000' AS DateTime), CAST(N'2023-01-07T13:05:58.000' AS DateTime))
INSERT [tool_local_storage] ([storage_id], [storage_uuid], [real_name], [name], [suffix], [path], [type], [size], [sha2], [from_page_code], [create_by], [update_by], [create_time], [update_time]) VALUES (17, NULL, N'Comany23-產險-產險傷害險2022年第四季有效件數(部分A及B) (1)-20230606024215736.xls', N'Comany23-產險-產險傷害險2022年第四季有效件數(部分A及B) (1).xls', N'xls', N'C:\Users\andy.song_ezcore\ez-admin\storage\2023-06-06\testupload\Comany23-產險-產險傷害險2022年第四季有效件數(部分A及B) (1)-20230606024215736.xls', N'文件', N'49.50KB   ', N'c545d603d73952d3e260b90384bbbe67105af34abe0b1b3242964aaae2a4a247', N'testupload', N'admin', N'admin', CAST(N'2023-06-06T14:42:17.357' AS DateTime), CAST(N'2023-06-06T14:42:17.357' AS DateTime))
INSERT [tool_local_storage] ([storage_id], [storage_uuid], [real_name], [name], [suffix], [path], [type], [size], [sha2], [from_page_code], [create_by], [update_by], [create_time], [update_time]) VALUES (18, NULL, N'RealName1', N'Name1', N'Suffix1', N'Path1', N'Type1', N'Size1', N'SHA21', N'PageCode1', N'CreatedBy1', N'UpdatedBy1', CAST(N'2023-07-14T01:56:37.347' AS DateTime), CAST(N'2023-07-14T01:56:37.347' AS DateTime))
INSERT [tool_local_storage] ([storage_id], [storage_uuid], [real_name], [name], [suffix], [path], [type], [size], [sha2], [from_page_code], [create_by], [update_by], [create_time], [update_time]) VALUES (19, NULL, N'RealName2', N'Name2', N'Suffix2', N'Path2', N'Type2', N'Size2', N'SHA22', N'PageCode2', N'CreatedBy2', N'UpdatedBy2', CAST(N'2023-07-14T01:56:37.347' AS DateTime), CAST(N'2023-07-14T01:56:37.347' AS DateTime))
INSERT [tool_local_storage] ([storage_id], [storage_uuid], [real_name], [name], [suffix], [path], [type], [size], [sha2], [from_page_code], [create_by], [update_by], [create_time], [update_time]) VALUES (20, NULL, N'RealName3', N'Name3', N'Suffix3', N'Path3', N'Type3', N'Size3', N'SHA23', N'PageCode3', N'CreatedBy3', N'UpdatedBy3', CAST(N'2023-07-14T01:56:37.347' AS DateTime), CAST(N'2023-07-14T01:56:37.347' AS DateTime))
INSERT [tool_local_storage] ([storage_id], [storage_uuid], [real_name], [name], [suffix], [path], [type], [size], [sha2], [from_page_code], [create_by], [update_by], [create_time], [update_time]) VALUES (21, NULL, N'RealName4', N'Name4', N'Suffix4', N'Path4', N'Type4', N'Size4', N'SHA24', N'PageCode4', N'CreatedBy4', N'UpdatedBy4', CAST(N'2023-07-14T01:56:37.347' AS DateTime), CAST(N'2023-07-14T01:56:37.347' AS DateTime))
INSERT [tool_local_storage] ([storage_id], [storage_uuid], [real_name], [name], [suffix], [path], [type], [size], [sha2], [from_page_code], [create_by], [update_by], [create_time], [update_time]) VALUES (22, NULL, N'RealName5', N'Name5', N'Suffix5', N'Path5', N'Type5', N'Size5', N'SHA25', N'PageCode5', N'CreatedBy5', N'UpdatedBy5', CAST(N'2023-07-14T01:56:37.347' AS DateTime), CAST(N'2023-07-14T01:56:37.347' AS DateTime))
INSERT [tool_local_storage] ([storage_id], [storage_uuid], [real_name], [name], [suffix], [path], [type], [size], [sha2], [from_page_code], [create_by], [update_by], [create_time], [update_time]) VALUES (23, NULL, N'RealName6', N'Name6', N'Suffix6', N'Path6', N'Type6', N'Size6', N'SHA26', N'PageCode6', N'CreatedBy6', N'UpdatedBy6', CAST(N'2023-07-14T01:56:37.347' AS DateTime), CAST(N'2023-07-14T01:56:37.347' AS DateTime))
INSERT [tool_local_storage] ([storage_id], [storage_uuid], [real_name], [name], [suffix], [path], [type], [size], [sha2], [from_page_code], [create_by], [update_by], [create_time], [update_time]) VALUES (24, NULL, N'RealName7', N'Name7', N'Suffix7', N'Path7', N'Type7', N'Size7', N'SHA27', N'PageCode7', N'CreatedBy7', N'UpdatedBy7', CAST(N'2023-07-14T01:56:37.347' AS DateTime), CAST(N'2023-07-14T01:56:37.347' AS DateTime))
SET IDENTITY_INSERT [tool_local_storage] OFF
GO
INSERT [url_mapping] ([id], [full_url], [create_time]) VALUES (254927547, N'https://stackoverflow.com/questions/4888277/add-default-value-of-datetime-field-in-sql-server-to-a-timestamp', CAST(N'2023-03-21T16:16:22.233' AS DateTime))
INSERT [url_mapping] ([id], [full_url], [create_time]) VALUES (268489794, N'http://localhost:8014/monitor/logs', CAST(N'2023-03-21T17:08:12.427' AS DateTime))
INSERT [url_mapping] ([id], [full_url], [create_time]) VALUES (528182145, N'https://github.com/HeidiSQL/HeidiSQL/tree/master/components/virtualtreeview/Resources', CAST(N'2023-03-21T18:14:22.097' AS DateTime))
INSERT [url_mapping] ([id], [full_url], [create_time]) VALUES (1288833462, N'https://github.com/laurent22/joplin/blob/dev/docker-compose.server.yml', CAST(N'2023-03-21T16:52:45.757' AS DateTime))
GO
SET IDENTITY_INSERT [zview_excel_web080209] ON 

INSERT [zview_excel_web080209] ([serial_no], [b_5], [c_5], [d_5], [e_5], [f_5], [g_5]) VALUES (1, N'1', N'2', N'3', N'4', N'5', N'6')
INSERT [zview_excel_web080209] ([serial_no], [b_5], [c_5], [d_5], [e_5], [f_5], [g_5]) VALUES (2, N'11', N'12', N'13', N'14', N'15', N'16')
INSERT [zview_excel_web080209] ([serial_no], [b_5], [c_5], [d_5], [e_5], [f_5], [g_5]) VALUES (3, N'21', N'22', N'23', N'24', N'25', N'26')
INSERT [zview_excel_web080209] ([serial_no], [b_5], [c_5], [d_5], [e_5], [f_5], [g_5]) VALUES (4, N'31', N'32', N'33', N'34', N'35', N'36')
INSERT [zview_excel_web080209] ([serial_no], [b_5], [c_5], [d_5], [e_5], [f_5], [g_5]) VALUES (5, N'41', N'42', N'43', N'44', N'45', N'46')
INSERT [zview_excel_web080209] ([serial_no], [b_5], [c_5], [d_5], [e_5], [f_5], [g_5]) VALUES (6, N'51', N'52', N'53', N'54', N'55', N'56')
SET IDENTITY_INSERT [zview_excel_web080209] OFF
GO
