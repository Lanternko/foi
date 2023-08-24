-- *建立db的範例如下
-- CREATE DATABASE db名稱 CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
-------------------------------------------------------------------------------------------------
USE eladmin;

CREATE TABLE IF NOT EXISTS `codedetail` (
  `cid` bigint NOT NULL AUTO_INCREMENT COMMENT 'tableID',
  `ins_date` datetime DEFAULT NULL COMMENT '建立日期時間',
  `ins_usr` varchar(20) DEFAULT NULL COMMENT '建立者',
  `upd_date` datetime DEFAULT NULL COMMENT '建立日期時間',
  `upd_usr` varchar(20) DEFAULT NULL COMMENT '異動者',
  `kind` varchar(64) NOT NULL COMMENT '代碼類型',
  `code` varchar(64) NOT NULL COMMENT '代碼值',
  `name` varchar(64) NOT NULL COMMENT '代碼名稱',
  `is_enabled` bit(1) DEFAULT b'1' COMMENT '啟用 0:disable/1:enable',
  `description` varchar(256) DEFAULT NULL COMMENT '描述',
  `sort_code` varchar(10) DEFAULT NULL COMMENT '排序碼',
  `property1` varchar(256) DEFAULT NULL COMMENT '設定值1',
  `property2` varchar(256) DEFAULT NULL COMMENT '設定值2',
  `property3` varchar(256) DEFAULT NULL COMMENT '設定值3',
  `property4` varchar(256) DEFAULT NULL COMMENT '設定值4',
  `property5` varchar(256) DEFAULT NULL COMMENT '設定值5',
  `property6` varchar(256) DEFAULT NULL COMMENT '設定值6',
  `property7` varchar(256) DEFAULT NULL COMMENT '設定值7',
  `property8` varchar(256) DEFAULT NULL COMMENT '設定值8',
  `property9` varchar(4000) DEFAULT NULL COMMENT '設定值9',
  `child_id` bigint DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `codedetail_filter` (
  `id` bigint NOT NULL,
  `pid` bigint NOT NULL COMMENT 'parent_code_id',
  `fid` bigint NOT NULL COMMENT 'filter_code_id',
  PRIMARY KEY (`id`),
  KEY `parent_code_idx` (`pid`),
  KEY `filter_code_idx` (`fid`),
  CONSTRAINT `filter_code` FOREIGN KEY (`fid`) REFERENCES `codedetail` (`cid`),
  CONSTRAINT `parent_code` FOREIGN KEY (`pid`) REFERENCES `codedetail` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `code_column_config` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(191) DEFAULT NULL,
  `column_name` varchar(191) DEFAULT NULL,
  `column_type` varchar(191) DEFAULT NULL,
  `dict_name` varchar(191) DEFAULT NULL,
  `extra` varchar(191) DEFAULT NULL,
  `form_show` bit(1) DEFAULT NULL,
  `form_type` varchar(191) DEFAULT NULL,
  `key_type` varchar(191) DEFAULT NULL,
  `list_show` bit(1) DEFAULT NULL,
  `not_null` bit(1) DEFAULT NULL,
  `query_type` varchar(191) DEFAULT NULL,
  `remark` varchar(191) DEFAULT NULL,
  `date_annotation` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`column_id`) USING BTREE,
  KEY `idx_table_name` (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='程式碼產生欄位資訊儲存';

CREATE TABLE IF NOT EXISTS `code_gen_config` (
  `config_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(191) DEFAULT NULL COMMENT '表名',
  `author` varchar(191) DEFAULT NULL COMMENT '作者',
  `cover` bit(1) DEFAULT NULL COMMENT '是否覆蓋',
  `module_name` varchar(191) DEFAULT NULL COMMENT '模組名稱',
  `pack` varchar(191) DEFAULT NULL COMMENT '至於哪個包下',
  `path` varchar(191) DEFAULT NULL COMMENT '前端程式碼產生的路徑',
  `api_path` varchar(191) DEFAULT NULL COMMENT '前端Api檔案路徑',
  `prefix` varchar(191) DEFAULT NULL COMMENT '表字首',
  `api_alias` varchar(191) DEFAULT NULL COMMENT '介面名稱',
  PRIMARY KEY (`config_id`) USING BTREE,
  KEY `idx_table_name` (`table_name`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='程式碼產生器配置';

CREATE TABLE IF NOT EXISTS `extra_info` (
  `tid` bigint NOT NULL AUTO_INCREMENT COMMENT 'tableID',
  `ins_date` datetime NOT NULL COMMENT '建立日期時間',
  `ins_usr` varchar(20) NOT NULL COMMENT '建立者',
  `upd_date` datetime DEFAULT NULL COMMENT '異動日期時間',
  `upd_usr` varchar(20) DEFAULT NULL COMMENT '異動者',
  `gui_tid` bigint NOT NULL COMMENT 'REF GUI.TID',
  `seq_no` int NOT NULL COMMENT '流水序號',
  `data_key` varchar(64) NOT NULL COMMENT '鍵值',
  `data_value` varchar(64) NOT NULL COMMENT '顯示值',
  `data_type` varchar(64) NOT NULL COMMENT '資料類型',
  PRIMARY KEY (`tid`) USING BTREE,
  KEY `i1_extra_info` (`gui_tid`),
  KEY `i2_extra_info` (`data_key`,`data_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='額外資訊';

CREATE TABLE IF NOT EXISTS `gui` (
  `tid` bigint NOT NULL AUTO_INCREMENT COMMENT 'tableID',
  `ins_date` datetime NOT NULL COMMENT '建立日期時間',
  `ins_usr` varchar(20) NOT NULL COMMENT '建立者',
  `upd_date` datetime DEFAULT NULL COMMENT '異動日期時間',
  `upd_usr` varchar(20) DEFAULT NULL COMMENT '異動者',
  `income_unit_tid` bigint NOT NULL COMMENT 'REF UNITS.TID',
  `income_unit_code` varchar(36) NOT NULL COMMENT 'REF UNITS.CODE',
  `income_date` datetime DEFAULT NULL COMMENT '收入日(發票顯示日期)',
  `check_no` varchar(64) DEFAULT NULL COMMENT '收入中心結帳鍵值',
  `gui_no` varchar(10) NOT NULL COMMENT '發票號碼',
  `rand_code` varchar(10) NOT NULL COMMENT '隨機碼',
  `gui_type` varchar(32) NOT NULL COMMENT '載體類型',
  `carrier_code` varchar(2) DEFAULT NULL COMMENT '載體編號',
  `job_code` varchar(32) NOT NULL COMMENT '程式代碼',
  `cancel_date` datetime DEFAULT NULL COMMENT '資料作廢日期時間(實際)',
  `cancel_reason` varchar(64) DEFAULT NULL COMMENT '發票作廢原因',
  `cancel_usr` varchar(20) DEFAULT NULL COMMENT '發票者',
  `print_cnt` int DEFAULT NULL COMMENT '列印次數',
  `print_date` int DEFAULT NULL COMMENT '列印日期時間',
  `print_sub` bit(1) DEFAULT NULL COMMENT '列印明細',
  PRIMARY KEY (`tid`) USING BTREE,
  KEY `i1_gui` (`income_date`),
  KEY `i2_gui` (`check_no`),
  KEY `i3_gui` (`gui_no`),
  KEY `i4_gui` (`cancel_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='發票主檔';

CREATE TABLE IF NOT EXISTS `html_doc` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '標題',
  `upd_date` datetime DEFAULT NULL COMMENT '建立日期時間',
  `upd_usr` varchar(20) DEFAULT NULL COMMENT '異動者',
  `ins_date` datetime NOT NULL COMMENT '建立日期',
  `ins_usr` varchar(45) NOT NULL COMMENT '建立者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `html_content` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `html_doc_id` bigint DEFAULT NULL COMMENT 'html_doc.id',
  `content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '內文',
  `order_no` int DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `html_doc_id` (`html_doc_id`),
  CONSTRAINT `html_content_ibfk_1` FOREIGN KEY (`html_doc_id`) REFERENCES `html_doc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `html_helper` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(191) NOT NULL COMMENT 'sys_menu_id',
  `html_doc_id` bigint DEFAULT NULL COMMENT 'html_doc.id',
  `begin_date` datetime DEFAULT NULL COMMENT '起始日期',
  `end_date` datetime DEFAULT NULL COMMENT '結束日期',
  `window_size` int DEFAULT '1080',
  PRIMARY KEY (`id`),
  KEY `html_doc_id` (`html_doc_id`),
  CONSTRAINT `html_helper_ibfk_1` FOREIGN KEY (`html_doc_id`) REFERENCES `html_doc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='小幫手';

CREATE TABLE IF NOT EXISTS `html_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `html_doc_id` bigint DEFAULT NULL COMMENT 'html_doc.id',
  `begin_date` datetime DEFAULT NULL COMMENT '起始日期',
  `end_date` datetime DEFAULT NULL COMMENT '結束日期',
  `display` varchar(32) DEFAULT NULL COMMENT '1登入頁 2系統公告 數字間用,分隔',
  `pin` bit(1) DEFAULT b'0' COMMENT '置頂',
  `title_color` varchar(45) DEFAULT '#000000' COMMENT '標題顏色',
  `bold` bit(1) DEFAULT b'0' COMMENT '加粗',
  PRIMARY KEY (`id`),
  KEY `html_post_ibfk_1_idx` (`html_doc_id`),
  CONSTRAINT `html_post_ibfk_1` FOREIGN KEY (`html_doc_id`) REFERENCES `html_doc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='系統公告';

CREATE TABLE IF NOT EXISTS `income_unit` (
  `tid` bigint NOT NULL AUTO_INCREMENT COMMENT 'tableID',
  `ins_date` datetime NOT NULL COMMENT '建立日期時間',
  `ins_usr` varchar(20) NOT NULL COMMENT '建立者',
  `upd_date` datetime DEFAULT NULL COMMENT '異動日期時間',
  `upd_usr` varchar(20) DEFAULT NULL COMMENT '異動者',
  `code` varchar(32) NOT NULL COMMENT '收入中心代碼',
  `name` varchar(64) NOT NULL COMMENT '收入中心名稱',
  `is_enabled` bit(1) NOT NULL COMMENT '有效',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='收入中心';

CREATE TABLE IF NOT EXISTS `income_unit_word` (
  `tid` bigint NOT NULL AUTO_INCREMENT COMMENT 'tableID',
  `ins_date` datetime NOT NULL COMMENT '建立日期時間',
  `ins_usr` varchar(20) NOT NULL COMMENT '建立者',
  `upd_date` datetime DEFAULT NULL COMMENT '建立日期時間',
  `upd_usr` varchar(20) DEFAULT NULL COMMENT '異動者',
  `word_config_tid` bigint NOT NULL COMMENT '字軌檔內碼',
  `income_unit_tid` bigint NOT NULL COMMENT '收入中心代碼',
  `seq_no` int NOT NULL COMMENT '流水號-取號順序',
  `unit_start_no` int NOT NULL COMMENT '設定起號',
  `unit_end_no` int NOT NULL COMMENT '設定迄號',
  `next_no` int NOT NULL COMMENT '下次配發號',
  `is_enabled` bit(1) NOT NULL COMMENT '有效',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='字軌檔';

CREATE TABLE IF NOT EXISTS `item` (
  `tid` bigint NOT NULL AUTO_INCREMENT COMMENT 'tableID',
  `ins_date` datetime NOT NULL COMMENT '建立日期時間',
  `ins_usr` varchar(20) NOT NULL COMMENT '建立者',
  `upd_date` datetime DEFAULT NULL COMMENT '異動日期時間',
  `upd_usr` varchar(20) DEFAULT NULL COMMENT '異動者',
  `gui_tid` bigint NOT NULL COMMENT 'REF GUI.TID',
  `seq_no` int NOT NULL COMMENT '流水序號',
  `code` varchar(64) NOT NULL COMMENT '消費商品代碼',
  `name` varchar(64) NOT NULL COMMENT '消費商品名稱',
  `quantity` decimal(12,2) NOT NULL COMMENT '消費數量',
  `price` decimal(12,2) NOT NULL COMMENT '單價',
  `total` decimal(12,2) NOT NULL COMMENT '小計',
  `is_gui` varchar(1) NOT NULL COMMENT '是否開立發票 Y:開立(預設) N:不開立',
  `taxType` varchar(2) NOT NULL COMMENT '稅別{tx:應稅 , "":零稅 , nx:免稅}',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='消費商品';

CREATE TABLE IF NOT EXISTS `mnt_app` (
  `app_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(191) DEFAULT NULL COMMENT '應用名稱',
  `upload_path` varchar(191) DEFAULT NULL COMMENT '上傳目錄',
  `deploy_path` varchar(191) DEFAULT NULL COMMENT '部署路徑',
  `backup_path` varchar(191) DEFAULT NULL COMMENT '備份路徑',
  `port` int DEFAULT NULL COMMENT '應用埠',
  `start_script` varchar(4000) DEFAULT NULL COMMENT '啟動指令',
  `deploy_script` varchar(4000) DEFAULT NULL COMMENT '部署指令',
  `create_by` varchar(191) DEFAULT NULL COMMENT '建立者',
  `update_by` varchar(191) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '建立日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`app_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='應用管理';

CREATE TABLE IF NOT EXISTS `mnt_database` (
  `db_id` varchar(50) NOT NULL COMMENT 'ID',
  `name` varchar(191) NOT NULL COMMENT '名稱',
  `jdbc_url` varchar(191) NOT NULL COMMENT 'jdbc連線',
  `user_name` varchar(191) NOT NULL COMMENT '帳號',
  `pwd` varchar(191) NOT NULL COMMENT '密碼',
  `create_by` varchar(191) DEFAULT NULL COMMENT '建立者',
  `update_by` varchar(191) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '建立時間',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`db_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='資料庫管理';

CREATE TABLE IF NOT EXISTS `mnt_deploy` (
  `deploy_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `app_id` bigint DEFAULT NULL COMMENT '應用編號',
  `create_by` varchar(191) DEFAULT NULL COMMENT '建立者',
  `update_by` varchar(191) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`deploy_id`) USING BTREE,
  KEY `FK6sy157pseoxx4fmcqr1vnvvhy` (`app_id`) USING BTREE,
  CONSTRAINT `FK6sy157pseoxx4fmcqr1vnvvhy` FOREIGN KEY (`app_id`) REFERENCES `mnt_app` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='部署管理';

CREATE TABLE IF NOT EXISTS `mnt_deploy_history` (
  `history_id` varchar(50) NOT NULL COMMENT 'ID',
  `app_name` varchar(191) NOT NULL COMMENT '應用名稱',
  `deploy_date` datetime NOT NULL COMMENT '部署日期',
  `deploy_user` varchar(50) NOT NULL COMMENT '部署使用者',
  `ip` varchar(20) NOT NULL COMMENT '伺服器IP',
  `deploy_id` bigint DEFAULT NULL COMMENT '部署編號',
  PRIMARY KEY (`history_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='部署歷史管理';

CREATE TABLE IF NOT EXISTS `mnt_server` (
  `server_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `account` varchar(50) DEFAULT NULL COMMENT '帳號',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `name` varchar(100) DEFAULT NULL COMMENT '名稱',
  `password` varchar(100) DEFAULT NULL COMMENT '密碼',
  `port` int DEFAULT NULL COMMENT '埠',
  `create_by` varchar(191) DEFAULT NULL COMMENT '建立者',
  `update_by` varchar(191) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '建立時間',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`server_id`) USING BTREE,
  KEY `idx_ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='伺服器管理';

CREATE TABLE IF NOT EXISTS `mnt_deploy_server` (
  `deploy_id` bigint NOT NULL COMMENT '部署ID',
  `server_id` bigint NOT NULL COMMENT '服務ID',
  PRIMARY KEY (`deploy_id`,`server_id`) USING BTREE,
  KEY `FKeaaha7jew9a02b3bk9ghols53` (`server_id`) USING BTREE,
  CONSTRAINT `FK3cehr56tedph6nk3gxsmeq0pb` FOREIGN KEY (`deploy_id`) REFERENCES `mnt_deploy` (`deploy_id`),
  CONSTRAINT `FKeaaha7jew9a02b3bk9ghols53` FOREIGN KEY (`server_id`) REFERENCES `mnt_server` (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='應用與伺服器關聯';

CREATE TABLE IF NOT EXISTS `payment` (
  `tid` bigint NOT NULL AUTO_INCREMENT COMMENT 'tableID',
  `ins_date` datetime NOT NULL COMMENT '建立日期時間',
  `ins_usr` varchar(20) NOT NULL COMMENT '建立者',
  `upd_date` datetime DEFAULT NULL COMMENT '異動日期時間',
  `upd_usr` varchar(20) DEFAULT NULL COMMENT '異動者',
  `gui_tid` bigint NOT NULL COMMENT 'REF GUI.TID',
  `seq_no` int NOT NULL COMMENT '流水序號',
  `code` varchar(64) NOT NULL COMMENT '付款方式代碼',
  `name` varchar(64) NOT NULL COMMENT '代款方式名稱',
  `amount` decimal(12,2) NOT NULL COMMENT '結帳金額',
  `is_gui` varchar(1) NOT NULL COMMENT '是否開立發票 Y:開立(預設) N:不開立',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='付款方式';

CREATE TABLE IF NOT EXISTS `sys_attachment` (
  `attachment_id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `sys_contacts` (
  `contacts_id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contacts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint DEFAULT NULL COMMENT '上級部門',
  `sub_count` int DEFAULT '0' COMMENT '子部門數目',
  `name` varchar(191) NOT NULL COMMENT '名稱',
  `dept_sort` int DEFAULT '999' COMMENT '排序',
  `enabled` bit(1) NOT NULL COMMENT '狀態',
  `create_by` varchar(191) DEFAULT NULL COMMENT '建立者',
  `update_by` varchar(191) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '建立日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`dept_id`) USING BTREE,
  KEY `inx_pid` (`pid`),
  KEY `inx_enabled` (`enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='部門';

CREATE TABLE IF NOT EXISTS `sys_dict` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(191) NOT NULL COMMENT '字典名稱',
  `description` varchar(191) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(191) DEFAULT NULL COMMENT '建立者',
  `update_by` varchar(191) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '建立日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='數據字典';

CREATE TABLE IF NOT EXISTS `sys_dict_detail` (
  `detail_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dict_id` bigint DEFAULT NULL COMMENT '字典id',
  `label` varchar(191) NOT NULL COMMENT '字典標籤',
  `value` varchar(191) NOT NULL COMMENT '字典值',
  `dict_sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(191) DEFAULT NULL COMMENT '建立者',
  `update_by` varchar(191) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '建立日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`detail_id`) USING BTREE,
  KEY `FK5tpkputc6d9nboxojdbgnpmyb` (`dict_id`) USING BTREE,
  CONSTRAINT `FKtpcfupdufcvr88hk05ckubukx` FOREIGN KEY (`dict_id`) REFERENCES `sys_dict` (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='數據字典詳情';

CREATE TABLE IF NOT EXISTS `sys_email` (
  `email_id` bigint NOT NULL AUTO_INCREMENT,
  `child` bigint DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `from_api` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `sended_time` datetime DEFAULT NULL,
  `failed_report_time` datetime DEFAULT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `sys_email_attachment` (
  `email_id` bigint NOT NULL,
  `attachment_id` bigint NOT NULL,
  PRIMARY KEY (`email_id`,`attachment_id`),
  KEY `FKjy2xclv2451j7oqo5uo310ecm` (`attachment_id`),
  CONSTRAINT `FKhu5j4114eqpwvwcgknt3mehrn` FOREIGN KEY (`email_id`) REFERENCES `sys_email` (`email_id`),
  CONSTRAINT `FKjy2xclv2451j7oqo5uo310ecm` FOREIGN KEY (`attachment_id`) REFERENCES `sys_attachment` (`attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `sys_email_contacts_bcc` (
  `email_id` bigint NOT NULL,
  `contacts_id` bigint NOT NULL,
  PRIMARY KEY (`email_id`,`contacts_id`),
  KEY `FK75a1glcrn13h7l0fauaj5hjbk` (`contacts_id`),
  CONSTRAINT `FK75a1glcrn13h7l0fauaj5hjbk` FOREIGN KEY (`contacts_id`) REFERENCES `sys_contacts` (`contacts_id`),
  CONSTRAINT `FKoifxxq5myiydfqu2f6r9w655` FOREIGN KEY (`email_id`) REFERENCES `sys_email` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `sys_email_contacts_cc` (
  `email_id` bigint NOT NULL,
  `contacts_id` bigint NOT NULL,
  PRIMARY KEY (`email_id`,`contacts_id`),
  KEY `FKp5ljxj3cfexa5i0wy3xg6rsbx` (`contacts_id`),
  CONSTRAINT `FKkmw686xjuutort8nw3n1m01c0` FOREIGN KEY (`email_id`) REFERENCES `sys_email` (`email_id`),
  CONSTRAINT `FKp5ljxj3cfexa5i0wy3xg6rsbx` FOREIGN KEY (`contacts_id`) REFERENCES `sys_contacts` (`contacts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `sys_email_contacts_to` (
  `email_id` bigint NOT NULL,
  `contacts_id` bigint NOT NULL,
  PRIMARY KEY (`email_id`,`contacts_id`),
  KEY `FKdqgox2h1jtj5yu6bu4bvko7vg` (`contacts_id`),
  CONSTRAINT `FK5cdqu2vbq4m1kk071ttbydwru` FOREIGN KEY (`email_id`) REFERENCES `sys_email` (`email_id`),
  CONSTRAINT `FKdqgox2h1jtj5yu6bu4bvko7vg` FOREIGN KEY (`contacts_id`) REFERENCES `sys_contacts` (`contacts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(191) NOT NULL COMMENT '職務名稱',
  `enabled` bit(1) NOT NULL COMMENT '職務狀態',
  `job_sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(191) DEFAULT NULL COMMENT '建立者',
  `update_by` varchar(191) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '建立日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`job_id`) USING BTREE,
  UNIQUE KEY `uniq_name` (`name`),
  KEY `inx_enabled` (`enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='職務';

CREATE TABLE IF NOT EXISTS `sys_log` (
  `log_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `description` varchar(191) DEFAULT NULL,
  `log_type` varchar(191) DEFAULT NULL,
  `method` varchar(191) DEFAULT NULL,
  `params` text,
  `request_ip` varchar(191) DEFAULT NULL,
  `time` bigint DEFAULT NULL,
  `account` varchar(191) DEFAULT NULL,
  `browser` varchar(191) DEFAULT NULL,
  `exception_detail` text,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE,
  KEY `log_create_time_index` (`create_time`),
  KEY `inx_log_type` (`log_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='系統日誌';

CREATE TABLE IF NOT EXISTS `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint DEFAULT NULL COMMENT '上級選單ID',
  `sub_count` int DEFAULT '0' COMMENT '子選單數目',
  `type` int DEFAULT NULL COMMENT '選單型別',
  `title` varchar(191) DEFAULT NULL COMMENT '選單標題',
  `name` varchar(191) DEFAULT NULL COMMENT '元件名稱',
  `component` varchar(191) DEFAULT NULL COMMENT '元件',
  `menu_sort` int DEFAULT NULL COMMENT '排序',
  `icon` varchar(191) DEFAULT NULL COMMENT '圖示',
  `path` varchar(191) DEFAULT NULL COMMENT '鏈接地址',
  `i_frame` bit(1) DEFAULT NULL COMMENT '是否外鏈',
  `cache` bit(1) DEFAULT b'0' COMMENT '快取',
  `hidden` bit(1) DEFAULT b'0' COMMENT '隱藏',
  `permission` varchar(191) DEFAULT NULL COMMENT '許可權',
  `create_by` varchar(191) DEFAULT NULL COMMENT '建立者',
  `update_by` varchar(191) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '建立日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`menu_id`) USING BTREE,
  UNIQUE KEY `uniq_title` (`title`),
  UNIQUE KEY `uniq_name` (`name`),
  KEY `inx_pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='系統選單';

CREATE TABLE IF NOT EXISTS `sys_quartz_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(191) DEFAULT NULL COMMENT 'Spring Bean名稱',
  `cron_expression` varchar(191) DEFAULT NULL COMMENT 'cron 表達式',
  `is_pause` bit(1) DEFAULT NULL COMMENT '狀態：1暫停、0啟用',
  `job_name` varchar(191) DEFAULT NULL COMMENT '任務名稱',
  `method_name` varchar(191) DEFAULT NULL COMMENT '方法名稱',
  `params` varchar(191) DEFAULT NULL COMMENT '參數',
  `description` varchar(191) DEFAULT NULL COMMENT '備註',
  `person_in_charge` varchar(100) DEFAULT NULL COMMENT '負責人',
  `email` varchar(100) DEFAULT NULL COMMENT '報警信箱',
  `sub_task` varchar(100) DEFAULT NULL COMMENT '子任務ID',
  `pause_after_failure` bit(1) DEFAULT NULL COMMENT '任務失敗後是否暫停',
  `create_by` varchar(191) DEFAULT NULL COMMENT '建立者',
  `update_by` varchar(191) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '建立日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`job_id`) USING BTREE,
  KEY `inx_is_pause` (`is_pause`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='定時任務';

CREATE TABLE IF NOT EXISTS `sys_quartz_log` (
  `log_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(191) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `cron_expression` varchar(191) DEFAULT NULL,
  `exception_detail` text,
  `is_success` bit(1) DEFAULT NULL,
  `job_name` varchar(191) DEFAULT NULL,
  `method_name` varchar(191) DEFAULT NULL,
  `params` varchar(191) DEFAULT NULL,
  `time` bigint DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='定時任務日誌';

CREATE TABLE IF NOT EXISTS `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(191) NOT NULL COMMENT '名稱',
  `level` int DEFAULT NULL COMMENT '角色級別',
  `description` varchar(191) DEFAULT NULL COMMENT '描述',
  `data_scope` varchar(191) DEFAULT NULL COMMENT '數據許可權',
  `create_by` varchar(191) DEFAULT NULL COMMENT '建立者',
  `update_by` varchar(191) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '建立日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE KEY `uniq_name` (`name`),
  KEY `role_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='角色表';

CREATE TABLE IF NOT EXISTS `sys_roles_depts` (
  `role_id` bigint NOT NULL,
  `dept_id` bigint NOT NULL,
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE,
  KEY `FK7qg6itn5ajdoa9h9o78v9ksur` (`dept_id`) USING BTREE,
  CONSTRAINT `FKi76y4hsp8ljdymndt1ruxvhpy` FOREIGN KEY (`dept_id`) REFERENCES `sys_dept` (`dept_id`),
  CONSTRAINT `FKmushkvid7oipfaj59ia235ml4` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='角色部門關聯';

CREATE TABLE IF NOT EXISTS `sys_roles_menus` (
  `menu_id` bigint NOT NULL COMMENT '選單ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`,`role_id`) USING BTREE,
  KEY `FKcngg2qadojhi3a651a5adkvbq` (`role_id`) USING BTREE,
  CONSTRAINT `FKafispjhd6o7d07berqyod018y` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='角色選單關聯';

CREATE TABLE IF NOT EXISTS `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部門名稱',
  `account` varchar(191) DEFAULT NULL COMMENT '使用者名稱',
  `name` varchar(191) DEFAULT NULL COMMENT '暱稱',
  `gender` varchar(2) DEFAULT NULL COMMENT '性別',
  `phone` varchar(191) DEFAULT NULL COMMENT '手機號碼',
  `email` varchar(191) DEFAULT NULL COMMENT '信箱',
  `avatar_name` varchar(191) DEFAULT NULL COMMENT '頭像地址',
  `avatar_path` varchar(191) DEFAULT NULL COMMENT '頭像真實路徑',
  `password` varchar(191) DEFAULT NULL COMMENT '密碼',
  `is_admin` bit(1) DEFAULT b'0' COMMENT '是否為admin帳號',
  `enabled` bigint DEFAULT NULL COMMENT '狀態：1啟用、0禁用',
  `err_flag` varchar(10) DEFAULT '0',
  `latest_login_time` datetime DEFAULT NULL,
  `err_count` bigint DEFAULT '0',
  `create_by` varchar(191) DEFAULT NULL COMMENT '建立者',
  `update_by` varchar(191) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '建立日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `UK_kpubos9gc2cvtkb0thktkbkes` (`email`) USING BTREE,
  UNIQUE KEY `account` (`account`) USING BTREE,
  UNIQUE KEY `uniq_username` (`account`),
  UNIQUE KEY `uniq_email` (`email`),
  UNIQUE KEY `UK_51bvuyvihefoh4kp5syh2jpi4` (`account`),
  KEY `FK5rwmryny6jthaaxkogownknqp` (`dept_id`) USING BTREE,
  KEY `FKpq2dhypk2qgt68nauh2by22jb` (`avatar_name`) USING BTREE,
  KEY `inx_enabled` (`enabled`),
  CONSTRAINT `FKb3pkx0wbo6o8i8lj0gxr37v1n` FOREIGN KEY (`dept_id`) REFERENCES `sys_dept` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='系統使用者';

CREATE TABLE IF NOT EXISTS `sys_users_jobs` (
  `user_id` bigint NOT NULL COMMENT '使用者ID',
  `job_id` bigint NOT NULL COMMENT '職務ID',
  PRIMARY KEY (`user_id`,`job_id`),
  KEY `FK57hgctrcj445pcpjc87c3tc6s` (`job_id`),
  CONSTRAINT `FK47y0cao2a69jixdolin7anxep` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`),
  CONSTRAINT `FK57hgctrcj445pcpjc87c3tc6s` FOREIGN KEY (`job_id`) REFERENCES `sys_job` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `sys_users_roles` (
  `user_id` bigint NOT NULL COMMENT '使用者ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  KEY `FKq4eq273l04bpu4efj0jd0jb98` (`role_id`) USING BTREE,
  CONSTRAINT `FK467tnin4c6th4qp8ehba4045p` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`),
  CONSTRAINT `FKgm8xovt9418lgk4kkp8h1yi6a` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='使用者角色關聯';

CREATE TABLE IF NOT EXISTS `tool_email_config` (
  `config_id` bigint NOT NULL COMMENT 'ID',
  `from_user` varchar(191) DEFAULT NULL COMMENT '收件人',
  `host` varchar(191) DEFAULT NULL COMMENT '郵件伺服器SMTP地址',
  `pass` varchar(191) DEFAULT NULL COMMENT '密碼',
  `port` varchar(191) DEFAULT NULL COMMENT '埠',
  `user` varchar(191) DEFAULT NULL COMMENT '發件者使用者名稱',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='信箱配置';

CREATE TABLE IF NOT EXISTS `tool_local_storage` (
  `storage_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `real_name` varchar(191) DEFAULT NULL COMMENT '檔案真實的名稱',
  `name` varchar(191) DEFAULT NULL COMMENT '檔名',
  `suffix` varchar(191) DEFAULT NULL COMMENT '後綴',
  `path` varchar(191) DEFAULT NULL COMMENT '路徑',
  `type` varchar(191) DEFAULT NULL COMMENT '型別',
  `size` varchar(100) DEFAULT NULL COMMENT '大小',
  `sha2` varchar(191) DEFAULT NULL,
  `from_page_code` varchar(191) DEFAULT NULL,
  `create_by` varchar(191) DEFAULT NULL COMMENT '建立者',
  `update_by` varchar(191) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '建立日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`storage_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='本地儲存';

CREATE TABLE IF NOT EXISTS `user_log` (
  `log_id` bigint NOT NULL AUTO_INCREMENT,
  `account` varchar(191) DEFAULT NULL,
  `usr_op` varchar(191) NOT NULL,
  `verify` varchar(10) DEFAULT NULL,
  `temp_pw` varchar(191) DEFAULT NULL,
  `used` bit(1) DEFAULT b'0',
  `prev_pw_sort` bigint DEFAULT NULL,
  `prev_pw` varchar(191) DEFAULT NULL,
  `create_by` varchar(191) DEFAULT NULL,
  `update_by` varchar(191) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `__demo` (
  `__demo_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `__demo_msg_a` varchar(191) DEFAULT NULL COMMENT '測試訊息a',
  `__demo_msg_b` varchar(191) DEFAULT NULL COMMENT '測試訊息b',
  `__demo_msg_c` varchar(191) DEFAULT NULL COMMENT '測試訊息c',
  `create_by` varchar(191) DEFAULT NULL COMMENT '建立者',
  `update_by` varchar(191) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '建立日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`__demo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


create table url_mapping (
	id int not null primary key,
	full_url varchar(255) not null,
	create_time datetime not null default now()
);

create table actioncode_pgcode (
	actioncode varchar(64) not null,
	pgcode varchar(64) not null
);

CREATE TABLE IF NOT EXISTS `substitute` (
	`id` bigint auto_increment not null, 
	`main_id` bigint not null, 
	`subs_id` bigint not null, 
	`begins` datetime, 
	`ends` datetime, 
	`active` bit(1) DEFAULT b'0' not null,
  PRIMARY KEY (`id`),
  CONSTRAINT `foreign_main` FOREIGN KEY (`main_id`) REFERENCES `sys_user` (`user_id`),
  CONSTRAINT `foreign_subs` FOREIGN KEY (`subs_id`) REFERENCES `sys_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;