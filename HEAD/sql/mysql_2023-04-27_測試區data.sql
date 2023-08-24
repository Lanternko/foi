USE eladmin;

INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1278, NULL, NULL, NULL, NULL, 'root', 'logger', '日誌相關', b'0', NULL, '000', '備份來源路徑', '備份目的路徑', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1279, NULL, NULL, NULL, NULL, 'logger', 'ap_log', 'ap日誌', b'1', NULL, '001', 'C:\\ez-admin\\logs\\ap', 'C:\\ez-admin\\backup-test\\ap', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1280, NULL, NULL, NULL, NULL, 'logger', 'windows_event', 'windows日誌', b'1', NULL, '002', 'C:\\Windows\\System32\\winevt\\Logs', 'C:\\ez-admin\\backup-test\\windows', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1281, NULL, NULL, '2022-12-28 12:02:25', 'admin', 'logger', 'sys_log', 'api日誌', b'1', NULL, '003', 'C:\\ez-admin\\temp', 'C:\\ez-admin\\backup-test\\sys_log', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1282, NULL, NULL, NULL, NULL, 'root', 'file_path', '系統管理檔案/資料夾路徑', b'0', NULL, '000', '檔案存放目錄', '檔案有效時間(天)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1283, NULL, NULL, NULL, NULL, 'file_path', 'log_archive_folder', '日誌封存路徑', b'1', NULL, '001', 'C:\\ez-admin\\logs\\ap\\archived', '180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1284, NULL, NULL, NULL, NULL, 'file_path', 'temp_folder', '檔案暫存路徑', b'1', NULL, '002', '\\ez-admin\\temp\\', '180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1285, NULL, NULL, NULL, NULL, 'file_path', 'test_single_file', '單檔刪除測試', b'1', NULL, '003', 'C:\\ez-admin\\單檔測試.txt', '180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1287, NULL, NULL, NULL, NULL, 'sys.func', 'log_pw', '(dev用)log隨機密碼、檢核碼', b'1', '於後端terminal、日誌紀錄隨機產生的密碼、檢核碼', '007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1294, NULL, NULL, NULL, NULL, 'sys.func', 'expire_date', '帳號時效(天)', b'1', NULL, '001', '180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1295, NULL, NULL, NULL, NULL, 'sys.func', 'auth_failed_cnt', '密碼驗證失敗次數(次)', b'1', NULL, '002', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1296, NULL, NULL, NULL, NULL, 'sys.func', 'lock_account_remains', '鎖定帳號時間(分)', b'1', NULL, '003', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1297, NULL, NULL, NULL, NULL, 'sys.func', 'keep_prev_pw', '與前N次的密碼相同(次)', b'1', NULL, '004', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1299, NULL, NULL, NULL, NULL, 'sys.func', 'temp_pw_remains', '臨時密碼有效(分)', b'1', NULL, '006', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1300, NULL, NULL, NULL, NULL, 'root', 'sys.func', '系統參數', b'0', NULL, '000', '參數1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1303, NULL, NULL, NULL, NULL, 'root', 'err_flag', '異常代號定義', b'0', NULL, '000', '對應訊息', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1304, NULL, NULL, NULL, NULL, 'err_flag', 'e1', '帳號暫時鎖定', b'1', NULL, '002', '連續錯誤已達%s次，請隔%s後再作登入', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1306, NULL, NULL, NULL, NULL, 'err_flag', 'e2', '帳號永久鎖定', b'1', NULL, '003', '帳號已鎖定，請洽系統管理者', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1307, NULL, NULL, NULL, NULL, 'err_flag', 'e3', '帳號閒置', b'1', NULL, '004', '帳號因連續%s天未使用而鎖定，請洽系統管理者', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1309, NULL, NULL, NULL, NULL, 'err_flag', '0', '無異常', b'1', NULL, '001', '無異常', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1310, NULL, NULL, NULL, NULL, 'err_flag', 'e4', '登入資訊錯誤', b'1', NULL, '005', '使用者名稱或密碼不正確', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1312, NULL, NULL, NULL, NULL, 'root', 'root', 'root', b'1', '根目錄', '000', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1313, NULL, NULL, NULL, NULL, 'root', 'sys.road', '路', b'1', '路', '001', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1314, NULL, NULL, NULL, NULL, 'root', 'sys.district', '區處', b'1', '區處', '001', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', 1313, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1315, NULL, NULL, NULL, NULL, 'root', 'sys.city', '縣市', b'1', '縣市', '001', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', '(未使用)', 1314, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1316, NULL, NULL, NULL, NULL, 'sys.city', 'A', '臺北市', b'1', '臺北市', '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1317, NULL, NULL, NULL, NULL, 'sys.city', 'B', '臺中市', b'1', '臺中市', '002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1318, NULL, NULL, NULL, NULL, 'sys.city', 'C', '基隆市', b'1', '基隆市', '003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1319, NULL, NULL, NULL, NULL, 'sys.district', 'A001', '中正區', b'1', '中正區', '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1316);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1320, NULL, NULL, NULL, NULL, 'sys.district', 'A002', '大同區', b'1', '大同區', '002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1316);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1321, NULL, NULL, NULL, NULL, 'sys.district', 'B001', '中區', b'1', '中區', '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1317);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1322, NULL, NULL, NULL, NULL, 'sys.district', 'B002', '東區', b'1', '東區', '002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1317);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1323, NULL, NULL, NULL, NULL, 'sys.district', 'C001', '仁愛區', b'1', '仁愛區', '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1318);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1324, NULL, NULL, NULL, NULL, 'sys.district', 'C002', '信義區', b'1', '信義區', '002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1318);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1325, NULL, NULL, NULL, NULL, 'sys.road', 'A001001', '八德路一段', b'1', '八德路一段', '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1319);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1326, NULL, NULL, NULL, NULL, 'sys.road', 'A001002', '三元街', b'1', '三元街', '002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1319);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1327, NULL, NULL, NULL, NULL, 'sys.road', 'A001003', '大埔街', b'1', '大埔街', '003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1319);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1328, NULL, NULL, NULL, NULL, 'sys.road', 'A002004', '大龍街', b'1', '大龍街', '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1320);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1329, NULL, NULL, NULL, NULL, 'sys.road', 'A002005', '五原路', b'1', '五原路', '002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1320);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1330, NULL, NULL, NULL, NULL, 'sys.road', 'B001006', '三民路二段', b'1', '三民路二段', '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1321);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1331, NULL, NULL, NULL, NULL, 'sys.road', 'B001007', '三民路二段第二市場', b'1', '三民路二段第二市場', '002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1321);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1332, NULL, NULL, NULL, NULL, 'sys.road', 'B002008', '一心北街', b'1', '一心北街', '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1322);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1333, NULL, NULL, NULL, NULL, 'sys.road', 'B002009', '一心西街', b'1', '一心西街', '002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1322);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1334, NULL, NULL, NULL, NULL, 'sys.road', 'C001010', '仁一路', b'1', '仁一路', '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1323);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1335, NULL, NULL, NULL, NULL, 'sys.road', 'C001011', '仁二路', b'1', '仁二路', '002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1323);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1336, NULL, NULL, NULL, NULL, 'sys.road', 'C002012', '仁一路', b'1', '仁一路', '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1324);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1337, NULL, NULL, NULL, NULL, 'sys.road', 'C002013', '中興路', b'1', '中興路', '002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1324);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1338, NULL, NULL, NULL, NULL, 'root', 'usr_op', '對應操作', b'0', NULL, '000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1339, NULL, NULL, NULL, NULL, 'usr_op', 'op1', '密碼輸入錯誤', b'1', NULL, '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1340, NULL, NULL, NULL, NULL, 'usr_op', 'op2', '發行臨時密碼', b'1', NULL, '002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1341, NULL, NULL, NULL, NULL, 'usr_op', 'op3', '變更密碼', b'1', NULL, '003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1342, NULL, NULL, NULL, NULL, 'usr_op', 'op4', '發行檢核碼', b'1', NULL, '004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1343, NULL, NULL, NULL, NULL, 'err_flag', 'e5', '密碼與前N次相同', b'1', NULL, '006', '新密碼不能與前%s次使用過的相同', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1344, NULL, NULL, NULL, NULL, 'sys.func', 'use_two_factor_auth', '兩段驗證檢核碼有效時間(分)', b'1', '', '008', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1345, NULL, NULL, NULL, NULL, 'sys.func', 'pw_match_regex', '密碼複雜度', b'1', '密碼需包含數字、大寫英文、小寫英文且不少於8個字', '009', '^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1350, NULL, NULL, NULL, NULL, 'sys.func', 'force_change_pw', '強制換密碼區間(天)', b'1', NULL, '010', '90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `ins_date`, `ins_usr`, `upd_date`, `upd_usr`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`, `property5`, `property6`, `property7`, `property8`, `property9`, `child_id`, `parent_id`) VALUES
	(1353, NULL, NULL, NULL, NULL, 'sys.func', 'auto_logout', '閒置時效(分)', b'1', NULL, '011', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `codedetail` (`cid`, `kind`, `code`, `name`, `is_enabled`, `sort_code`, `property1`) VALUES 
	(1354, 'sys.func', 'failed_resend_remains', '失敗信件重寄期限(天)', b'1', '012', '30');
INSERT INTO `codedetail` (`cid`, `kind`, `code`, `name`, `is_enabled`, `description`, `sort_code`, `property1`, `property2`, `property3`, `property4`) VALUES 
	(1355, 'sys.func', 'mailserver_test', '電子信件伺服器(測試)', b'1', 'property1-4依序為"信件伺服器網址", "port", "帳號", "密碼(或api key)"', '013', 'smtp.gmail.com', '587', 'andy.song@ezcore.tw', 'fhxkqofbfvaquxzz');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code, property1, property2, property3, property4, property5, property6) values
	(1356, 'root', 'email_template', '系統寄信內文範本', 1, '000', 'subject', 'contents', 'to', 'cc', 'bcc', 'attachments');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code, property1, property2) values
	(1357, 'email_template', 'send_verify_code', '寄出檢核碼', 1, '001', '財團法人金融消費評議中心', '歡迎使用本系統:<br/>您的登入檢核碼為%s<br/>請於有效時間內於系統兩階段驗證畫面輸入<br/><br/>*本信件為系統自動寄出，請勿回信');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code, property1, property2) values
	(1358, 'email_template', 'send_temp_pw', '寄出臨時密碼', 1, '002', '財團法人金融消費評議中心', '歡迎使用本系統:<br/>您的臨時密碼為%s<br/>請於有效時間內於系統登入頁進行登入<br/>提醒您，若您有想起密碼仍可使用原密碼進行登入<br/><br/>*本信件為系統自動寄出，請勿回信');
insert into codedetail (cid, kind, code, name, is_enabled, description, sort_code, property1, property2) values 
	(1359, 'sys.func', 'url_shorten_rule', '縮網址功能', 1, '參數1: 縮址規則, 參數2: 效期(天)', '014', 'ABCDEFGhijklmn12345OPQRSTUvwxyzabcdefgHIJKLMN67890opqrstuVWXYZ', '1');
insert into codedetail (cid, kind, code, name, is_enabled, sort_code, property1) values 
	(1360, 'sys.func', 'domain', '本站網域名稱', 1, '015', 'http://localhost:8014');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code) values 
	(1370, 'root', 'sys.actioncode', '評議動作代碼', 1, '000');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code) values 
	(1361, 'sys.actioncode', '10010', '新增顧問', 1, '001');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code) values 
	(1362, 'sys.actioncode', '10020', '顧問回函', 1, '002');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code) values 
	(1363, 'sys.actioncode', '10030', '指派承辦', 1, '003');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code) values 
	(1371, 'sys.actioncode', '10050', '承辦轉移', 1, '004');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code) values 
	(1364, 'root', 'sys.pgcode', '程式代碼', 1, '000');
insert into codedetail(cid, kind, code, name, is_enabled, description, sort_code) values 
	(1365, 'sys.pgcode', 'web1000', 'com.ezcore.foi.webservicecontrol.service.impl', 1, 'web1000系列位置', '001');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code) values 
	(1366, 'sys.pgcode', 'web1001', 'WebServiceImpl01', 1, '001');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code) values 
	(1367, 'sys.pgcode', 'web1002', 'WebServiceImpl02', 1, '002');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code) values 
	(1368, 'sys.pgcode', 'web1003', 'WebServiceImpl03', 1, '003');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code) values 
	(1369, 'sys.pgcode', 'web1004', 'WebServiceImpl04', 1, '004');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code) values 
	(1372, 'sys.func', 'use_captcha', '使用人機驗證', 1, '016');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code, property1, property2, property9) values 
	(1373, 'root', 'form_template', '報表名稱', 1, '000', '樣板存放路徑', '資料起始點1', '資料sql語法');
insert into codedetail(cid, kind, code, name, is_enabled, sort_code, property1, property2, property9) values 
	(1374, 'form_template', 'test1001', '每月系統日誌紀錄統計', 1, '001', '\\ez-admin\\storage\\form\\template\\test1001_template.xlsx', '1,5,1', 'select 
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
group by res.date;');

INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(1, 'sys_quartz_job', 'job_id', 'bigint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, 'ID', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(2, 'sys_quartz_job', 'bean_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, 'Spring Bean名稱', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(3, 'sys_quartz_job', 'cron_expression', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, 'cron 表達式', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(4, 'sys_quartz_job', 'is_pause', 'bit', NULL, '', b'1', NULL, 'MUL', b'1', b'0', NULL, '狀態：1暫停、0啟用', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(5, 'sys_quartz_job', 'job_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '任務名稱', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(6, 'sys_quartz_job', 'method_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '方法名稱', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(7, 'sys_quartz_job', 'params', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '參數', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(8, 'sys_quartz_job', 'description', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '備註', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(9, 'sys_quartz_job', 'person_in_charge', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '負責人', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(10, 'sys_quartz_job', 'email', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '報警信箱', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(11, 'sys_quartz_job', 'sub_task', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '子任務ID', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(12, 'sys_quartz_job', 'pause_after_failure', 'bit', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '任務失敗後是否暫停', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(13, 'sys_quartz_job', 'create_by', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '建立者', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(14, 'sys_quartz_job', 'update_by', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '更新者', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(15, 'sys_quartz_job', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '建立日期', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(16, 'sys_quartz_job', 'update_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '更新日期', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(17, 'user_log', 'log_id', 'bigint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, '', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(18, 'user_log', 'account', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(19, 'user_log', 'operation', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(20, 'user_log', 'verify', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(21, 'user_log', 'verify_start', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(22, 'user_log', 'temp_pw', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(23, 'user_log', 'temppw_start', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(24, 'user_log', 'prev_pw_sort', 'bigint', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(25, 'user_log', 'prev_pw', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(26, 'user_log', 'create_by', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(27, 'user_log', 'update_by', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(28, 'user_log', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `code_column_config` (`column_id`, `table_name`, `column_name`, `column_type`, `dict_name`, `extra`, `form_show`, `form_type`, `key_type`, `list_show`, `not_null`, `query_type`, `remark`, `date_annotation`) VALUES
	(29, 'user_log', 'update_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);



INSERT INTO `html_doc` (`id`, `title`, `upd_date`, `upd_usr`, `ins_date`, `ins_usr`) VALUES
	(14, '使用者管理', '2022-12-28 11:13:15', '', '2022-12-28 11:12:24', 'root');
INSERT INTO `html_doc` (`id`, `title`, `upd_date`, `upd_usr`, `ins_date`, `ins_usr`) VALUES
	(15, '小幫手範例', NULL, NULL, '2023-01-05 18:41:48', 'root');
INSERT INTO `html_doc` (`id`, `title`, `upd_date`, `upd_usr`, `ins_date`, `ins_usr`) VALUES
	(16, '公告置頂加粗改顏色', '2023-01-07 11:38:24', 'admin', '2023-01-07 10:21:16', 'admin');
INSERT INTO `html_doc` (`id`, `title`, `upd_date`, `upd_usr`, `ins_date`, `ins_usr`) VALUES
	(17, '補班日轉乾冷低溫11度 吳德榮揭「下波強冷空氣襲時間」', NULL, NULL, '2023-01-07 13:06:18', 'admin');

INSERT INTO `html_content` (`id`, `html_doc_id`, `content`, `order_no`) VALUES
	(2, 14, '<p><strong><span style="color:#e74c3c">使用者管理介</span></strong>面測試</p><p>小幫手輸入測試</p>', 0);
INSERT INTO `html_content` (`id`, `html_doc_id`, `content`, `order_no`) VALUES
	(3, 15, '<p>這是小幫手</p><p><span style="color:#c0392b">文字可以標色</span></p>', 0);
INSERT INTO `html_content` (`id`, `html_doc_id`, `content`, `order_no`) VALUES
	(4, 16, '<p>qwe</p>', 0);

INSERT INTO `html_helper` (`id`, `menu_name`, `html_doc_id`, `begin_date`, `end_date`, `window_size`) VALUES
	(1, 'User', 14, NULL, NULL, 800);
INSERT INTO `html_helper` (`id`, `menu_name`, `html_doc_id`, `begin_date`, `end_date`, `window_size`) VALUES
	(2, 'helper', 15, NULL, NULL, 800);

INSERT INTO `html_post` (`id`, `html_doc_id`, `begin_date`, `end_date`, `display`, `pin`, `title_color`, `bold`) VALUES
	(12, 16, NULL, NULL, '[1,2]', b'1', '#FF0000', b'1');
INSERT INTO `html_post` (`id`, `html_doc_id`, `begin_date`, `end_date`, `display`, `pin`, `title_color`, `bold`) VALUES
	(13, 17, '2023-01-07 00:00:00', '2023-02-15 00:00:00', '[1,2]', b'1', '補班日轉乾冷低溫11度 吳德榮揭「下波強冷空氣襲時間」', b'0');











INSERT INTO `sys_attachment` (`attachment_id`, `create_by`, `create_time`, `update_by`, `update_time`, `file_name`, `file_path`) VALUES
	(1, NULL, NULL, NULL, NULL, '01.txt', '~/Downloads/test/01.txt');
INSERT INTO `sys_attachment` (`attachment_id`, `create_by`, `create_time`, `update_by`, `update_time`, `file_name`, `file_path`) VALUES
	(2, NULL, NULL, NULL, NULL, '02.txt', '~/Downloads/02.txt');
INSERT INTO `sys_attachment` (`attachment_id`, `create_by`, `create_time`, `update_by`, `update_time`, `file_name`, `file_path`) VALUES
	(3, NULL, NULL, NULL, NULL, '03.txt', '~/Downloads/test/03.txt');
INSERT INTO `sys_attachment` (`attachment_id`, `create_by`, `create_time`, `update_by`, `update_time`, `file_name`, `file_path`) VALUES
	(4, NULL, NULL, NULL, NULL, '2023-02-15_資轉作業執行異常清單.txt', '~/Downloads/test/2023-02-15_資轉作業執行異常清單.txt');
INSERT INTO `sys_attachment` (`attachment_id`, `create_by`, `create_time`, `update_by`, `update_time`, `file_name`, `file_path`) VALUES
	(11, 'admin', '2023-02-23 15:41:25', 'admin', '2023-02-23 15:41:25', '測試檔案.txt', 'C:vmShare測試檔案.txt');
INSERT INTO `sys_attachment` (`attachment_id`, `create_by`, `create_time`, `update_by`, `update_time`, `file_name`, `file_path`) VALUES
	(12, 'admin', '2023-02-23 15:41:25', 'admin', '2023-02-23 15:41:25', '測試檔案 - 複製.txt', 'C:vmShare測試檔案 - 複製.txt');

INSERT INTO `sys_contacts` (`contacts_id`, `create_by`, `create_time`, `update_by`, `update_time`, `address`) VALUES
	(1, NULL, NULL, NULL, NULL, 'aalexxyobdc@gmail.com');
INSERT INTO `sys_contacts` (`contacts_id`, `create_by`, `create_time`, `update_by`, `update_time`, `address`) VALUES
	(2, NULL, NULL, NULL, NULL, 'andy.song@ezcore.tw');
INSERT INTO `sys_contacts` (`contacts_id`, `create_by`, `create_time`, `update_by`, `update_time`, `address`) VALUES
	(3, NULL, NULL, NULL, NULL, 'foi01@foi.tw');
INSERT INTO `sys_contacts` (`contacts_id`, `create_by`, `create_time`, `update_by`, `update_time`, `address`) VALUES
	(4, NULL, NULL, NULL, NULL, 'admin@foi.com');
INSERT INTO `sys_contacts` (`contacts_id`, `create_by`, `create_time`, `update_by`, `update_time`, `address`) VALUES
	(5, NULL, NULL, NULL, NULL, 'test@test.com');
INSERT INTO `sys_contacts` (`contacts_id`, `create_by`, `create_time`, `update_by`, `update_time`, `address`) VALUES
	(6, NULL, NULL, NULL, NULL, 'foi02@test.tw');
INSERT INTO `sys_contacts` (`contacts_id`, `create_by`, `create_time`, `update_by`, `update_time`, `address`) VALUES
	(7, NULL, NULL, NULL, NULL, 'system');

INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(18, NULL, 5, '金融服務業', 103, b'1', 'admin', 'admin', '2022-11-15 10:19:10', '2022-12-08 09:43:29');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(19, 18, 6, '銀行業', 101, b'1', 'admin', 'admin', '2022-11-15 10:19:27', '2022-12-08 11:25:40');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(20, 19, 4, '本國銀行', 101, b'1', 'admin', 'admin', '2022-11-15 10:20:10', '2022-12-08 11:26:29');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(24, NULL, 9, '評議中心', 101, b'1', 'admin', 'admin', '2022-12-07 11:59:15', '2022-12-08 09:43:41');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(26, NULL, 5, '主管機關', 102, b'1', 'admin', 'admin', '2022-12-07 11:59:47', '2022-12-08 09:43:48');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(27, 24, 0, '機構管理者群組', 101, b'1', 'admin', 'admin', '2022-12-07 12:00:39', '2022-12-08 14:11:55');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(28, 24, 0, '服務組案件建檔群組', 102, b'1', 'admin', 'admin', '2022-12-07 12:01:07', '2022-12-08 14:12:27');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(29, 24, 0, '服務組', 103, b'1', 'admin', 'admin', '2022-12-07 12:01:29', '2022-12-08 14:12:39');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(40, 18, 5, '保險業', 102, b'1', 'admin', 'admin', '2022-12-07 12:05:58', '2022-12-08 11:25:34');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(41, 18, 5, '證券期貨業', 103, b'1', 'admin', 'admin', '2022-12-07 12:06:31', '2022-12-08 11:25:27');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(42, 18, 1, '電子票證業', 104, b'1', 'admin', 'admin', '2022-12-08 11:24:21', '2022-12-08 11:25:19');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(43, 18, 3, '其他金融服務業', 105, b'1', 'admin', 'admin', '2022-12-08 11:25:10', '2022-12-08 11:25:10');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(44, 19, 3, '外國銀行', 102, b'1', 'admin', 'admin', '2022-12-08 11:27:15', '2022-12-08 11:27:15');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(45, 19, 3, '信用合作社', 103, b'1', 'admin', 'admin', '2022-12-08 11:27:41', '2022-12-08 11:27:41');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(46, 19, 1, '中華郵政', 104, b'1', 'admin', 'admin', '2022-12-08 11:28:10', '2022-12-08 11:28:10');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(47, 19, 2, '信用卡公司', 105, b'1', 'admin', 'admin', '2022-12-08 11:28:45', '2022-12-08 11:28:45');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(48, 19, 3, '票券金融公司', 106, b'1', 'admin', 'admin', '2022-12-08 11:29:08', '2022-12-08 11:29:08');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(49, 20, 2, '臺灣銀行股份有限公司', 101, b'1', 'admin', 'admin', '2022-12-08 11:30:23', '2022-12-08 11:30:23');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(50, 20, 0, '台灣土地銀行股份有限公司', 102, b'1', 'admin', 'admin', '2022-12-08 11:31:16', '2022-12-16 11:20:24');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(51, 20, 0, '華南商業銀行股份有限公司', 103, b'1', 'admin', 'admin', '2022-12-08 11:32:32', '2022-12-08 11:32:32');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(52, 20, 0, '台北富邦商業銀行股份有限公司', 104, b'1', 'admin', 'admin', '2022-12-08 11:33:37', '2022-12-08 11:33:37');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(53, 49, 0, '臺灣銀行股份有限公司管理者群組', 101, b'1', 'admin', 'admin', '2022-12-08 11:35:50', '2022-12-08 11:35:50');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(54, 49, 0, '臺灣銀行股份有限公司操作者群組', 102, b'1', 'admin', 'admin', '2022-12-08 11:37:12', '2022-12-08 11:37:12');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(55, 44, 2, '日商瑞穗銀行股份有限公司', 101, b'1', 'admin', 'admin', '2022-12-08 11:38:32', '2022-12-08 11:38:32');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(56, 55, 0, '日商瑞穗銀行股份有限公司管理者群組', 101, b'1', 'admin', 'admin', '2022-12-08 11:39:02', '2022-12-08 11:39:02');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(57, 55, 0, '日商瑞穗銀行股份有限公司操作者群組', 102, b'1', 'admin', 'admin', '2022-12-08 11:39:35', '2022-12-08 11:39:35');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(58, 44, 0, '美商美國銀行股份有限公司台北分行', 102, b'1', 'admin', 'admin', '2022-12-08 11:40:22', '2022-12-08 11:40:22');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(59, 44, 0, '新加坡商大華銀行有限公司台北分行', 103, b'1', 'admin', 'admin', '2022-12-08 11:42:20', '2022-12-08 11:42:20');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(60, 45, 2, '台北市第五信用合作社', 101, b'1', 'admin', 'admin', '2022-12-08 11:43:43', '2022-12-08 11:43:43');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(61, 60, 0, '台北市第五信用合作社管理者群組', 101, b'1', 'admin', 'admin', '2022-12-08 11:44:31', '2022-12-08 11:44:31');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(62, 60, 0, '台北市第五信用合作社操作者群組', 102, b'1', 'admin', 'admin', '2022-12-08 11:45:15', '2022-12-08 11:45:15');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(63, 45, 0, '有限責任基隆市第二信用合作社', 102, b'1', 'admin', 'admin', '2022-12-08 11:46:40', '2022-12-08 11:46:40');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(64, 45, 0, '有限責任新北市淡水信用合作社', 103, b'1', 'admin', 'admin', '2022-12-08 11:47:59', '2022-12-08 11:47:59');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(65, 46, 0, '中華郵政股份有限公司(儲匯處)', 101, b'1', 'admin', 'admin', '2022-12-08 11:49:40', '2022-12-08 11:49:40');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(66, 47, 2, '財團法人聯合信用卡處理中心', 101, b'1', 'admin', 'admin', '2022-12-08 11:51:23', '2022-12-08 11:51:23');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(67, 66, 0, '財團法人聯合信用卡處理中心管理者群組', 101, b'1', 'admin', 'admin', '2022-12-08 11:52:06', '2022-12-08 11:52:06');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(68, 66, 0, '財團法人聯合信用卡處理中心操作者群組', 102, b'1', 'admin', 'admin', '2022-12-08 11:53:04', '2022-12-08 11:53:04');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(69, 47, 0, '美商維信國際威士卡有限公司台灣分公司', 102, b'1', 'admin', 'admin', '2022-12-08 11:55:09', '2022-12-08 11:55:09');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(70, 72, 0, '兆豐票券金融股份有限公司操作者群組', 102, b'1', 'admin', 'admin', '2022-12-08 11:56:29', '2022-12-08 11:59:51');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(71, 72, 0, '兆豐票券金融股份有限公司管理者群組', 101, b'1', 'admin', 'admin', '2022-12-08 11:57:39', '2022-12-08 12:00:21');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(72, 48, 2, '兆豐票券金融股份有限公司', 101, b'1', 'admin', 'admin', '2022-12-08 11:59:07', '2022-12-08 11:59:07');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(73, 48, 0, '中華票券金融股份有限公司', 102, b'1', 'admin', 'admin', '2022-12-08 13:16:05', '2022-12-08 13:16:05');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(74, 48, 0, '大中票券金融股份有限公司', 103, b'1', 'admin', 'admin', '2022-12-08 13:16:48', '2022-12-08 13:16:48');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(75, 40, 3, '人壽保險公司', 101, b'1', 'admin', 'admin', '2022-12-08 13:18:00', '2022-12-08 13:18:00');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(76, 40, 0, '產物保險公司', 102, b'1', 'admin', 'admin', '2022-12-08 13:18:19', '2022-12-08 13:18:19');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(77, 40, 0, '再保險公司', 103, b'1', 'admin', 'admin', '2022-12-08 13:18:46', '2022-12-08 13:18:46');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(78, 40, 0, '保險合作社', 104, b'1', 'admin', 'admin', '2022-12-08 13:19:06', '2022-12-08 13:19:06');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(79, 40, 0, '保險經紀人', 105, b'1', 'admin', 'admin', '2022-12-08 13:19:29', '2022-12-08 13:19:29');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(80, 75, 2, '富邦人壽保險股份有限公司', 101, b'1', 'admin', 'admin', '2022-12-08 13:20:16', '2022-12-08 13:20:16');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(81, 80, 0, '富邦人壽保險股份有限公司管理者群組', 101, b'1', 'admin', 'admin', '2022-12-08 13:20:50', '2022-12-08 13:20:50');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(82, 80, 0, '富邦人壽保險股份有限公司操作者群組', 102, b'1', 'admin', 'admin', '2022-12-08 13:21:19', '2022-12-08 13:21:19');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(83, 75, 0, '臺銀人壽保險股份有限公司', 102, b'1', 'admin', 'admin', '2022-12-08 13:22:32', '2022-12-08 13:22:32');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(84, 75, 0, '台灣人壽保險股份有限公司', 103, b'1', 'admin', 'admin', '2022-12-08 13:22:57', '2022-12-08 13:22:57');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(85, 41, 4, '證券公司', 101, b'1', 'admin', 'admin', '2022-12-08 13:23:33', '2022-12-08 13:23:33');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(86, 41, 0, '期貨公司', 102, b'1', 'admin', 'admin', '2022-12-08 13:23:50', '2022-12-08 13:23:50');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(87, 41, 0, '證券投資信託公司', 103, b'1', 'admin', 'admin', '2022-12-08 13:24:26', '2022-12-08 13:24:26');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(88, 41, 0, '證券投資顧問公司', 104, b'1', 'admin', 'admin', '2022-12-08 13:24:45', '2022-12-08 13:24:45');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(89, 41, 0, '證券金融公司', 105, b'1', 'admin', 'admin', '2022-12-08 13:25:13', '2022-12-08 13:25:13');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(90, 85, 0, '富達證券股份有限公司', 101, b'1', 'admin', 'admin', '2022-12-08 13:26:53', '2022-12-08 13:26:53');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(91, 85, 0, '東亞股份有限公司', 102, b'1', 'admin', 'admin', '2022-12-08 13:27:29', '2022-12-08 13:27:29');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(92, 85, 0, '板信商業銀行股份有限公司', 103, b'1', 'admin', 'admin', '2022-12-08 13:28:00', '2022-12-08 13:28:00');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(93, 85, 0, '摩根證券股份有限公司', 104, b'1', 'admin', 'admin', '2022-12-08 13:41:50', '2022-12-08 13:41:50');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(94, 42, 4, '電子票證公司', 101, b'1', 'admin', 'admin', '2022-12-08 13:42:30', '2022-12-08 13:42:30');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(95, 94, 2, '悠遊卡股份有限公司', 101, b'1', 'admin', 'admin', '2022-12-08 13:43:11', '2022-12-08 13:43:11');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(96, 94, 0, '一卡通票證股份有限公司', 102, b'1', 'admin', 'admin', '2022-12-08 13:43:58', '2022-12-08 13:43:58');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(97, 94, 0, '愛金卡股份有限公司', 103, b'1', 'admin', 'admin', '2022-12-08 13:44:35', '2022-12-08 13:44:35');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(98, 94, 0, '遠鑫電子票證股份有限公司', 104, b'1', 'admin', 'admin', '2022-12-08 13:45:21', '2022-12-08 13:45:21');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(99, 95, 0, '悠遊卡股份有限公司管理者群組', 101, b'1', 'admin', 'admin', '2022-12-08 13:46:07', '2022-12-08 13:46:07');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(100, 95, 0, '悠遊卡股份有限公司操作者群組', 102, b'1', 'admin', 'admin', '2022-12-08 13:46:27', '2022-12-08 13:46:27');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(101, 43, 2, '歐付寶第三方支付股份有限公司', 101, b'1', 'admin', 'admin', '2022-12-08 13:52:34', '2022-12-08 13:52:34');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(102, 101, 0, '歐付寶第三方支付股份有限公司管理者群組', 101, b'1', 'admin', 'admin', '2022-12-08 13:52:57', '2022-12-08 13:52:57');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(103, 101, 0, '歐付寶第三方支付股份有限公司操作者群組', 102, b'1', 'admin', 'admin', '2022-12-08 13:53:18', '2022-12-08 13:53:18');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(104, 43, 0, '簡單行動支付股份有限公司(原智付寶)', 102, b'1', 'admin', 'admin', '2022-12-08 13:54:20', '2022-12-08 13:54:20');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(105, 43, 0, '橘子支行動支付股份有限公司(原 樂點行動支付股份有限公司)', 103, b'1', 'admin', 'admin', '2022-12-08 13:58:24', '2022-12-08 13:58:24');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(106, 26, 2, '保險局', 101, b'1', 'admin', 'admin', '2022-12-08 13:59:54', '2022-12-08 13:59:54');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(107, 26, 2, '銀行局', 102, b'1', 'admin', 'admin', '2022-12-08 14:00:08', '2022-12-08 14:00:08');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(108, 26, 2, '證期局', 103, b'1', 'admin', 'admin', '2022-12-08 14:00:31', '2022-12-08 14:00:31');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(109, 26, 2, '金管會', 104, b'1', 'admin', 'admin', '2022-12-08 14:00:45', '2022-12-08 14:00:45');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(110, 26, 2, '教育局', 105, b'1', 'admin', 'admin', '2022-12-08 14:01:04', '2022-12-08 14:01:04');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(111, 106, 0, '保險局管理者群組', 101, b'1', 'admin', 'admin', '2022-12-08 14:01:51', '2022-12-08 14:01:51');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(112, 106, 0, '保險局操作者群組', 102, b'1', 'admin', 'admin', '2022-12-08 14:02:13', '2022-12-08 14:02:13');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(113, 107, 0, '銀行局管理者群組', 101, b'1', 'admin', 'admin', '2022-12-08 14:07:59', '2022-12-08 14:07:59');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(114, 107, 0, '銀行局操作者群組', 102, b'1', 'admin', 'admin', '2022-12-08 14:08:32', '2022-12-08 14:08:32');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(115, 108, 0, '證期局管理者群組', 101, b'1', 'admin', 'admin', '2022-12-08 14:09:10', '2022-12-08 14:09:10');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(116, 108, 0, '證期局操作者群組', 102, b'1', 'admin', 'admin', '2022-12-08 14:09:28', '2022-12-08 14:09:28');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(117, 24, 0, '機構正職操作者群組', 104, b'1', 'admin', 'admin', '2022-12-08 14:13:29', '2022-12-08 14:13:29');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(118, 24, 0, '機構派遣操作者群組', 105, b'1', 'admin', 'admin', '2022-12-08 14:14:08', '2022-12-08 14:14:08');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(119, 24, 0, '機構正職操作者群組議事行政群組', 106, b'1', 'admin', 'admin', '2022-12-16 09:50:27', '2022-12-16 09:50:27');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(120, 24, 0, '機構其他群組', 107, b'1', 'admin', 'admin', '2022-12-16 09:50:42', '2022-12-16 09:50:42');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(121, 24, 0, '臨櫃群組', 108, b'1', 'admin', 'admin', '2022-12-16 09:50:56', '2022-12-16 09:50:56');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(122, 24, 0, '評議委員群組', 109, b'1', 'admin', 'admin', '2022-12-16 09:51:10', '2022-12-16 09:51:10');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(123, 109, 0, '金管會管理者群組', 101, b'1', 'admin', 'admin', '2022-12-16 10:06:56', '2022-12-16 10:06:56');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(124, 109, 0, '金管會操作者群組', 102, b'1', 'admin', 'admin', '2022-12-16 10:07:10', '2022-12-16 10:07:10');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(125, 110, 0, '教育部管理者群組', 101, b'1', 'admin', 'admin', '2022-12-16 10:07:25', '2022-12-16 10:07:25');
INSERT INTO `sys_dept` (`dept_id`, `pid`, `sub_count`, `name`, `dept_sort`, `enabled`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(126, 110, 0, '教育部操作者群組', 102, b'1', 'admin', 'admin', '2022-12-16 10:07:47', '2022-12-16 10:07:47');

INSERT INTO `sys_dict` (`dict_id`, `name`, `description`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(1, 'user_status', '使用者狀態', NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict` (`dict_id`, `name`, `description`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(4, 'dept_status', '部門狀態', NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict` (`dict_id`, `name`, `description`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(5, 'job_status', '職務狀態', NULL, NULL, '2019-10-27 20:31:36', NULL);

INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(1, 1, '啟用', 'true', 1, NULL, NULL, '2022-12-20 10:48:28', NULL);
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(2, 1, '禁用', 'false', 2, NULL, NULL, '2022-12-20 10:48:28', NULL);
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(3, 4, '啟用', 'true', 1, NULL, NULL, '2022-12-20 10:48:28', NULL);
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(4, 4, '停用', 'false', 2, NULL, NULL, '2022-12-20 10:48:28', NULL);
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(5, 5, '啟用', 'true', 1, NULL, NULL, '2022-12-20 10:48:28', NULL);
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(6, 5, '停用', 'false', 2, NULL, NULL, '2022-12-20 10:48:28', NULL);

INSERT INTO `sys_email` (`email_id`, `child`, `subject`, `status`, `from_api`, `content`, `create_by`, `update_by`, `create_time`, `update_time`, `sended_time`, `failed_report_time`) VALUES
	(1, NULL, '信件主旨A', 'sended', 'api0909', '這封已經成功寄出', NULL, NULL, '2023-02-14 14:00:00', NULL, '2023-02-14 14:01:00', NULL);
INSERT INTO `sys_email` (`email_id`, `child`, `subject`, `status`, `from_api`, `content`, `create_by`, `update_by`, `create_time`, `update_time`, `sended_time`, `failed_report_time`) VALUES
	(2, NULL, '我的第二封信', 'pending', 'api0910', '這封正等待寄出', NULL, NULL, '2023-02-14 15:00:00', NULL, '2023-02-15 08:00:00', NULL);
INSERT INTO `sys_email` (`email_id`, `child`, `subject`, `status`, `from_api`, `content`, `create_by`, `update_by`, `create_time`, `update_time`, `sended_time`, `failed_report_time`) VALUES
	(3, NULL, '失敗的信', 'failed', 'api0911', '這封寄有寄但失敗了<br/><br/>第二行', NULL, NULL, '2023-02-14 16:00:00', NULL, '2023-02-15 00:45:00', '2023-02-15 01:01:18');
INSERT INTO `sys_email` (`email_id`, `child`, `subject`, `status`, `from_api`, `content`, `create_by`, `update_by`, `create_time`, `update_time`, `sended_time`, `failed_report_time`) VALUES
	(4, NULL, '安全性快訊', 'sended', 'api1001', '我們發現您的 Google 帳戶在 Windows 裝置上有新的登入活動。如果登入帳戶的是您本人，就不需要採取任何動作；如果不是，我們將協助您保護帳戶。', NULL, NULL, '2023-02-16 11:05:00', NULL, '2023-02-16 11:06:00', NULL);
INSERT INTO `sys_email` (`email_id`, `child`, `subject`, `status`, `from_api`, `content`, `create_by`, `update_by`, `create_time`, `update_time`, `sended_time`, `failed_report_time`) VALUES
	(5, NULL, '檢附「申訴暨評議案件管理系統基礎功能改版建置與精進案」第1次需求訪談會議記錄', 'failed', 'api0910', '1.預設密碼首次登入時, 尚無電子郵件<br/>電子郵件是由登入者第一次登入系統時, 要求設定<br/>2.現行系統，我記得首次登入及忘記密碼者, 使用預設密碼或是臨時密碼登入系統並變更密碼後,<br/>現行系統都會再登出, 請使用者再次登入 (請協助確認現行系統 )<br/>3.請注意變更密碼時機，必須是檢核碼先驗證正確<br/>4.為節省磁碟空間, 移除個人圖像<br/>5.請電話解說: 4.2.使用者管理<br/>6.帳號與姓名順序對調', NULL, NULL, '2023-02-16 09:38:00', NULL, '2023-02-16 09:45:00', '2023-02-16 10:00:05');
INSERT INTO `sys_email` (`email_id`, `child`, `subject`, `status`, `from_api`, `content`, `create_by`, `update_by`, `create_time`, `update_time`, `sended_time`, `failed_report_time`) VALUES
	(6, 8, 'XX行政系統taskXXXX - 【資轉】作業執行異常', 'pending', 'taskxxxx', 'BJC2001執行完成，本次執行結果 :<br/>資轉作業 : (20230215000000至20230215235959)<br/>應處理文號 = 166, 成功 = 166, 失敗 = 0<br/>應處理檔案 = 890, 成功 = 890, 失敗 = 0<br/>應匯出json = 143, 成功 = 93, 失敗 = 1, 無筆記 = 747, 已結案尚未歸檔 = 49<br/>應轉檔 = 93, 成功 = 93, 失敗 = 0<br/>應歸檔 = 93, 成功 = 93, 失敗 = 0<br', NULL, NULL, '2023-02-15 04:30:00', NULL, '2023-02-16 02:00:00', NULL);
INSERT INTO `sys_email` (`email_id`, `child`, `subject`, `status`, `from_api`, `content`, `create_by`, `update_by`, `create_time`, `update_time`, `sended_time`, `failed_report_time`) VALUES
	(8, 11, NULL, NULL, NULL, '/><br/>項次 , pdf檔案id , 檔案類型 , 失敗原因<br/>1 , 1e7651d933c04c9e9504bf55106a1cf5 , REFSTM21 , 未取得r_object_id<br/><br/>資轉作業中出現異常，請參照附件內容。<', NULL, NULL, '2023-02-15 04:30:00', NULL, NULL, NULL);
INSERT INTO `sys_email` (`email_id`, `child`, `subject`, `status`, `from_api`, `content`, `create_by`, `update_by`, `create_time`, `update_time`, `sended_time`, `failed_report_time`) VALUES
	(11, 12, NULL, NULL, NULL, 'br/>我們發現您的 Google 帳戶在 Windows 裝置上有新的登入活動。如果登入帳戶的是您本人，就不需要採取任何動作；如果不是，我們將協助您保護帳戶。<br/><br/>', NULL, NULL, '2023-02-15 04:30:00', NULL, NULL, NULL);
INSERT INTO `sys_email` (`email_id`, `child`, `subject`, `status`, `from_api`, `content`, `create_by`, `update_by`, `create_time`, `update_time`, `sended_time`, `failed_report_time`) VALUES
	(12, NULL, NULL, NULL, NULL, '1.預設密碼首次登入時, 尚無電子郵件<br/>電子郵件是由登入者第一次登入系統時, 要求設定<br/>2.現行系統，我記得首次登入及忘記密碼者, 使用預設密碼或是臨時密碼登入系統並變更密碼後,<br/>現行系統都會再登出, 請使用者再次登入 (請協助確認現行系統 )<br/>3.請注意變更密碼時機，必須是檢核碼先驗證正確<br/>4.為節省磁碟空間, 移除個人圖像<br/>5.請電話解說: 4.2.使用者管理<br/>6.帳號與姓名順序對調', NULL, NULL, '2023-02-15 04:30:00', NULL, NULL, NULL);
INSERT INTO `sys_email` (`email_id`, `child`, `subject`, `status`, `from_api`, `content`, `create_by`, `update_by`, `create_time`, `update_time`, `sended_time`, `failed_report_time`) VALUES
	(31, NULL, NULL, NULL, NULL, '<br/>現行系統都會再登出, 請使用者再次登入 (請協助確認現行系統 )<br/>3.請注意變更密碼時機，必須是檢核碼先驗證正確<br/>4.為節省磁碟空間, 移除個人圖像<br/>5.請電話解說: 4.2.使用者管理<br/>6.帳號與姓名順序對調', 'admin', 'admin', '2023-02-23 15:41:25', '2023-02-23 15:41:25', NULL, NULL);
INSERT INTO `sys_email` (`email_id`, `child`, `subject`, `status`, `from_api`, `content`, `create_by`, `update_by`, `create_time`, `update_time`, `sended_time`, `failed_report_time`) VALUES
	(32, 31, NULL, NULL, NULL, '55106a1cf5 , REFSTM21 , 未取得r_object_id<br/><br/>資轉作業中出現異常，請參照附件內容。<br/>我們發現您的 Google 帳戶在 Windows 裝置上有新的登入活動。如果登入帳戶的是您本人，就不需要採取任何動作；如果不是，我們將協助您保護帳戶。<br/><br/>1.預設密碼首次登入時, 尚無電子郵件<br/>電子郵件是由登入者第一次登入系統時, 要求設定<br/>2.現行系統，我記得首次登入及忘記密碼者, 使用預設密碼或是臨時密碼登入系統並變更密碼後,', 'admin', 'admin', '2023-02-23 15:41:25', '2023-02-23 15:41:25', NULL, NULL);
INSERT INTO `sys_email` (`email_id`, `child`, `subject`, `status`, `from_api`, `content`, `create_by`, `update_by`, `create_time`, `update_time`, `sended_time`, `failed_report_time`) VALUES
	(33, 32, NULL, NULL, NULL, 'br/>應處理文號 = 166, 成功 = 166, 失敗 = 0<br/>應處理檔案 = 890, 成功 = 890, 失敗 = 0<br/>應匯出json = 143, 成功 = 93, 失敗 = 1, 無筆記 = 747, 已結案尚未歸檔 = 49<br/>應轉檔 = 93, 成功 = 93, 失敗 = 0<br/>應歸檔 = 93, 成功 = 93, 失敗 = 0<br/><br/>項次 , pdf檔案id , 檔案類型 , 失敗原因<br/>1 , 1e7651d933c04c9e9504bf', 'admin', 'admin', '2023-02-23 15:41:25', '2023-02-23 15:41:25', NULL, NULL);
INSERT INTO `sys_email` (`email_id`, `child`, `subject`, `status`, `from_api`, `content`, `create_by`, `update_by`, `create_time`, `update_time`, `sended_time`, `failed_report_time`) VALUES
	(34, 33, NULL, NULL, NULL, '第一次登入系統時, 要求設定<br/>2.現行系統，我記得首次登入及忘記密碼者, 使用預設密碼或是臨時密碼登入系統並變更密碼後,<br/>現行系統都會再登出, 請使用者再次登入 (請協助確認現行系統 )<br/>3.請注意變更密碼時機，必須是檢核碼先驗證正確<br/>4.為節省磁碟空間, 移除個人圖像<br/>5.請電話解說: 4.2.使用者管理<br/>6.帳號與姓名順序對調BJC2001執行完成，本次執行結果 :<br/>資轉作業 : (20230215000000至20230215235959)<', 'admin', 'admin', '2023-02-23 15:41:25', '2023-02-23 15:41:25', NULL, NULL);
INSERT INTO `sys_email` (`email_id`, `child`, `subject`, `status`, `from_api`, `content`, `create_by`, `update_by`, `create_time`, `update_time`, `sended_time`, `failed_report_time`) VALUES
	(35, 34, NULL, NULL, NULL, '/><br/>項次 , pdf檔案id , 檔案類型 , 失敗原因<br/>1 , 1e7651d933c04c9e9504bf55106a1cf5 , REFSTM21 , 未取得r_object_id<br/><br/>資轉作業中出現異常，請參照附件內容。<br/>我們發現您的 Google 帳戶在 Windows 裝置上有新的登入活動。如果登入帳戶的是您本人，就不需要採取任何動作；如果不是，我們將協助您保護帳戶。<br/><br/>1.預設密碼首次登入時, 尚無電子郵件<br/>電子郵件是由登入者', 'admin', 'admin', '2023-02-23 15:41:25', '2023-02-23 15:41:25', NULL, NULL);
INSERT INTO `sys_email` (`email_id`, `child`, `subject`, `status`, `from_api`, `content`, `create_by`, `update_by`, `create_time`, `update_time`, `sended_time`, `failed_report_time`) VALUES
	(36, 35, '長文測試from api', 'sended', 'test', 'BJC2001執行完成，本次執行結果 :<br/>資轉作業 : (20230215000000至20230215235959)<br/>應處理文號 = 166, 成功 = 166, 失敗 = 0<br/>應處理檔案 = 890, 成功 = 890, 失敗 = 0<br/>應匯出json = 143, 成功 = 93, 失敗 = 1, 無筆記 = 747, 已結案尚未歸檔 = 49<br/>應轉檔 = 93, 成功 = 93, 失敗 = 0<br/>應歸檔 = 93, 成功 = 93, 失敗 = 0<br', 'admin', 'admin', '2023-02-23 15:41:25', '2023-02-23 15:41:25', '2023-02-23 15:41:25', NULL);

INSERT INTO `sys_email_attachment` (`email_id`, `attachment_id`) VALUES
	(1, 1);
INSERT INTO `sys_email_attachment` (`email_id`, `attachment_id`) VALUES
	(2, 2);
INSERT INTO `sys_email_attachment` (`email_id`, `attachment_id`) VALUES
	(1, 3);
INSERT INTO `sys_email_attachment` (`email_id`, `attachment_id`) VALUES
	(6, 4);
INSERT INTO `sys_email_attachment` (`email_id`, `attachment_id`) VALUES
	(36, 11);
INSERT INTO `sys_email_attachment` (`email_id`, `attachment_id`) VALUES
	(36, 12);

INSERT INTO `sys_email_contacts_bcc` (`email_id`, `contacts_id`) VALUES
	(2, 2);
INSERT INTO `sys_email_contacts_bcc` (`email_id`, `contacts_id`) VALUES
	(1, 4);
INSERT INTO `sys_email_contacts_bcc` (`email_id`, `contacts_id`) VALUES
	(2, 4);
INSERT INTO `sys_email_contacts_bcc` (`email_id`, `contacts_id`) VALUES
	(3, 4);

INSERT INTO `sys_email_contacts_cc` (`email_id`, `contacts_id`) VALUES
	(3, 1);
INSERT INTO `sys_email_contacts_cc` (`email_id`, `contacts_id`) VALUES
	(6, 1);
INSERT INTO `sys_email_contacts_cc` (`email_id`, `contacts_id`) VALUES
	(1, 2);
INSERT INTO `sys_email_contacts_cc` (`email_id`, `contacts_id`) VALUES
	(6, 2);
INSERT INTO `sys_email_contacts_cc` (`email_id`, `contacts_id`) VALUES
	(1, 3);
INSERT INTO `sys_email_contacts_cc` (`email_id`, `contacts_id`) VALUES
	(3, 3);
INSERT INTO `sys_email_contacts_cc` (`email_id`, `contacts_id`) VALUES
	(6, 4);
INSERT INTO `sys_email_contacts_cc` (`email_id`, `contacts_id`) VALUES
	(3, 6);

INSERT INTO `sys_email_contacts_to` (`email_id`, `contacts_id`) VALUES
	(1, 1);
INSERT INTO `sys_email_contacts_to` (`email_id`, `contacts_id`) VALUES
	(36, 1);
INSERT INTO `sys_email_contacts_to` (`email_id`, `contacts_id`) VALUES
	(3, 2);
INSERT INTO `sys_email_contacts_to` (`email_id`, `contacts_id`) VALUES
	(36, 2);
INSERT INTO `sys_email_contacts_to` (`email_id`, `contacts_id`) VALUES
	(2, 3);
INSERT INTO `sys_email_contacts_to` (`email_id`, `contacts_id`) VALUES
	(4, 3);
INSERT INTO `sys_email_contacts_to` (`email_id`, `contacts_id`) VALUES
	(2, 6);
INSERT INTO `sys_email_contacts_to` (`email_id`, `contacts_id`) VALUES
	(5, 6);

INSERT INTO `sys_job` (`job_id`, `name`, `enabled`, `job_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(8, '人事專員', b'1', 3, NULL, NULL, '2019-03-29 14:52:28', NULL);
INSERT INTO `sys_job` (`job_id`, `name`, `enabled`, `job_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(10, '產品經理', b'1', 4, NULL, NULL, '2019-03-29 14:55:51', NULL);
INSERT INTO `sys_job` (`job_id`, `name`, `enabled`, `job_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(11, '全棧開發', b'1', 2, NULL, 'admin', '2019-03-31 13:39:30', '2020-05-05 11:33:43');
INSERT INTO `sys_job` (`job_id`, `name`, `enabled`, `job_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(12, '軟體測試', b'1', 5, NULL, 'admin', '2019-03-31 13:39:43', '2020-05-10 19:56:26');
INSERT INTO `sys_job` (`job_id`, `name`, `enabled`, `job_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(14, '科長', b'1', 6, 'admin', 'admin', '2022-12-06 17:16:30', '2022-12-06 17:16:30');

INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(1, NULL, 7, 0, '系統管理', NULL, NULL, 101, 'system', 'system', b'0', b'0', b'0', NULL, NULL, 'admin', '2018-12-18 15:11:29', '2022-12-08 09:03:50');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(2, 1, 3, 1, '使用者管理', 'User', 'system/user/index', 2, 'peoples', 'user', b'0', b'0', b'0', 'user:list', NULL, NULL, '2018-12-18 15:14:44', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(3, 1, 3, 1, '角色管理', 'Role', 'system/role/index', 3, 'role', 'role', b'0', b'0', b'0', 'roles:list', NULL, NULL, '2018-12-18 15:16:07', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(5, 1, 3, 1, '選單管理', 'Menu', 'system/menu/index', 5, 'menu', 'menu', b'0', b'0', b'0', 'menu:list', NULL, NULL, '2018-12-18 15:17:28', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(6, NULL, 5, 0, '系統監控', NULL, NULL, 102, 'monitor', 'monitor', b'0', b'0', b'0', NULL, NULL, 'admin', '2018-12-18 15:17:48', '2022-12-08 09:04:05');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(7, 6, 0, 1, '操作日誌', 'Log', 'monitor/log/index', 11, 'log', 'logs', b'0', b'1', b'0', 'log:list', NULL, 'admin', '2018-12-18 15:18:26', '2022-12-06 16:04:53');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(9, 6, 0, 1, 'SQL監控', 'Sql', 'monitor/sql/index', 18, 'sqlMonitor', 'druid', b'0', b'0', b'1', NULL, NULL, 'admin', '2018-12-18 15:19:34', '2022-12-06 15:21:14');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(10, NULL, 5, 0, '元件管理', NULL, NULL, 106, 'zujian', 'components', b'0', b'0', b'1', NULL, NULL, 'admin', '2018-12-19 13:38:16', '2022-12-13 11:36:58');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(11, 10, 0, 1, '圖示庫', 'Icons', 'components/icons/index', 51, 'icon', 'icon', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-19 13:38:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(14, 36, 0, 1, '寄信歷程管理', 'Email', 'tools/email/index', 35, 'email', 'email', b'0', b'0', b'0', NULL, NULL, 'admin', '2018-12-27 10:13:09', '2023-02-08 13:34:30');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(15, 10, 0, 1, '富文字', 'Editor', 'components/Editor', 52, 'fwb', 'tinymce', b'0', b'0', b'0', NULL, NULL, 'admin', '2018-12-27 11:58:25', '2022-12-08 17:07:25');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(18, 36, 3, 1, '儲存管理', 'Storage', 'tools/storage/index', 34, 'chain', 'storage', b'0', b'0', b'0', 'storage:list', NULL, 'admin', '2018-12-31 11:12:15', '2022-12-08 17:09:17');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(28, 1, 3, 1, '任務排程', 'Timing', 'system/timing/index', 999, 'timing', 'timing', b'0', b'0', b'1', 'timing:list', NULL, 'admin', '2019-01-07 20:34:40', '2022-12-26 17:22:09');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(30, 36, 0, 1, '程式碼產生', 'GeneratorIndex', 'generator/index', 32, 'dev', 'generator', b'0', b'1', b'1', NULL, NULL, 'admin', '2019-01-11 15:45:55', '2022-12-26 17:25:45');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(32, 6, 0, 1, '異常日誌', 'ErrorLog', 'monitor/log/errorLog', 12, 'error', 'errorLog', b'0', b'0', b'1', 'log:list', NULL, 'admin', '2019-01-13 13:49:03', '2023-02-01 16:31:33');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(33, 10, 0, 1, 'Markdown', 'Markdown', 'components/MarkDown', 53, 'markdown', 'markdown', b'0', b'0', b'0', NULL, NULL, NULL, '2019-03-08 13:46:44', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(34, 10, 0, 1, 'Yaml編輯器', 'YamlEdit', 'components/YamlEdit', 54, 'dev', 'yaml', b'0', b'0', b'0', NULL, NULL, NULL, '2019-03-08 15:49:40', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(35, 1, 3, 1, '組織單位管理', 'Dept', 'system/dept/index', 6, 'dept', 'dept', b'0', b'0', b'0', 'dept:list', NULL, NULL, '2019-03-25 09:46:00', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(36, NULL, 11, 0, '系統工具', NULL, '', 104, 'sys-tools', 'sys-tools', b'0', b'0', b'0', NULL, NULL, 'admin', '2019-03-29 10:57:35', '2022-12-08 09:06:37');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(37, 1, 3, 1, '職務管理', 'Job', 'system/job/index', 7, 'Steve-Jobs', 'job', b'0', b'0', b'0', 'job:list', NULL, NULL, '2019-03-29 13:51:18', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(38, 36, 0, 1, '介面文件', 'Swagger', 'tools/swagger/index', 36, 'swagger', 'swagger2', b'0', b'0', b'0', NULL, NULL, NULL, '2019-03-29 19:57:53', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(39, 1, 3, 1, '字典管理', 'Dict', 'system/dict/index', 8, 'dictionary', 'dict', b'0', b'0', b'0', 'dict:list', NULL, NULL, '2019-04-10 11:49:04', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(41, 6, 0, 1, '線上使用者', 'OnlineUser', 'monitor/online/index', 10, 'Steve-Jobs', 'online', b'0', b'0', b'0', NULL, NULL, NULL, '2019-10-26 22:08:43', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(44, 2, 0, 2, '使用者新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'user:add', NULL, NULL, '2019-10-29 10:59:46', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(45, 2, 0, 2, '使用者編輯', NULL, '', 3, '', '', b'0', b'0', b'0', 'user:edit', NULL, NULL, '2019-10-29 11:00:08', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(46, 2, 0, 2, '使用者刪除', NULL, '', 4, '', '', b'0', b'0', b'0', 'user:del', NULL, NULL, '2019-10-29 11:00:23', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(48, 3, 0, 2, '角色建立', NULL, '', 2, '', '', b'0', b'0', b'0', 'roles:add', NULL, NULL, '2019-10-29 12:45:34', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(49, 3, 0, 2, '角色修改', NULL, '', 3, '', '', b'0', b'0', b'0', 'roles:edit', NULL, NULL, '2019-10-29 12:46:16', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(50, 3, 0, 2, '角色刪除', NULL, '', 4, '', '', b'0', b'0', b'0', 'roles:del', NULL, NULL, '2019-10-29 12:46:51', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(52, 5, 0, 2, '選單新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'menu:add', NULL, NULL, '2019-10-29 12:55:07', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(53, 5, 0, 2, '選單編輯', NULL, '', 3, '', '', b'0', b'0', b'0', 'menu:edit', NULL, NULL, '2019-10-29 12:55:40', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(54, 5, 0, 2, '選單刪除', NULL, '', 4, '', '', b'0', b'0', b'0', 'menu:del', NULL, NULL, '2019-10-29 12:56:00', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(56, 35, 0, 2, '部門新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'dept:add', NULL, NULL, '2019-10-29 12:57:09', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(57, 35, 0, 2, '部門編輯', NULL, '', 3, '', '', b'0', b'0', b'0', 'dept:edit', NULL, NULL, '2019-10-29 12:57:27', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(58, 35, 0, 2, '部門刪除', NULL, '', 4, '', '', b'0', b'0', b'0', 'dept:del', NULL, NULL, '2019-10-29 12:57:41', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(60, 37, 0, 2, '職務新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'job:add', NULL, NULL, '2019-10-29 12:58:27', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(61, 37, 0, 2, '職務編輯', NULL, '', 3, '', '', b'0', b'0', b'0', 'job:edit', NULL, NULL, '2019-10-29 12:58:45', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(62, 37, 0, 2, '職務刪除', NULL, '', 4, '', '', b'0', b'0', b'0', 'job:del', NULL, NULL, '2019-10-29 12:59:04', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(64, 39, 0, 2, '字典新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'dict:add', NULL, NULL, '2019-10-29 13:00:17', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(65, 39, 0, 2, '字典編輯', NULL, '', 3, '', '', b'0', b'0', b'0', 'dict:edit', NULL, NULL, '2019-10-29 13:00:42', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(66, 39, 0, 2, '字典刪除', NULL, '', 4, '', '', b'0', b'0', b'0', 'dict:del', NULL, NULL, '2019-10-29 13:00:59', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(73, 28, 0, 2, '任務新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'timing:add', NULL, NULL, '2019-10-29 13:07:28', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(74, 28, 0, 2, '任務編輯', NULL, '', 3, '', '', b'0', b'0', b'0', 'timing:edit', NULL, NULL, '2019-10-29 13:07:41', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(75, 28, 0, 2, '任務刪除', NULL, '', 4, '', '', b'0', b'0', b'0', 'timing:del', NULL, NULL, '2019-10-29 13:07:54', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(77, 18, 0, 2, '上傳檔案', NULL, '', 2, '', '', b'0', b'0', b'0', 'storage:add', NULL, NULL, '2019-10-29 13:09:09', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(78, 18, 0, 2, '檔案編輯', NULL, '', 3, '', '', b'0', b'0', b'0', 'storage:edit', NULL, NULL, '2019-10-29 13:09:22', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(79, 18, 0, 2, '檔案刪除', NULL, '', 4, '', '', b'0', b'0', b'0', 'storage:del', NULL, NULL, '2019-10-29 13:09:34', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(80, 6, 0, 1, '服務監控', 'ServerMonitor', 'monitor/server/index', 14, 'codeConsole', 'server', b'0', b'0', b'0', 'monitor:list', NULL, 'admin', '2019-11-07 13:06:39', '2020-05-04 18:20:50');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(82, 36, 0, 1, '產生配置', 'GeneratorConfig', 'generator/config', 33, 'dev', 'generator/config/:tableName', b'0', b'1', b'1', '', NULL, 'admin', '2019-11-17 20:08:56', '2022-12-26 17:23:10');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(83, 10, 0, 1, '圖表庫', 'Echarts', 'components/Echarts', 50, 'chart', 'echarts', b'0', b'1', b'0', '', NULL, NULL, '2019-11-21 09:04:32', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(90, NULL, 5, 1, '運維管理', 'Mnt', '', 103, 'mnt', 'mnt', b'0', b'0', b'1', NULL, NULL, 'admin', '2019-11-09 10:31:08', '2022-12-26 17:22:23');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(92, 90, 3, 1, '伺服器', 'ServerDeploy', 'mnt/server/index', 22, 'server', 'mnt/serverDeploy', b'0', b'0', b'0', 'serverDeploy:list', NULL, NULL, '2019-11-10 10:29:25', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(93, 90, 3, 1, '應用管理', 'App', 'mnt/app/index', 23, 'app', 'mnt/app', b'0', b'0', b'0', 'app:list', NULL, NULL, '2019-11-10 11:05:16', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(94, 90, 3, 1, '部署管理', 'Deploy', 'mnt/deploy/index', 24, 'deploy', 'mnt/deploy', b'0', b'0', b'0', 'deploy:list', NULL, NULL, '2019-11-10 15:56:55', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(97, 90, 1, 1, '部署備份', 'DeployHistory', 'mnt/deployHistory/index', 25, 'backup', 'mnt/deployHistory', b'0', b'0', b'0', 'deployHistory:list', NULL, NULL, '2019-11-10 16:49:44', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(98, 90, 3, 1, '資料庫管理', 'Database', 'mnt/database/index', 26, 'database', 'mnt/database', b'0', b'0', b'0', 'database:list', NULL, NULL, '2019-11-10 20:40:04', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(102, 97, 0, 2, '刪除', NULL, '', 999, '', '', b'0', b'0', b'0', 'deployHistory:del', NULL, NULL, '2019-11-17 09:32:48', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(103, 92, 0, 2, '伺服器新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'serverDeploy:add', NULL, NULL, '2019-11-17 11:08:33', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(104, 92, 0, 2, '伺服器編輯', NULL, '', 999, '', '', b'0', b'0', b'0', 'serverDeploy:edit', NULL, NULL, '2019-11-17 11:08:57', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(105, 92, 0, 2, '伺服器刪除', NULL, '', 999, '', '', b'0', b'0', b'0', 'serverDeploy:del', NULL, NULL, '2019-11-17 11:09:15', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(106, 93, 0, 2, '應用新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'app:add', NULL, NULL, '2019-11-17 11:10:03', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(107, 93, 0, 2, '應用編輯', NULL, '', 999, '', '', b'0', b'0', b'0', 'app:edit', NULL, NULL, '2019-11-17 11:10:28', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(108, 93, 0, 2, '應用刪除', NULL, '', 999, '', '', b'0', b'0', b'0', 'app:del', NULL, NULL, '2019-11-17 11:10:55', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(109, 94, 0, 2, '部署新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'deploy:add', NULL, NULL, '2019-11-17 11:11:22', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(110, 94, 0, 2, '部署編輯', NULL, '', 999, '', '', b'0', b'0', b'0', 'deploy:edit', NULL, NULL, '2019-11-17 11:11:41', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(111, 94, 0, 2, '部署刪除', NULL, '', 999, '', '', b'0', b'0', b'0', 'deploy:del', NULL, NULL, '2019-11-17 11:12:01', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(112, 98, 0, 2, '資料庫新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'database:add', NULL, NULL, '2019-11-17 11:12:43', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(113, 98, 0, 2, '資料庫編輯', NULL, '', 999, '', '', b'0', b'0', b'0', 'database:edit', NULL, NULL, '2019-11-17 11:12:58', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(114, 98, 0, 2, '資料庫刪除', NULL, '', 999, '', '', b'0', b'0', b'0', 'database:del', NULL, NULL, '2019-11-17 11:13:14', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(116, 36, 0, 1, '產生預覽', 'Preview', 'generator/preview', 999, 'java', 'generator/preview/:tableName', b'0', b'1', b'1', NULL, NULL, 'admin', '2019-11-26 14:54:36', '2022-12-26 17:22:45');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(123, 36, 5, 1, '共用代碼管理', 'codeDetail', 'ezTool/codeDetail/CodeIndex', 105, 'dictionary', 'codedetail', b'0', b'0', b'0', 'code:list', 'admin', 'admin', '2022-11-15 17:59:47', '2023-01-07 10:14:01');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(124, 123, 0, 2, '重新載入', NULL, NULL, 4, NULL, NULL, b'0', b'0', b'0', 'code:reload', 'admin', 'admin', '2022-11-15 18:32:48', '2022-11-16 13:19:05');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(125, 123, 0, 2, '更新代碼', NULL, NULL, 3, NULL, NULL, b'0', b'0', b'0', 'code:edit', 'admin', 'admin', '2022-11-15 18:51:09', '2022-11-16 13:18:57');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(126, 123, 0, 2, '刪除代碼', NULL, NULL, 2, NULL, NULL, b'0', b'0', b'0', 'code:del', 'admin', 'admin', '2022-11-15 18:51:40', '2022-11-16 13:18:44');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(127, 123, 0, 2, '新增代碼', NULL, NULL, 1, NULL, NULL, b'0', b'0', b'0', 'code:add', 'admin', 'admin', '2022-11-15 19:01:08', '2022-11-16 13:18:30');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(128, 123, 0, 2, '匯出', NULL, NULL, 5, NULL, NULL, b'0', b'0', b'0', 'code:export', 'admin', 'admin', '2022-11-16 13:18:13', '2022-11-16 13:18:13');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(137, NULL, 21, 0, '案管系統', NULL, NULL, 100, 'system', 'foi', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(138, 137, 6, 0, '操作紀錄維護', NULL, NULL, 101, 'log', 'opLog', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(139, 137, 6, 0, '社群權限管理', NULL, NULL, 102, 'log', 'communityPermission', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(140, 137, 1, 0, '線上對件設定', NULL, NULL, 103, 'log', 'onlineCheck', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(141, 137, 13, 0, '系統代碼管理', NULL, NULL, 104, 'log', 'syscode', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(142, 137, 5, 0, '網站資訊管理', NULL, NULL, 105, 'log', 'siteInfo', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(143, 137, 6, 0, '網站模組管理', NULL, NULL, 106, 'log', 'siteModule', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(144, 137, 22, 0, '案件維護', NULL, NULL, 107, 'log', 'caseMaintain', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(145, 137, 1, 0, '101年度金管會移交件數', NULL, NULL, 108, 'log', 'trans', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(146, 137, 5, 0, '公司維護', NULL, NULL, 109, 'log', 'companyMaintain', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(147, 137, 1, 0, '產業維護', NULL, NULL, 110, 'log', 'industryMaintain', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(148, 137, 4, 0, '統計報表(業者)', NULL, NULL, 111, 'log', 'statisticIndustry', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(149, 137, 10, 0, '統計報表', NULL, NULL, 112, 'log', 'statistic', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(150, 137, 6, 0, '代碼維護', NULL, NULL, 113, 'log', 'code', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(151, 137, 1, 0, '案件調整', NULL, NULL, 114, 'log', 'caseMod', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(152, 137, 1, 0, '案件紀錄', NULL, NULL, 115, 'log', 'caseRecord', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(153, 137, 4, 0, '線上文件', NULL, NULL, 116, 'log', 'onlineDoc', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(154, 137, 5, 0, '線上核對專區', NULL, NULL, 117, 'log', 'onlineVerify', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(155, 137, 6, 0, '教育部功能', NULL, NULL, 118, 'log', 'eduFunc', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(156, 137, 6, 0, '農業部功能', NULL, NULL, 119, 'log', 'coaFunc', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(157, 137, 2, 0, '個人管理', NULL, NULL, 120, 'log', 'personal', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(158, 137, 4, 0, '上方選單', NULL, NULL, 121, 'log', 'prevMenu', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(159, 138, 0, 1, '安全性操作紀錄', 'securityLog', 'securityLog/index', 101, 'log', 'securityLog', b'0', b'0', b'0', 'securityLog:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(160, 138, 0, 1, '管理者操作紀錄', 'adminLog', 'adminLog/index', 102, 'log', 'adminLog', b'0', b'0', b'0', 'adminLog:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(161, 138, 0, 1, '管理者操作紀錄範本', 'adminLogDemo', 'adminLogDemo/index', 103, 'log', 'adminLogDemo', b'0', b'0', b'0', 'adminLogDemo:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(162, 138, 0, 1, '安全性操作紀錄範本', 'securityLogDemo', 'securityLogDemo/index', 104, 'log', 'securityLogDemo', b'0', b'0', b'0', 'securityLogDemo:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(163, 138, 0, 1, '系統操作紀錄', 'sysLog', 'sysLog/index', 105, 'log', 'sysLog', b'0', b'0', b'0', 'sysLog:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(164, 138, 0, 1, '系統操作紀錄範本', 'sysLogDemo', 'sysLogDemo/index', 106, 'log', 'sysLogDemo', b'0', b'0', b'0', 'sysLogDemo:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(165, 139, 0, 1, '社群維護', 'communityMaintain', 'communityMaintain/index', 101, 'log', 'communityMaintain', b'0', b'0', b'0', 'communityMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(166, 139, 0, 1, '組織維護', 'organizeMaintain', 'organizeMaintain/index', 102, 'log', 'organizeMaintain', b'0', b'0', b'0', 'organizeMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(167, 139, 0, 1, '群組維護', 'groupMaintain', 'groupMaintain/index', 103, 'log', 'groupMaintain', b'0', b'0', b'0', 'groupMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(168, 139, 0, 1, '功能維護', 'functionMaintain', 'functionMaintain/index', 104, 'log', 'functionMaintain', b'0', b'0', b'0', 'functionMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(169, 139, 0, 1, '帳號維護', 'accountMaintain', 'accountMaintain/index', 105, 'log', 'accountMaintain', b'0', b'0', b'0', 'accountMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(170, 139, 0, 1, '系統使用者帳號權限對照表', 'permissionMaintain', 'permissionMaintain/index', 106, 'log', 'permissionMaintain', b'0', b'0', b'0', 'permissionMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(171, 140, 1, 1, '系統管理者權限設定', 'adminPermissions', 'adminPermissions/index', 101, 'log', 'adminPermissions', b'0', b'0', b'0', 'adminPermissions:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(172, 150, 1, 1, '代碼分類維護', 'codeClassify ', 'codeClassify/index', 104, 'log', 'codeClassify', b'0', b'0', b'0', 'codeClassify:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 15:06:50');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(173, 150, 1, 1, '綜合代碼維護', 'compCodeMaintain', 'compCodeMaintain/index', 101, 'log', 'compCodeMaintain', b'0', b'0', b'0', 'compCodeMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 15:06:10');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(174, 150, 1, 1, '地址代碼維護', 'addressCodeMaintain', 'addressCodeMaintain/index', 102, 'log', 'addressCodeMaintain', b'0', b'0', b'0', 'addressCodeMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 15:06:26');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(175, 150, 1, 1, '設定代碼維護', 'propCodeMaintain', 'propCodeMaintain/index', 103, 'log', 'propCodeMaintain', b'0', b'0', b'0', 'propCodeMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 15:06:38');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(176, 141, 1, 1, '開發者測試', 'devTest', 'devTest/index', 105, 'log', 'devTest', b'0', b'0', b'0', 'devTest:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(177, 142, 0, 1, '網站功能設定', 'siteFuncSetting', 'siteFuncSetting/index', 101, 'log', 'siteFuncSetting', b'0', b'0', b'0', 'siteFuncSetting:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(178, 142, 0, 1, '系統紀錄', 'sysRecord', 'sysRecord/index', 102, 'log', 'sysRecord', b'0', b'0', b'0', 'sysRecord:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(179, 142, 0, 1, '使用者紀錄', 'userRecord', 'userRecord/index', 103, 'log', 'userRecord', b'0', b'0', b'0', 'userRecord:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(180, 142, 0, 1, 'WS記錄檔', 'wsRecord', 'wsRecord/index', 104, 'log', 'wsRecord', b'0', b'0', b'0', 'wsRecord:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(181, 142, 0, 1, '資料庫記錄檔', 'dbRecord', 'dbRecord/index', 105, 'log', 'dbRecord', b'0', b'0', b'0', 'dbRecord:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(182, 143, 1, 1, '最新消息維護', 'newsMaintain', 'newsMaintain/index', 101, 'log', 'newsMaintain', b'0', b'0', b'0', 'newsMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(183, 143, 1, 1, '公告事項維護', 'announceMaintain', 'announceMaintain/index', 102, 'log', 'announceMaintain', b'0', b'0', b'0', 'announceMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(184, 143, 1, 1, '檔案下載維護', 'fileDownloadMaintain', 'fileDownloadMaintain/index', 103, 'log', 'fileDownloadMaintain', b'0', b'0', b'0', 'fileDownloadMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(185, 143, 1, 1, '廣告模組維護', 'adMaintain', 'adMaintain/index', 104, 'log', 'adMaintain', b'0', b'0', b'0', 'adMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(186, 143, 1, 1, 'Q&A模組維護', 'qaMaintain', 'qaMaintain/index', 105, 'log', 'qaMaintain', b'0', b'0', b'0', 'qaMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(187, 143, 1, 1, '提示訊息維護', 'msgMaintain', 'msgMaintain/index', 106, 'log', 'msgMaintain', b'0', b'0', b'0', 'msgMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(188, 144, 2, 1, '案件收件', 'dbRecord1', 'dbRecord1/index', 101, 'log', 'dbRecord1', b'0', b'0', b'0', 'dbRecord1:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(189, 144, 2, 1, '案件處理', 'dbRecord2', 'dbRecord2/index', 102, 'log', 'dbRecord2', b'0', b'0', b'0', 'dbRecord2:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(190, 144, 0, 1, '案件轉移', 'dbRecord3', 'dbRecord3/index', 103, 'log', 'dbRecord3', b'0', b'0', b'0', 'dbRecord3:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(191, 144, 0, 1, '關鍵字搜尋', 'dbRecord4', 'dbRecord4/index', 104, 'log', 'dbRecord4', b'0', b'0', b'0', 'dbRecord4:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(192, 144, 1, 1, '是否申訴回覆', 'dbRecord5', 'dbRecord5/index', 105, 'log', 'dbRecord5', b'0', b'0', b'0', 'dbRecord5:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(193, 144, 2, 1, '案件查詢', 'dbRecord6', 'dbRecord6/index', 106, 'log', 'dbRecord6', b'0', b'0', b'0', 'dbRecord6:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(194, 144, 2, 1, '保險局查詢', 'dbRecord7', 'dbRecord7/index', 107, 'log', 'dbRecord7', b'0', b'0', b'0', 'dbRecord7:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(195, 144, 2, 1, '銀行局查詢', 'dbRecord8', 'dbRecord8/index', 108, 'log', 'dbRecord8', b'0', b'0', b'0', 'dbRecord8:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(196, 144, 2, 1, '證期局查詢', 'dbRecord9', 'dbRecord9/index', 109, 'log', 'dbRecord9', b'0', b'0', b'0', 'dbRecord9:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(197, 144, 2, 1, '金管會查詢', 'dbRecord10', 'dbRecord10/index', 110, 'log', 'dbRecord10', b'0', b'0', b'0', 'dbRecord10:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(198, 144, 0, 1, '議事行政指派', 'dbRecord11', 'dbRecord11/index', 111, 'log', 'dbRecord11', b'0', b'0', b'0', 'dbRecord11:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(199, 144, 1, 1, '會議記錄', 'dbRecord12', 'dbRecord12/index', 112, 'log', 'dbRecord12', b'0', b'0', b'0', 'dbRecord12:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(200, 144, 0, 1, '凍結資料', 'dbRecord13', 'dbRecord13/index', 113, 'log', 'dbRecord13', b'0', b'0', b'0', 'dbRecord13:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(201, 144, 0, 1, '續辦更新', 'dbRecord14', 'dbRecord14/index', 114, 'log', 'dbRecord14', b'0', b'0', b'0', 'dbRecord14:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(202, 144, 1, 1, '臨櫃進件', 'dbRecord15', 'dbRecord15/index', 115, 'log', 'dbRecord15', b'0', b'0', b'0', 'dbRecord15:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(203, 144, 1, 1, '線上對件設定-1', 'dbRecord16', 'dbRecord16/index', 116, 'log', 'dbRecord16', b'0', b'0', b'0', 'dbRecord16:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(204, 144, 1, 1, '各屆委員名單維護', 'dbRecord17', 'dbRecord17/index', 117, 'log', 'dbRecord17', b'0', b'0', b'0', 'dbRecord17:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(205, 144, 0, 1, '電話進件', 'dbRecord18', 'dbRecord18/index', 118, 'log', 'dbRecord18', b'0', b'0', b'0', 'dbRecord18:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(206, 144, 0, 1, '電話進件(查詢)', 'dbRecord19', 'dbRecord19/index', 119, 'log', 'dbRecord19', b'0', b'0', b'0', 'dbRecord19:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(207, 144, 0, 1, '評議電子檔傳送', 'dbRecord20', 'dbRecord20/index', 120, 'log', 'dbRecord20', b'0', b'0', b'0', 'dbRecord20:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(208, 144, 0, 1, '諮詢電子檔傳送', 'dbRecord21', 'dbRecord21/index', 121, 'log', 'dbRecord21', b'0', b'0', b'0', 'dbRecord21:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(209, 144, 0, 1, '防疫保單線上評鑑', 'dbRecord22', 'dbRecord22/index', 122, 'log', 'dbRecord22', b'0', b'0', b'0', 'dbRecord22:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(210, 145, 1, 1, '101年度金管會移交件數-1', 'dbRecord23', 'dbRecord23/index', 101, 'log', 'dbRecord23', b'0', b'0', b'0', 'dbRecord23:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(211, 146, 1, 1, '公司名單維護', 'dbRecord24', 'dbRecord24/index', 101, 'log', 'dbRecord24', b'0', b'0', b'0', 'dbRecord24:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(212, 146, 2, 1, '公司契約資訊維護', 'dbRecord25', 'dbRecord25/index', 102, 'log', 'dbRecord25', b'0', b'0', b'0', 'dbRecord25:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(213, 146, 1, 1, '公司關聯主檔', 'dbRecord26', 'dbRecord26/index', 103, 'log', 'dbRecord26', b'0', b'0', b'0', 'dbRecord26:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(214, 146, 1, 1, '公司基本資料維護歷史檔', 'dbRecord27', 'dbRecord27/index', 104, 'log', 'dbRecord27', b'0', b'0', b'0', 'dbRecord27:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(215, 146, 1, 1, '公司基本資料維護', 'dbRecord28', 'dbRecord28/index', 105, 'log', 'dbRecord28', b'0', b'0', b'0', 'dbRecord28:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(216, 147, 0, 1, '爭議對象維護', 'dbRecord29', 'dbRecord29/index', 101, 'log', 'dbRecord29', b'0', b'0', b'0', 'dbRecord29:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(217, 148, 0, 1, '金融服務業爭議案件統計表(業者)-3', 'dbRecord30', 'dbRecord30/index', 101, 'log', 'dbRecord30', b'0', b'0', b'0', 'dbRecord30:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(218, 148, 0, 1, '金融服務業爭議案件明細表', 'dbRecord31', 'dbRecord31/index', 102, 'log', 'dbRecord31', b'0', b'0', b'0', 'dbRecord31:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(219, 148, 0, 1, '金融服務業爭議案件屬性統計表', 'dbRecord32', 'dbRecord32/index', 103, 'log', 'dbRecord32', b'0', b'0', b'0', 'dbRecord32:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(220, 148, 0, 1, '一般評議案件屬性統計表', 'dbRecord33', 'dbRecord33/index', 104, 'log', 'dbRecord33', b'0', b'0', b'0', 'dbRecord33:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(221, 149, 1, 1, '統計報表類別維護', 'dbRecord34', 'dbRecord34/index', 101, 'log', 'dbRecord34', b'0', b'0', b'0', 'dbRecord34:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(222, 149, 1, 1, '報表查詢及分類檢視', 'dbRecord35', 'dbRecord35/index', 102, 'log', 'dbRecord35', b'0', b'0', b'0', 'dbRecord35:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(223, 149, 0, 1, '爭議類型統計表(消服組)', 'dbRecord36', 'dbRecord36/index', 103, 'log', 'dbRecord36', b'0', b'0', b'0', 'dbRecord36:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(224, 149, 0, 1, '金融服務業爭議案件統計表(業者)-4', 'dbRecord37', 'dbRecord37/index', 104, 'log', 'dbRecord37', b'0', b'0', b'0', 'dbRecord37:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(225, 149, 0, 1, '消費者臨櫃案件統計表', 'dbRecord38', 'dbRecord38/index', 105, 'log', 'dbRecord38', b'0', b'0', b'0', 'dbRecord38:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(226, 149, 0, 1, '金融服務業爭議案件統計表', 'dbRecord39', 'dbRecord39/index', 106, 'log', 'dbRecord39', b'0', b'0', b'0', 'dbRecord39:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(227, 149, 0, 1, '滿意度問卷明細', 'dbRecord40', 'dbRecord40/index', 107, 'log', 'dbRecord40', b'0', b'0', b'0', 'dbRecord40:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(228, 149, 0, 1, '金融服務專線來電紀錄明細表', 'dbRecord41', 'dbRecord41/index', 108, 'log', 'dbRecord41', b'0', b'0', b'0', 'dbRecord41:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(229, 149, 0, 1, '消費者服務情形統計報表', 'dbRecord42', 'dbRecord42/index', 109, 'log', 'dbRecord42', b'0', b'0', b'0', 'dbRecord42:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(230, 149, 0, 1, '爭議案件比率統計表', 'dbRecord43', 'dbRecord43/index', 110, 'log', 'dbRecord43', b'0', b'0', b'0', 'dbRecord43:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(231, 141, 1, 1, '評議決定檔', 'dbRecord44', 'dbRecord44/index', 105, 'log', 'dbRecord44', b'0', b'0', b'0', 'dbRecord44:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 14:19:12');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(232, 141, 1, 1, '結案情形檔', 'dbRecord45', 'dbRecord45/index', 109, 'log', 'dbRecord45', b'0', b'0', b'0', 'dbRecord45:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 14:19:48');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(233, 141, 1, 1, '法院核可進度檔', 'dbRecord46', 'dbRecord46/index', 101, 'log', 'dbRecord46', b'0', b'0', b'0', 'dbRecord46:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 14:20:15');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(234, 150, 1, 1, '來文態樣檔', 'dbRecord47', 'dbRecord47/index', 104, 'log', 'dbRecord47', b'0', b'0', b'0', 'dbRecord47:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(235, 141, 1, 1, '函稿檔', 'dbRecord48', 'dbRecord48/index', 107, 'log', 'dbRecord48', b'0', b'0', b'0', 'dbRecord48:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 14:09:42');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(236, 141, 1, 1, '金融業回覆結果檔', 'dbRecord49', 'dbRecord49/index', 110, 'log', 'dbRecord49', b'0', b'0', b'0', 'dbRecord49:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 14:11:01');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(237, 141, 1, 1, '未結案情形檔', 'dbRecord50', 'dbRecord50/index', 112, 'log', 'dbRecord50', b'0', b'0', b'0', 'dbRecord50:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 14:11:53');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(238, 141, 1, 1, '申請人身份檔', 'dbRecord51', 'dbRecord51/index', 102, 'log', 'dbRecord51', b'0', b'0', b'0', 'dbRecord51:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 14:12:19');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(239, 141, 1, 1, '產品分類檔', 'dbRecord52', 'dbRecord52/index', 103, 'log', 'dbRecord52', b'0', b'0', b'0', 'dbRecord52:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 14:12:45');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(240, 141, 1, 1, '產品項目檔', 'dbRecord53', 'dbRecord53/index', 104, 'log', 'dbRecord53', b'0', b'0', b'0', 'dbRecord53:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 14:13:13');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(241, 141, 1, 1, '諮詢顧問檔', 'dbRecord54', 'dbRecord54/index', 111, 'log', 'dbRecord54', b'0', b'0', b'0', 'dbRecord54:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 14:13:41');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(242, 141, 1, 1, '評議委員檔', 'dbRecord55', 'dbRecord55/index', 106, 'log', 'dbRecord55', b'0', b'0', b'0', 'dbRecord55:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 14:18:37');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(243, 150, 0, 1, '假日檔維護', 'dbRecord56', 'dbRecord56/index', 113, 'log', 'dbRecord56', b'0', b'0', b'0', 'dbRecord56:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(244, 141, 1, 1, '案件標籤設定', 'dbRecord57', 'dbRecord57/index', 108, 'log', 'dbRecord57', b'0', b'0', b'0', 'dbRecord57:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-27 14:10:10');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(245, 151, 0, 1, '案件進度調整', 'dbRecord58', 'dbRecord58/index', 101, 'log', 'dbRecord58', b'0', b'0', b'0', 'dbRecord58:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(246, 152, 0, 1, '案件記錄檔', 'dbRecord59', 'dbRecord59/index', 101, 'log', 'dbRecord59', b'0', b'0', b'0', 'dbRecord59:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(247, 153, 0, 1, '系統操作手冊及管理手冊', 'dbRecord60', 'dbRecord60/index', 101, 'log', 'dbRecord60', b'0', b'0', b'0', 'dbRecord60:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(248, 153, 0, 1, '業者相關文件', 'dbRecord61', 'dbRecord61/index', 102, 'log', 'dbRecord61', b'0', b'0', b'0', 'dbRecord61:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(249, 153, 0, 1, '中心相關文件', 'dbRecord62', 'dbRecord62/index', 103, 'log', 'dbRecord62', b'0', b'0', b'0', 'dbRecord62:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(250, 153, 0, 1, '系統保固維護手冊', 'dbRecord63', 'dbRecord63/index', 104, 'log', 'dbRecord63', b'0', b'0', b'0', 'dbRecord63:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(251, 154, 0, 1, '季揭露評議案件核對', 'dbRecord64', 'dbRecord64/index', 101, 'log', 'dbRecord64', b'0', b'0', b'0', 'dbRecord64:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(252, 154, 0, 1, '對話框', 'dbRecord65', 'dbRecord65/index', 102, 'log', 'dbRecord65', b'0', b'0', b'0', 'dbRecord65:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(253, 154, 0, 1, '季揭露申訴案件核對', 'dbRecord66', 'dbRecord66/index', 103, 'log', 'dbRecord66', b'0', b'0', b'0', 'dbRecord66:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(254, 154, 0, 1, '一般評議案件屬性核對', 'dbRecord67', 'dbRecord67/index', 104, 'log', 'dbRecord67', b'0', b'0', b'0', 'dbRecord67:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(255, 154, 1, 1, '綜合評分值案件核對', 'dbRecord68', 'dbRecord68/index', 105, 'log', 'dbRecord68', b'0', b'0', b'0', 'dbRecord68:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(256, 155, 0, 1, '密碼維護-1', 'dbRecord69', 'dbRecord69/index', 101, 'log', 'dbRecord69', b'0', b'0', b'0', 'dbRecord69:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(257, 155, 0, 1, '帳號維護-1', 'dbRecord70', 'dbRecord70/index', 102, 'log', 'dbRecord70', b'0', b'0', b'0', 'dbRecord70:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(258, 155, 0, 1, '個人資料修改-1', 'dbRecord71', 'dbRecord71/index', 103, 'log', 'dbRecord71', b'0', b'0', b'0', 'dbRecord71:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(259, 155, 0, 1, '教育部查詢', 'dbRecord72', 'dbRecord72/index', 104, 'log', 'dbRecord72', b'0', b'0', b'0', 'dbRecord72:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(260, 155, 0, 1, '金融服務業爭議案件統計表(業者)-1', 'dbRecord73', 'dbRecord73/index', 105, 'log', 'dbRecord73', b'0', b'0', b'0', 'dbRecord73:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(261, 155, 0, 1, '金融服務業爭議案件明細表-1', 'dbRecord74', 'dbRecord74/index', 106, 'log', 'dbRecord74', b'0', b'0', b'0', 'dbRecord74:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(262, 156, 0, 1, '密碼維護-2', 'dbRecord75', 'dbRecord75/index', 101, 'log', 'dbRecord75', b'0', b'0', b'0', 'dbRecord75:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(263, 156, 0, 1, '帳號維護-2', 'dbRecord76', 'dbRecord76/index', 102, 'log', 'dbRecord76', b'0', b'0', b'0', 'dbRecord76:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(264, 156, 0, 1, '個人資料修改-2', 'dbRecord77', 'dbRecord77/index', 103, 'log', 'dbRecord77', b'0', b'0', b'0', 'dbRecord77:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(265, 156, 0, 1, '農業局查詢', 'dbRecord78', 'dbRecord78/index', 104, 'log', 'dbRecord78', b'0', b'0', b'0', 'dbRecord78:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(266, 156, 0, 1, '金融服務業爭議案件統計表(業者)-2', 'dbRecord79', 'dbRecord79/index', 105, 'log', 'dbRecord79', b'0', b'0', b'0', 'dbRecord79:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(267, 156, 0, 1, '金融服務業爭議案件明細表-2', 'dbRecord80', 'dbRecord80/index', 106, 'log', 'dbRecord80', b'0', b'0', b'0', 'dbRecord80:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(268, 157, 1, 1, '行事曆', 'dbRecord81', 'dbRecord81/index', 101, 'log', 'dbRecord81', b'0', b'0', b'0', 'dbRecord81:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(269, 157, 0, 1, '代理人', 'dbRecord82', 'dbRecord82/index', 102, 'log', 'dbRecord82', b'0', b'0', b'0', 'dbRecord82:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(270, 158, 0, 1, '回首頁', 'dbRecord83', 'dbRecord83/index', 101, 'log', 'dbRecord83', b'0', b'0', b'0', 'dbRecord83:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(271, 158, 0, 1, '後台管理', 'dbRecord84', 'dbRecord84/index', 102, 'log', 'dbRecord84', b'0', b'0', b'0', 'dbRecord84:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(272, 158, 0, 1, '系統管理1', 'dbRecord85', 'dbRecord85/index', 103, 'log', 'dbRecord85', b'0', b'0', b'0', 'dbRecord85:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(273, 158, 0, 1, '加入會員', 'dbRecord86', 'dbRecord86/index', 104, 'log', 'dbRecord86', b'0', b'0', b'0', 'dbRecord86:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(274, 171, 0, 2, '編輯', 'dbRecord87', 'dbRecord87/index', 101, 'log', 'dbRecord87', b'0', b'0', b'0', 'dbRecord87:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(275, 172, 0, 2, '代碼分類維護編輯', 'dbRecord137', 'codeClassify/index', 101, 'log', 'dbRecord137', b'0', b'0', b'0', 'codeClassify:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(276, 173, 0, 2, '綜合代碼維護編輯', 'dbRecord138', 'compCodeMaintain/index', 101, 'log', 'dbRecord138', b'0', b'0', b'0', 'compCodeMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(277, 174, 0, 2, '地址代碼維護編輯', 'dbRecord139', 'addressCodeMaintain/index', 101, 'log', 'dbRecord139', b'0', b'0', b'0', 'addressCodeMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(278, 175, 0, 2, '設定代碼維護編輯', 'dbRecord140', 'propCodeMaintain/index', 101, 'log', 'dbRecord140', b'0', b'0', b'0', 'propCodeMaintain:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(279, 176, 0, 2, '開發者測試1', 'devTest1', 'devTest1/index', 101, 'log', 'devTest1', b'0', b'0', b'0', 'devTest1:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(280, 182, 0, 2, '最新消息維護編輯', 'dbRecord88', 'dbRecord88/index', 101, 'log', 'dbRecord88', b'0', b'0', b'0', 'dbRecord88:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(281, 332, 0, 2, '公告事項維護編輯', 'dbRecord89', 'dbRecord89/index', 101, 'log', 'dbRecord89', b'0', b'0', b'0', 'dbRecord89:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(282, 184, 0, 2, '檔案下載維護編輯', 'dbRecord90', 'dbRecord90/index', 101, 'log', 'dbRecord90', b'0', b'0', b'0', 'dbRecord90:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(283, 185, 0, 2, '廣告模組維護編輯', 'dbRecord91', 'dbRecord91/index', 101, 'log', 'dbRecord91', b'0', b'0', b'0', 'dbRecord91:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(284, 186, 0, 2, 'Q&A模組維護編輯', 'dbRecord92', 'dbRecord92/index', 101, 'log', 'dbRecord92', b'0', b'0', b'0', 'dbRecord92:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(285, 187, 0, 2, '提示訊息維護編輯', 'dbRecord93', 'dbRecord93/index', 101, 'log', 'dbRecord93', b'0', b'0', b'0', 'dbRecord93:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(286, 188, 0, 2, '公文收件', 'dbRecord94', 'dbRecord94/index', 101, 'log', 'dbRecord94', b'0', b'0', b'0', 'dbRecord94:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(287, 188, 0, 2, '電話收件', 'dbRecord95', 'dbRecord95/index', 102, 'log', 'dbRecord95', b'0', b'0', b'0', 'dbRecord95:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(288, 189, 0, 2, '公文件處理', 'dbRecord96', 'dbRecord96/index', 101, 'log', 'dbRecord96', b'0', b'0', b'0', 'dbRecord96:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(289, 189, 0, 2, '電話件處理', 'dbRecord97', 'dbRecord97/index', 102, 'log', 'dbRecord97', b'0', b'0', b'0', 'dbRecord97:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(290, 192, 0, 2, '是否申訴回覆編輯', 'dbRecord98', 'dbRecord98/index', 101, 'log', 'dbRecord98', b'0', b'0', b'0', 'dbRecord98:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(291, 193, 0, 2, '公文查詢-1', 'dbRecord99', 'dbRecord99/index', 101, 'log', 'dbRecord99', b'0', b'0', b'0', 'dbRecord99:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(292, 193, 0, 2, '電話查詢-1', 'dbRecord100', 'dbRecord100/index', 102, 'log', 'dbRecord100', b'0', b'0', b'0', 'dbRecord100:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(293, 194, 0, 2, '公文查詢-2', 'dbRecord101', 'dbRecord101/index', 101, 'log', 'dbRecord101', b'0', b'0', b'0', 'dbRecord101:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(294, 194, 0, 2, '電話查詢-2', 'dbRecord102', 'dbRecord102/index', 102, 'log', 'dbRecord102', b'0', b'0', b'0', 'dbRecord102:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(295, 195, 0, 2, '公文查詢-3', 'dbRecord103', 'dbRecord103/index', 101, 'log', 'dbRecord103', b'0', b'0', b'0', 'dbRecord103:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(296, 195, 0, 2, '電話查詢-3', 'dbRecord104', 'dbRecord104/index', 102, 'log', 'dbRecord104', b'0', b'0', b'0', 'dbRecord104:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(297, 196, 0, 2, '公文查詢-4', 'dbRecord105', 'dbRecord105/index', 101, 'log', 'dbRecord105', b'0', b'0', b'0', 'dbRecord105:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(298, 196, 0, 2, '電話查詢-4', 'dbRecord106', 'dbRecord106/index', 102, 'log', 'dbRecord106', b'0', b'0', b'0', 'dbRecord106:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(299, 197, 0, 2, '公文查詢-5', 'dbRecord107', 'dbRecord107/index', 101, 'log', 'dbRecord107', b'0', b'0', b'0', 'dbRecord107:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(300, 197, 0, 2, '電話查詢-5', 'dbRecord108', 'dbRecord108/index', 102, 'log', 'dbRecord108', b'0', b'0', b'0', 'dbRecord108:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(301, 199, 0, 2, '會議記錄登打', 'dbRecord109', 'dbRecord109/index', 101, 'log', 'dbRecord109', b'0', b'0', b'0', 'dbRecord109:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(302, 202, 0, 2, '臨櫃登打', 'dbRecord110', 'dbRecord110/index', 101, 'log', 'dbRecord110', b'0', b'0', b'0', 'dbRecord110:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(303, 203, 0, 2, '線上對件設定編輯', 'dbRecord111', 'dbRecord111/index', 101, 'log', 'dbRecord111', b'0', b'0', b'0', 'dbRecord111:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(304, 204, 0, 2, '屆次登打', 'dbRecord112', 'dbRecord112/index', 101, 'log', 'dbRecord112', b'0', b'0', b'0', 'dbRecord112:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(305, 210, 0, 2, '101年度金管會移交件數-2', 'dbRecord113', 'dbRecord113/index', 101, 'log', 'dbRecord113', b'0', b'0', b'0', 'dbRecord113:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(306, 211, 0, 2, '公司名單維護編輯', 'dbRecord114', 'dbRecord114/index', 101, 'log', 'dbRecord114', b'0', b'0', b'0', 'dbRecord114:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(307, 212, 0, 2, '公司契約資訊維護編輯', 'dbRecord115', 'dbRecord115/index', 101, 'log', 'dbRecord115', b'0', b'0', b'0', 'dbRecord115:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(308, 212, 0, 2, '公司契約資訊維護編輯_保險', 'dbRecord116', 'dbRecord116/index', 102, 'log', 'dbRecord116', b'0', b'0', b'0', 'dbRecord116:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(309, 213, 0, 2, '公司關聯主檔編輯', 'dbRecord117', 'dbRecord117/index', 101, 'log', 'dbRecord117', b'0', b'0', b'0', 'dbRecord117:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(310, 214, 0, 2, '公司基本資料維護歷史檔編輯', 'dbRecord118', 'dbRecord118/index', 101, 'log', 'dbRecord118', b'0', b'0', b'0', 'dbRecord118:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(311, 215, 0, 2, '基本資料維護維護', 'dbRecord119', 'dbRecord119/index', 101, 'log', 'dbRecord119', b'0', b'0', b'0', 'dbRecord119:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(312, 221, 0, 2, '統計報表類別維護編輯', 'dbRecord120', 'dbRecord120/index', 101, 'log', 'dbRecord120', b'0', b'0', b'0', 'dbRecord120:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(313, 222, 0, 2, '報表類別編輯', 'dbRecord121', 'dbRecord121/index', 101, 'log', 'dbRecord121', b'0', b'0', b'0', 'dbRecord121:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(314, 231, 0, 2, '評議決定檔編輯', 'dbRecord122', 'dbRecord122/index', 101, 'log', 'dbRecord122', b'0', b'0', b'0', 'dbRecord122:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(315, 232, 0, 2, '結案情形檔編輯', 'dbRecord123', 'dbRecord123/index', 101, 'log', 'dbRecord123', b'0', b'0', b'0', 'dbRecord123:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(316, 233, 0, 2, '法院核可進度檔編輯', 'dbRecord124', 'dbRecord124/index', 101, 'log', 'dbRecord124', b'0', b'0', b'0', 'dbRecord124:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(317, 234, 0, 2, '來文態樣檔編輯', 'dbRecord125', 'dbRecord125/index', 101, 'log', 'dbRecord125', b'0', b'0', b'0', 'dbRecord125:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(318, 235, 0, 2, '函稿檔編輯', 'dbRecord126', 'dbRecord126/index', 101, 'log', 'dbRecord126', b'0', b'0', b'0', 'dbRecord126:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(319, 236, 0, 2, '金融業回覆結果檔編輯', 'dbRecord127', 'dbRecord127/index', 101, 'log', 'dbRecord127', b'0', b'0', b'0', 'dbRecord127:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(320, 237, 0, 2, '未結案情形檔編輯', 'dbRecord128', 'dbRecord128/index', 101, 'log', 'dbRecord128', b'0', b'0', b'0', 'dbRecord128:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(321, 238, 0, 2, '申請人身份檔編輯', 'dbRecord129', 'dbRecord129/index', 101, 'log', 'dbRecord129', b'0', b'0', b'0', 'dbRecord129:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(322, 239, 0, 2, '產品分類檔編輯', 'dbRecord130', 'dbRecord130/index', 101, 'log', 'dbRecord130', b'0', b'0', b'0', 'dbRecord130:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(323, 240, 0, 2, '產品項目檔編輯', 'dbRecord131', 'dbRecord131/index', 101, 'log', 'dbRecord131', b'0', b'0', b'0', 'dbRecord131:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(324, 241, 0, 2, '諮詢顧問檔編輯', 'dbRecord132', 'dbRecord132/index', 101, 'log', 'dbRecord132', b'0', b'0', b'0', 'dbRecord132:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(325, 242, 0, 2, '評議委員檔編輯', 'dbRecord133', 'dbRecord133/index', 101, 'log', 'dbRecord133', b'0', b'0', b'0', 'dbRecord133:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(326, 244, 0, 2, '案件標籤設定編輯', 'dbRecord134', 'dbRecord134/index', 101, 'log', 'dbRecord134', b'0', b'0', b'0', 'dbRecord134:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(327, 255, 0, 2, '查詢', 'dbRecord135', 'dbRecord135/index', 101, 'log', 'dbRecord135', b'0', b'0', b'0', 'dbRecord135:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(328, 268, 0, 2, '行事曆編輯', 'dbRecord136', 'dbRecord136/index', 101, 'log', 'dbRecord136', b'0', b'0', b'0', 'dbRecord136:list', 'admin', 'admin', '2022-12-14 15:31:24', '2022-12-14 15:31:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(331, 36, 0, 1, '小幫手', 'helper', 'ezTool/help/EditHelp', 999, 'edit', 'helper', b'0', b'0', b'0', NULL, 'admin', 'admin', '2022-12-28 11:07:32', '2022-12-28 11:07:32');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(332, 36, 3, 1, '公告管理', 'EditPost', 'ezTool/post/EditPost.vue', 1, 'edit', 'EditPost', b'0', b'0', b'0', 'post:list', NULL, 'admin', NULL, '2023-01-07 10:10:28');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(333, 332, 0, 2, '公告修改', NULL, NULL, 999, NULL, NULL, b'0', b'0', b'0', 'post:put', NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(334, 332, 0, 2, '公告新增', NULL, NULL, 999, NULL, NULL, b'0', b'0', b'0', 'post:post', NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(335, 332, 0, 2, '公告刪除', NULL, NULL, 999, NULL, NULL, b'0', b'0', b'0', 'post:delete', NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(336, 36, 0, 1, '公告列表', 'PostIndex', 'ezTool/post/PostIndex.vue', 1, 'message', 'PostIndex', b'0', b'0', b'0', 'post:list', NULL, 'admin', NULL, '2023-01-07 10:10:49');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(337, 36, 0, 1, '公告詳細', 'PostDetail', 'ezTool/post/PostDetail', 999, 'link', 'PostDetail', b'0', b'0', b'1', 'post:get', NULL, 'admin', NULL, '2023-01-07 10:22:41');
INSERT INTO `eladmin`.`sys_menu` (`menu_id`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES 
	(338, 1, '*開發範例*', '開發範例', 'ezTool/foi/demo/index', 999, 'dev', 'demo', b'0', b'0', b'0', 'admin', 'admin', '2023-03-13 13:40:15', '2023-03-14 15:54:01');



INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(1, '超級管理員', 1, '神', '全部', NULL, 'admin', '2018-11-23 11:04:37', '2023-01-16 16:57:01');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(5, '系統管理者', 3, '系統管理者', '自定義', 'admin', 'admin', '2022-12-15 16:23:43', '2023-01-16 16:48:09');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(6, '機構管理者群組', 3, '機構管理者群組', '全部', 'admin', 'admin', '2022-12-15 16:30:55', '2022-12-27 15:10:39');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(7, '服務組案件建檔群組', 3, '服務組案件建檔群組', '全部', 'admin', 'admin', '2022-12-15 16:31:30', '2022-12-27 15:13:39');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(8, '服務組', 3, '服務組', '全部', 'admin', 'admin', '2022-12-15 16:40:51', '2022-12-27 15:15:52');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(9, '機構正職操作者群組', 3, '機構正職操作者群組', '全部', 'admin', 'admin', '2022-12-15 16:41:04', '2022-12-27 15:17:00');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(10, '機構派遣操作者群組', 3, '機構派遣操作者群組', '全部', 'admin', 'admin', '2022-12-15 17:10:55', '2022-12-27 15:18:54');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(11, '機構正職操作者群組議事行政群組', 3, '機構正職操作者群組議事行政群組', '全部', 'admin', 'admin', '2022-12-15 17:11:19', '2022-12-27 15:25:33');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(12, '機構其他群組', 3, '機構其他群組', '全部', 'admin', 'admin', '2022-12-15 17:32:56', '2022-12-27 15:27:49');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(13, '評議委員群組', 3, '評議委員群組', '全部', 'admin', 'admin', '2022-12-15 17:36:41', '2022-12-15 17:38:38');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(14, '保險局管理者群組', 3, '保險局管理者群組', '全部', 'admin', 'admin', '2022-12-15 17:39:12', '2022-12-15 18:02:27');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(15, '保險局操作者群組', 3, '保險局操作者群組', '全部', 'admin', 'admin', '2022-12-15 17:40:46', '2022-12-27 15:35:06');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(16, '銀行局管理者群組', 3, '銀行局管理者群組', '全部', 'admin', 'admin', '2022-12-15 17:42:32', '2022-12-27 15:36:24');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(17, '銀行局操作者群組', 3, '銀行局操作者群組', '全部', 'admin', 'admin', '2022-12-15 17:44:10', '2022-12-27 15:36:36');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(18, '證期局管理者群組', 3, '證期局管理者群組', '全部', 'admin', 'admin', '2022-12-15 17:46:36', '2022-12-27 15:37:00');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(19, '證期局操作者群組', 3, '證期局操作者群組', '全部', 'admin', 'admin', '2022-12-15 17:48:28', '2022-12-15 17:59:33');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(20, '金管會管理者群組', 3, '金管會管理者群組', '全部', 'admin', 'admin', '2022-12-15 17:49:33', '2022-12-27 15:37:25');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(21, '金管會操作者群組', 3, '金管會操作者群組', '全部', 'admin', 'admin', '2022-12-15 17:49:42', '2022-12-27 15:38:03');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(22, '臺灣銀行股份有限公司管理者群組', 3, '臺灣銀行股份有限公司管理者群組', '全部', 'admin', 'admin', '2022-12-15 17:51:36', '2022-12-15 17:55:22');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(23, '臺灣銀行股份有限公司操作者群組', 3, '臺灣銀行股份有限公司操作者群組', '全部', 'admin', 'admin', '2022-12-15 17:51:48', '2022-12-15 17:57:27');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(24, '日商瑞穗銀行股份有限公司管理者群組', 3, '日商瑞穗銀行股份有限公司管理者群組', '全部', 'admin', 'admin', '2022-12-15 18:03:06', '2022-12-15 18:04:55');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(25, '日商瑞穗銀行股份有限公司操作者群組', 3, '日商瑞穗銀行股份有限公司操作者群組', '全部', 'admin', 'admin', '2022-12-15 18:03:22', '2022-12-15 18:06:31');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(26, '台北市第五信用合作社管理者群組', 3, '台北市第五信用合作社管理者群組', '全部', 'admin', 'admin', '2022-12-15 18:07:14', '2022-12-15 18:08:21');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(27, '台北市第五信用合作社操作者群組', 3, '台北市第五信用合作社操作者群組', '全部', 'admin', 'admin', '2022-12-15 18:07:24', '2022-12-15 18:09:45');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(28, '財團法人聯合信用卡處理中心管理者群組', 3, '財團法人聯合信用卡處理中心管理者群組', '全部', 'admin', 'admin', '2022-12-15 18:10:30', '2022-12-15 18:12:18');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(29, '財團法人聯合信用卡處理中心操作者群組', 3, '財團法人聯合信用卡處理中心操作者群組', '全部', 'admin', 'admin', '2022-12-15 18:10:40', '2022-12-15 18:13:29');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(30, '兆豐票券金融股分有限公司管理者群組', 3, '兆豐票券金融股分有限公司管理者群組', '全部', 'admin', 'admin', '2022-12-15 18:14:02', '2022-12-15 18:15:01');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(31, '兆豐票券金融股分有限公司操作者群組', 3, '兆豐票券金融股分有限公司操作者群組', '全部', 'admin', 'admin', '2022-12-15 18:14:11', '2022-12-15 18:15:57');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(32, '臨櫃群組', 3, '臨櫃群組', '全部', 'admin', 'admin', '2022-12-16 09:56:32', '2022-12-27 15:41:45');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(33, '教育部管理者群組', 3, '教育部管理者群組', '全部', 'admin', 'admin', '2022-12-16 11:14:46', '2022-12-27 15:40:45');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(34, '教育部操作者群組', 3, '教育部操作者群組', '全部', 'admin', 'admin', '2022-12-16 11:15:02', '2022-12-27 15:41:17');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `data_scope`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(35, 'ui測試用', 3, 'ui測試用', '全部', 'admin', 'admin', '2023-02-01 17:04:22', '2023-02-01 17:15:27');

INSERT INTO `sys_roles_depts` (`role_id`, `dept_id`) VALUES
	(5, 24);

INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(1, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(2, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(3, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(5, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(6, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(7, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(9, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(10, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(11, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(14, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(15, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(18, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(28, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(30, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(32, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(33, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(34, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(35, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(36, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(37, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(38, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(39, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(41, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(44, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(45, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(46, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(48, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(49, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(50, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(52, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(53, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(54, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(56, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(57, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(58, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(60, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(61, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(62, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(64, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(65, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(66, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(73, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(74, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(75, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(77, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(78, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(79, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(80, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(82, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(83, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(90, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(92, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(93, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(94, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(97, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(98, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(102, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(103, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(104, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(105, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(106, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(107, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(108, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(109, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(110, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(111, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(112, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(113, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(114, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(116, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(123, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(124, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(125, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(126, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(127, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(128, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(135, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(137, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(138, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(139, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(140, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(141, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(142, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(143, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(145, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(146, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(147, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(148, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(149, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(150, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(151, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(152, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(154, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(155, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(156, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(157, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(159, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(160, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(161, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(162, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(163, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(164, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(165, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(166, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(167, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(168, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(169, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(170, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(171, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(172, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(173, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(174, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(175, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(176, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(177, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(178, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(179, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(180, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(181, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(182, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(183, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(184, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(185, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(186, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(187, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(188, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(189, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(190, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(191, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(192, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(193, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(194, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(195, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(196, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(197, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(198, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(199, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(200, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(201, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(202, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(203, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(204, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(205, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(207, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(208, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(209, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(210, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(211, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(212, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(213, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(214, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(215, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(216, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(217, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(218, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(219, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(220, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(221, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(222, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(223, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(224, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(225, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(226, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(227, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(228, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(229, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(230, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(231, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(232, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(233, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(234, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(235, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(236, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(237, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(238, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(239, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(240, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(241, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(242, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(243, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(244, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(245, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(246, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(248, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(249, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(250, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(251, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(252, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(253, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(254, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(255, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(256, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(257, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(258, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(259, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(260, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(261, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(262, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(263, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(264, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(265, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(266, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(267, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(268, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(269, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(272, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(273, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(274, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(275, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(276, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(277, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(278, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(279, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(280, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(281, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(282, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(283, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(284, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(285, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(286, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(287, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(288, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(289, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(290, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(291, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(292, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(293, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(294, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(295, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(296, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(297, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(298, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(299, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(300, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(301, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(302, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(303, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(304, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(305, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(306, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(307, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(308, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(309, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(310, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(311, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(312, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(313, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(314, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(315, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(316, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(317, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(318, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(319, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(320, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(321, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(322, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(323, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(324, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(325, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(326, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(327, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(328, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(331, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(332, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(333, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(334, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(335, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(336, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(337, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(137, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(138, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(139, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(141, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(142, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(143, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(145, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(146, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(150, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(151, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(159, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(160, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(161, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(162, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(163, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(164, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(165, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(166, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(167, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(168, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(169, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(170, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(172, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(173, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(174, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(175, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(176, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(177, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(178, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(179, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(180, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(181, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(182, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(183, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(184, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(185, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(186, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(187, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(210, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(211, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(213, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(214, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(215, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(231, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(232, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(233, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(235, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(236, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(237, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(238, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(239, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(240, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(241, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(242, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(244, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(245, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(248, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(249, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(250, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(272, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(273, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(275, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(276, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(277, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(278, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(279, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(280, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(281, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(282, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(283, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(284, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(285, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(305, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(306, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(309, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(310, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(311, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(314, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(315, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(316, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(318, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(319, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(320, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(321, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(322, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(323, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(324, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(325, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(326, 5);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(151, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(152, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(154, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(188, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(190, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(191, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(198, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(199, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(200, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(201, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(202, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(203, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(204, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(205, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(207, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(208, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(209, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(245, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(246, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(251, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(252, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(253, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(254, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(255, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(286, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(287, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(301, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(302, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(303, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(304, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(327, 6);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(149, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(188, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(190, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(191, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(202, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(205, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(208, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(222, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(286, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(287, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(302, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(313, 7);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(149, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(188, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(191, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(202, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(222, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(286, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(287, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(302, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(313, 8);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(149, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(154, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(157, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(188, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(191, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(199, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(200, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(201, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(202, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(203, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(205, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(207, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(208, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(209, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(222, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(248, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(249, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(251, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(252, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(253, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(254, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(255, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(269, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(286, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(287, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(301, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(302, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(303, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(313, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(327, 9);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(149, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(151, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(154, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(188, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(191, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(198, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(199, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(200, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(201, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(202, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(203, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(204, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(205, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(207, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(208, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(209, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(222, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(245, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(248, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(249, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(251, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(252, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(253, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(254, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(255, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(272, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(286, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(287, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(301, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(302, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(303, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(304, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(313, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(327, 10);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(141, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(143, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(150, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(151, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(154, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(183, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(188, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(190, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(191, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(198, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(199, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(200, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(201, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(202, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(204, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(205, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(207, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(209, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(241, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(242, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(245, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(248, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(249, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(251, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(252, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(253, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(254, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(255, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(272, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(281, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(286, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(287, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(301, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(302, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(304, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(324, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(325, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(327, 11);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(141, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(151, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(188, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(190, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(198, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(199, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(202, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(241, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(242, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(245, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(286, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(287, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(301, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(302, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(324, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(325, 12);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 13);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(199, 13);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(301, 13);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 14);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 14);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(194, 14);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 14);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 14);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 14);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(293, 14);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(294, 14);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 15);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(149, 15);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 15);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(194, 15);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 15);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(222, 15);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 15);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 15);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(293, 15);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(294, 15);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(313, 15);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 16);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(149, 16);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 16);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(195, 16);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 16);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(222, 16);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 16);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 16);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(295, 16);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(296, 16);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(313, 16);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 17);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(149, 17);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 17);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(195, 17);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 17);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(222, 17);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 17);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 17);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(295, 17);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(296, 17);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(313, 17);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 18);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(149, 18);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 18);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(196, 18);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 18);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(223, 18);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 18);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 18);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(297, 18);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(298, 18);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 19);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 19);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(196, 19);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 19);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 19);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 19);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(297, 19);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(298, 19);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 20);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(149, 20);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 20);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(197, 20);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 20);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(222, 20);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 20);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 20);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(299, 20);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(300, 20);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(313, 20);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 21);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(149, 21);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 21);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(197, 21);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 21);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(222, 21);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 21);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 21);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(299, 21);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(300, 21);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(313, 21);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(145, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(146, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(148, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(154, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(189, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(192, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(210, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(212, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(215, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(217, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(218, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(219, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(220, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(248, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(251, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(252, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(253, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(254, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(255, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(288, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(289, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(290, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(305, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(307, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(308, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(311, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(327, 22);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(145, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(146, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(148, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(154, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(189, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(192, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(210, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(212, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(215, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(217, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(218, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(219, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(220, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(248, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(251, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(252, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(253, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(254, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(255, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(288, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(289, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(290, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(305, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(307, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(308, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(311, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(327, 23);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(145, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(146, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(148, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(154, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(189, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(192, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(210, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(212, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(215, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(217, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(218, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(219, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(220, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(248, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(251, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(252, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(253, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(254, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(255, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(288, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(289, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(290, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(305, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(307, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(308, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(311, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(327, 24);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(145, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(146, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(148, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(154, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(189, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(192, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(210, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(212, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(215, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(217, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(218, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(219, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(220, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(248, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(251, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(252, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(253, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(254, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(255, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(288, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(289, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(290, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(305, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(307, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(308, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(311, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(327, 25);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(145, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(146, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(148, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(154, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(189, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(192, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(210, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(212, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(215, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(217, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(218, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(219, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(220, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(248, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(251, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(252, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(253, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(254, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(255, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(288, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(289, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(290, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(305, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(307, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(308, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(311, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(327, 26);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(145, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(146, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(148, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(154, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(189, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(192, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(210, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(212, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(215, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(217, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(218, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(219, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(220, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(248, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(251, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(252, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(253, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(254, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(255, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(288, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(289, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(290, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(305, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(307, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(308, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(311, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(327, 27);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(145, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(146, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(148, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(154, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(189, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(192, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(210, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(212, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(215, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(217, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(218, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(219, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(220, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(248, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(251, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(252, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(253, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(254, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(255, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(288, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(289, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(290, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(305, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(307, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(308, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(311, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(327, 28);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(145, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(146, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(148, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(154, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(189, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(192, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(210, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(212, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(215, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(217, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(218, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(219, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(220, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(248, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(251, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(252, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(253, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(254, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(255, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(288, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(289, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(290, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(305, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(307, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(308, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(311, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(327, 29);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(145, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(146, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(148, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(154, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(189, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(192, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(210, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(212, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(215, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(217, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(218, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(219, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(220, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(248, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(251, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(252, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(253, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(254, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(255, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(288, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(289, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(290, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(305, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(307, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(308, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(311, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(327, 30);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(145, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(146, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(148, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(153, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(154, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(158, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(189, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(192, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(206, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(210, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(212, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(215, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(217, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(218, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(219, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(220, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(247, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(248, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(251, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(252, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(253, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(254, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(255, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(270, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(271, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(288, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(289, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(290, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(305, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(307, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(308, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(311, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(327, 31);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(144, 32);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(188, 32);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(202, 32);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(286, 32);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(287, 32);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(302, 32);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(139, 33);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(149, 33);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(155, 33);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(169, 33);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(222, 33);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(256, 33);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(257, 33);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(258, 33);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(259, 33);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(260, 33);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(261, 33);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(313, 33);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(149, 34);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(155, 34);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(222, 34);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(256, 34);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(257, 34);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(258, 34);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(259, 34);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(260, 34);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(261, 34);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(313, 34);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(138, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(139, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(140, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(159, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(160, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(161, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(162, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(163, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(164, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(165, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(166, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(167, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(168, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(169, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(170, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(171, 35);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES
	(274, 35);

INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(1, 24, 'admin', '管理員', '男', '0908765433', 'ezadmin@ezcore.com', 'avatar-2022122710170439.png', 'C:\\ez-admin\\avatar\\avatar-2022122710170439.png', '$2a$10$5XpavnwVP8P58zAzMOm7WOpJ9SWh.iOw4swCHi7VRLF/sMWwiVyuu', b'1', 1, '0', '2023-02-24 09:24:36', 0, NULL, 'admin', '2018-08-23 09:11:56', '2023-02-24 09:24:36');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(7, 27, 'foi01', 'f01', '男', '0908765433', 'fo1@mail.tw', NULL, NULL, '$2a$10$mO/l7Q8GRCuXR1dtoqf.YOSelkK2xjMg91M0KdvLaZXyYgvhmdVJq', b'0', 1, '0', '2023-02-08 18:41:16', 0, 'admin', 'foi01', '2022-12-16 09:49:31', '2023-02-08 18:41:16');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(8, 28, 'foi02', 'f02', '男', '987654320', 'f02@mail.com', NULL, NULL, '$2a$10$ASpGMo1B8wUnbefmQNVVA.1nTjagDkh.CLy4odbRwK3U27Ex75G6C', b'0', 1, '0', '2023-02-07 13:23:26', 0, 'admin', 'foi02', '2022-12-16 09:51:56', '2023-02-07 13:23:26');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(9, 29, 'foi03', 'f03', '男', '987654319', 'f03@mail.com', NULL, NULL, '$2a$10$WExo40ZuxqeFkKhbGja39OFKPbmv8hakS0v.YS8ZeB1oSPKHHvlwG', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 09:52:28', '2022-12-16 09:52:28');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(10, 117, 'foi04', 'f04', '男', '987654318', 'f04@mail.com', NULL, NULL, '$2a$10$8zsZGz9o87u2z9HgMT8ek.3cvRPCFeS6uf77hA8GeCdw.BmljirRW', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 09:53:20', '2022-12-16 09:53:20');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(11, 118, 'foi05', 'f05', '男', '987654317', 'f05@mail.com', NULL, NULL, '$2a$10$InyZx/U6uvg8.cmNciOQ9.9OHRoPR3KiUEuBiaTL6dkazbwRY9S2G', b'0', 1, '0', '2022-12-27 11:22:35', 0, 'admin', 'foi05', '2022-12-16 09:53:51', '2022-12-27 11:22:35');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(12, 119, 'foi06', 'f06', '男', '987654316', 'f06@mail.com', NULL, NULL, '$2a$10$hZsXiW6f8umLr3iR9w8fAu1QaNEE5VIpyyis2XL6NIGa8tJ9ycY6G', b'0', 1, '0', '2022-12-16 11:50:55', 0, 'admin', 'foi06', '2022-12-16 09:54:31', '2022-12-16 11:50:55');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(13, 120, 'foi07', 'f07', '男', '987654315', 'f07@mail.com', NULL, NULL, '$2a$10$YGnMfdc6CzO5hJpuHpm0We2bdGwrc4cVcNm2JSsseOwmCUiZP70hu', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 09:55:06', '2022-12-16 09:55:06');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(14, 121, 'foi08', 'f08', '男', '987654314', 'f08@mail.com', NULL, NULL, '$2a$10$gGv5kCFz2CRhrx5NZiaD6u7ZP6qbfuMSjO0/yfv46sb2qQ23OPl7a', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 09:56:06', '2022-12-16 09:57:11');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(15, 122, 'foi09', 'f09', '男', '987654313', 'f09@mail.com', NULL, NULL, '$2a$10$eYUeCBqDHng8a93AzLkYTuzCkP1e0Coqn7YeADgbh3d2JLnSF37N6', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 09:57:47', '2022-12-16 09:57:47');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(16, 111, 'foi10', 'f10', '男', '987654312', 'f10@mail.com', NULL, NULL, '$2a$10$mvjV6Q00hLH1psPTJqyKnOeZnuhKA3hVvev5lLR6P3ow0cbM0myKm', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 09:58:23', '2022-12-16 09:58:23');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(17, 112, 'foi11', 'f11', '女', '987654311', 'f11@mail.com', NULL, NULL, '$2a$10$RyYUZLAUk7/XRttW1OK7EOWei8SBz08DSSZamNFOpyf8gOXEqzP1a', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 09:58:56', '2022-12-16 09:58:56');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(18, 113, 'foi12', 'f12', '女', '987654310', 'f12@mail.com', NULL, NULL, '$2a$10$sueYMWOIf1wMCKi02vKQCuq2nCzxkWshLTfzhoCHYKcuneTXm/XRq', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 09:59:43', '2022-12-16 09:59:43');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(19, 114, 'foi13', 'f13', '女', '987654309', 'f13@mail.com', NULL, NULL, '$2a$10$lt4IX/5w4TIMRFlPlTOoKelMAzEkL2yFO/sJouPg0bj8hbxQvOAvW', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 10:00:18', '2022-12-16 10:00:18');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(20, 115, 'foi14', 'f14', '女', '987654308', 'f14@mail.com', NULL, NULL, '$2a$10$0/o7JsEPrK5VHymI9GCeaOchQrXui8gT3tu/YDuFkrEMQ2Yf0MGku', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 10:01:05', '2022-12-16 10:01:05');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(21, 116, 'foi15', 'f15', '女', '987654307', 'f15@mail.com', NULL, NULL, '$2a$10$bzaHUHYpS77IdawYzP1Z9.4pAnoENBz1JjL0uiog4lVuqE9lKxubu', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 10:05:46', '2022-12-16 10:05:46');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(22, 123, 'foi16', 'f16', '男', '987654306', 'f16@mail.com', NULL, NULL, '$2a$10$RdlI1WKtdpVa/3hrtdXWqeemdeCPs68cKNw6KuWFTj7S3ugZX1NYu', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 10:08:28', '2022-12-16 11:11:21');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(23, 124, 'foi17', 'f17', '女', '987654305', 'f17@mail.com', NULL, NULL, '$2a$10$boxztKMIDfCaiUVETKU/QuoQ8YNDx5/Q/B6tB8n8BOA2LUJFDHQwS', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 10:09:06', '2022-12-16 10:09:06');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(24, 125, 'foi18', 'f18', '女', '987654304', 'f18@mail.com', NULL, NULL, '$2a$10$FKV5R/VRJRG0Cq6BwSCI6eUkNftJ3D0X44HKR89poP0e.VXmAs8Qe', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 11:16:05', '2022-12-16 11:16:05');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(25, 126, 'foi19', 'f19', '女', '987654303', 'f19@mail.com', NULL, NULL, '$2a$10$ecbJAYw3SZsFJ2BEMigZk.Pp1dy5fjYFRsOnKf3VuPQd3lHsZ9x0u', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 11:16:36', '2022-12-16 11:16:36');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(26, 53, 'foi20', 'f20', '女', '987654302', 'f20@mail.com', NULL, NULL, '$2a$10$scKPA7GEyoLLoDji7WOibubkq4uJFkIqRPL2hOF4dvgcXGmAWcUN2', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 11:18:03', '2022-12-16 11:18:03');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(27, 54, 'foi21', 'f21', '女', '987654301', 'f21@mail.com', NULL, NULL, '$2a$10$EKB7AYrk7cloRUGvlvmFNuzJzgBsZudulJQa6UNrpt.iTxMWyyAEW', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 11:19:14', '2022-12-16 11:19:14');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(28, 56, 'foi22', 'f22', '男', '987654298', 'f22@mail.com', NULL, NULL, '$2a$10$4ATSNxG2kM8B4JvG6VK1VOfDhM2HYwv6p/sx7KsU5tGFrWlW2/xbi', b'0', 1, '0', NULL, 0, 'admin', 'admin', '2022-12-16 11:31:12', '2022-12-16 11:36:56');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(29, 57, 'foi23', 'f23', '男', '987654297', 'f23@mail.com', NULL, NULL, '$2a$10$4H8NnRsgHlXeEUkkpINUO.Vu6g1/lyMJcLYXs.NVfRT/2zUPcEkwu', b'0', 1, '0', '2022-12-27 19:08:54', 0, 'admin', 'foi23', '2022-12-16 11:32:24', '2022-12-27 19:08:54');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(30, 61, 'foi24', 'f24', '男', '987654296', 'f24@mail.com', NULL, NULL, '$2a$10$ko7Qit5STO0rZ6cPuTFJ0O77/m2afqSRG.fGfaVFZ4XpHnwNI6eU.', b'0', 1, '0', '2022-12-27 11:22:50', 0, 'admin', 'foi24', '2022-12-16 11:37:37', '2022-12-27 11:22:50');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(31, 62, 'foi25', 'f25', '男', '987654295', 'f25@mail.com', NULL, NULL, '$2a$10$CTUkMz0R7T/ZEiFoz3hMDOwdahI6Vm23rydOrb150g0vpO/9W2QVi', b'0', 1, '0', '2022-12-16 11:48:14', 0, 'admin', 'foi25', '2022-12-16 11:38:13', '2022-12-16 11:48:14');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(32, 65, 'foi26', 'f26', '男', '987654294', 'f26@mail.com', NULL, NULL, '$2a$10$siKV7/Dt/WMVso./chS4Pei2p6j5HXLu4bLeapTqhyBj63PHsy4ue', b'0', 1, '0', '2023-01-09 15:45:02', 0, 'admin', 'foi26', '2022-12-16 11:41:33', '2023-01-09 15:45:02');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(33, 65, 'foi27', 'f27', '男', '987654293', 'f27@mail.com', NULL, NULL, '$2a$10$oNonYgnOWyNide5sRkZfvuPY1h5Txui2c8hH/aEf/JVq1iJp8tati', b'0', 1, '0', '2023-01-10 09:09:28', 0, 'admin', 'foi27', '2022-12-16 11:42:14', '2023-01-10 09:09:28');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `account`, `name`, `gender`, `phone`, `email`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `err_flag`, `latest_login_time`, `err_count`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES
	(42, 24, 'test', 'testing', '女', '0912345678', 'testing@test.re', NULL, NULL, '$2a$10$jyOCP9ex1m5BtchuSys1PO6ozMyYVgjbQdcOidn1WS9k4t49UstHK', b'0', 1, '0', '2023-02-20 17:00:34', 0, 'admin', 'test', '2023-02-08 16:51:36', '2023-02-20 17:00:34');

INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(1, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(7, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(8, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(9, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(10, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(11, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(12, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(13, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(14, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(15, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(26, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(27, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(28, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(29, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(30, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(31, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(32, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(33, 8);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(16, 10);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(17, 10);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(18, 10);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(19, 10);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(20, 10);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(21, 10);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(22, 10);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(23, 10);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(24, 10);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(25, 10);
INSERT INTO `sys_users_jobs` (`user_id`, `job_id`) VALUES
	(42, 11);

INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(1, 1);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(42, 1);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(1, 5);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(7, 6);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(8, 7);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(9, 8);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(10, 9);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(11, 10);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(12, 11);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(13, 12);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(15, 13);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(16, 14);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(17, 15);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(18, 16);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(19, 17);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(20, 18);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(21, 19);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(22, 20);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(23, 21);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(26, 22);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(27, 23);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(28, 24);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(29, 25);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(30, 26);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(31, 27);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(32, 28);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(33, 29);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(14, 32);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(24, 33);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES
	(25, 34);


insert into url_mapping (id, full_url, create_time) values
	(254927547, 'https://stackoverflow.com/questions/4888277/add-default-value-of-datetime-field-in-sql-server-to-a-timestamp', '2023-03-21 16:16:22.233');
insert into url_mapping (id, full_url, create_time) values
	(268489794, 'http://localhost:8014/monitor/logs', '2023-03-21 17:08:12.427');
insert into url_mapping (id, full_url, create_time) values
	(1288833462, 'https://github.com/laurent22/joplin/blob/dev/docker-compose.server.yml', '2023-03-21 16:52:45.757');
insert into url_mapping (id, full_url, create_time) values
	(528182145, 'https://github.com/HeidiSQL/HeidiSQL/tree/master/components/virtualtreeview/Resources', '2023-03-21 18:14:22.097');


insert into actioncode_pgcode(actioncode, pgcode) values('10010', 'web1001');
insert into actioncode_pgcode(actioncode, pgcode) values('10020', 'web1002');
insert into actioncode_pgcode(actioncode, pgcode) values('10030', 'web1003');
insert into actioncode_pgcode(actioncode, pgcode) values('10050', 'web1004');