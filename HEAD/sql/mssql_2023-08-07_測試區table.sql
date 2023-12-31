use master;
drop database nfoi;
create database nfoi collate Chinese_Taiwan_Stroke_CI_AI;

USE [nfoi]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [zview_excel_web080209](
	[serial_no] [bigint] IDENTITY(1,1) NOT NULL,
	[b_5] [nvarchar](10) NULL,
	[c_5] [nvarchar](10) NULL,
	[d_5] [nvarchar](10) NULL,
	[e_5] [nvarchar](10) NULL,
	[f_5] [nvarchar](10) NULL,
	[g_5] [nvarchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--宣告建立 view資料表
create view [excel_web080209] as select b_5,c_5,d_5,e_5,f_5,g_5 from zview_excel_web080209
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [codedetail](
	[cid] [bigint] IDENTITY(1,1) NOT NULL,
	[ins_date] [datetime] NULL,
	[ins_usr] [nvarchar](20) NULL,
	[upd_date] [datetime] NULL,
	[upd_usr] [nvarchar](20) NULL,
	[kind] [nvarchar](64) NOT NULL,
	[code] [nvarchar](64) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[is_enabled] [bit] NULL,
	[description] [nvarchar](255) NULL,
	[sort_code] [nvarchar](10) NULL,
	[property1] [nvarchar](255) NULL,
	[property2] [nvarchar](255) NULL,
	[property3] [nvarchar](255) NULL,
	[property4] [nvarchar](255) NULL,
	[property5] [nvarchar](255) NULL,
	[property6] [nvarchar](255) NULL,
	[property7] [nvarchar](255) NULL,
	[property8] [nvarchar](255) NULL,
	[property9] [nvarchar](max) NULL,
	[child_id] [bigint] NULL,
	[parent_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uq_code] UNIQUE NONCLUSTERED 
(
	[kind] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MEMBER](
	[id] [uniqueidentifier] NOT NULL,
	[member_type_cid] [int] NOT NULL,
	[seq_no] [int] NOT NULL,
	[account] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[domain_cid] [int] NULL,
	[sex] [char](1) NOT NULL,
	[tel_no] [varchar](128) NOT NULL,
	[ext_no] [varchar](10) NULL,
	[email1] [varchar](255) NOT NULL,
	[email2] [varchar](255) NULL,
	[bank_desc] [nvarchar](50) NULL,
	[bank_account] [varchar](20) NULL,
	[del_flag] [bit] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_MEMBER_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SESSION_MEMBER](
	[id] [uniqueidentifier] NOT NULL,
	[session_cid] [int] NOT NULL,
	[seq_no] [int] NOT NULL,
	[member_tid] [uniqueidentifier] NOT NULL,
	[del_flag] [bit] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_SESSION_MEMBER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [vMember] as 
select memberType.code as type ,b.seq_no, a.name
  from Member a 
 inner join Session_Member b on b.member_tid = a.id
 inner join codedetail session on b.session_cid = session.cid 
 inner join codedetail memberType on memberType.cid = a.member_type_cid
 where convert(varchar,getdate(),23) between session.property1 and session.property2
union 
select memberType.code as type ,a.seq_no,  a.name
  from Member a 
 inner join codedetail memberType on memberType.cid = a.member_type_cid
 where memberType.code='consultant' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [__demo](
	[__demo_id] [bigint] IDENTITY(1,1) NOT NULL,
	[__demo_msg_a] [nvarchar](255) NULL,
	[__demo_msg_b] [nvarchar](255) NULL,
	[__demo_msg_c] [nvarchar](255) NULL,
	[create_by] [nvarchar](255) NULL,
	[update_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[__demo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [actioncode_pgcode](
	[actioncode] [nvarchar](64) NOT NULL,
	[pgcode] [nvarchar](64) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_COMPANY_REPLY](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[reply_result_type_cid] [int] NOT NULL,
	[result_text] [nvarchar](4000) NOT NULL,
	[replay_flow_code_cid] [int] NULL,
	[dispute_kind_cid] [int] NULL,
	[sales_channel] [nvarchar](255) NULL,
	[sales_company_name] [nvarchar](255) NULL,
	[sales_name] [nvarchar](255) NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_case_company_reply] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_CONSULTANT](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[member_tid] [uniqueidentifier] NOT NULL,
	[seq_no] [int] NULL,
	[name] [nvarchar](2550) NOT NULL,
	[issue_no] [varchar](12) NULL,
	[issue_date] [date] NULL,
	[receive_date] [date] NULL,
	[receive_no] [varchar](12) NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_case_consultant] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_DECIDE](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[close_reason1_cid] [int] NULL,
	[decide_result_cid] [int] NULL,
	[request_type_cid] [int] NULL,
	[a_amt] [decimal](18, 0) NULL,
	[b_amt] [decimal](18, 0) NULL,
	[quota_style_cid] [int] NULL,
	[appl_return_date] [date] NULL,
	[appl_return_receive_no] [varchar](12) NULL,
	[company_return_receive_no] [varchar](12) NULL,
	[quota_type_cid] [int] NULL,
	[is_cut] [bit] NULL,
	[decide_remark] [nvarchar](2000) NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_case_decide] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_DESK_EXT](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[end_time] [time](7) NOT NULL,
	[user_kind_cid] [int] NULL,
	[user_kind_remark] [nvarchar](50) NULL,
	[is_attach_id_copy] [bit] NOT NULL,
	[is_attact_agent_paper] [bit] NOT NULL,
	[is_attact_agent_copy] [bit] NOT NULL,
	[is_law] [bit] NOT NULL,
	[law_remark] [nvarchar](100) NULL,
	[is_meeting] [bit] NOT NULL,
	[meeting_remark] [nvarchar](100) NULL,
	[is_company_appeal] [bit] NOT NULL,
	[appeal_date] [date] NULL,
	[company_reply_date] [date] NULL,
	[is_appeal_same] [bit] NULL,
	[desk_calss_cid] [int] NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_DESK_EXT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_DOC_EXT](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[subject] [nvarchar](50) NULL,
	[receive_name] [nvarchar](50) NULL,
	[communication_class_cid] [int] NULL,
	[identify_type_cid] [int] NULL,
	[doc_year] [nvarchar](3) NULL,
	[doc_word] [nvarchar](3) NULL,
	[doc_no] [nvarchar](12) NULL,
	[agree_stop_date] [date] NULL,
	[is_special_extent] [bit] NOT NULL,
	[review_sign_date] [date] NULL,
	[issue_sign_date] [date] NULL,
	[issue_sign_kind_cid] [int] NULL,
	[issue_cancel_date] [date] NULL,
	[issue_sure_date] [date] NULL,
	[issue_receive_no] [varchar](12) NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_DOC_EXT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_DYNAMIC_COLUMN](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[band_code_cid] [int] NOT NULL,
	[column_adjust_cid] [int] NOT NULL,
	[from_table_name] [varchar](64) NOT NULL,
	[from_table_tid] [uniqueidentifier] NOT NULL,
	[value] [nvarchar](255) NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_DYNAMIC_COLUMN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_EFLOW](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[pcode] [varchar](10) NOT NULL,
	[process_no] [varchar](12) NOT NULL,
	[current_code] [varchar](10) NOT NULL,
	[current_workgroup_code] [varchar](10) NOT NULL,
	[current_account] [nvarchar](255) NOT NULL,
	[action_account] [nvarchar](255) NULL,
	[next_code] [varchar](10) NULL,
	[next_workgroup_code] [varchar](10) NULL,
	[next_account] [nvarchar](255) NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_EFLOW] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_EXAMINER](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[member_tid] [uniqueidentifier] NOT NULL,
	[seq_no] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[first_mail_date] [date] NULL,
	[latest_mail_date] [date] NULL,
	[print_date] [date] NULL,
	[exam_status_cid] [int] NOT NULL,
	[replay_date] [datetime] NULL,
	[result_case_suggestion_book_tid] [nvarchar](50) NULL,
	[result_desc] [nvarchar](600) NULL,
	[reason_case_suggestion_book_tid] [nvarchar](50) NULL,
	[reasion_desc] [nvarchar](600) NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_EXAMINER_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_FILE](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_no] [varchar](12) NOT NULL,
	[case_file_type_cid] [int] NOT NULL,
	[from_table_name] [varchar](50) NULL,
	[from_table_tid] [uniqueidentifier] NULL,
	[seq_no] [int] NOT NULL,
	[size] [nvarchar](100) NOT NULL,
	[sha2] [nvarchar](255) NOT NULL,
	[upload_by] [nvarchar](255) NOT NULL,
	[upload_time] [datetime] NOT NULL,
	[tool_local_storage_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_CASE_FILES] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_FLOW](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[flow_time] [datetime] NOT NULL,
	[flow_code_cid] [int] NOT NULL,
	[flow_state_cid] [int] NULL,
	[doc_no] [varchar](12) NULL,
	[doc_action_code] [varchar](10) NULL,
	[open_modify_date] [date] NULL,
	[scope_flag] [nvarchar](5) NOT NULL,
	[manager_flag] [nvarchar](1) NULL,
	[owner_account] [nvarchar](255) NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_FLOW] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_KEYWORD](
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[table_column] [varchar](64) NOT NULL,
	[seq_no] [int] NOT NULL,
	[keyword] [nvarchar](400) NOT NULL,
	[timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_CASE_KEYWORD] PRIMARY KEY CLUSTERED 
(
	[case_master_tid] ASC,
	[table_column] ASC,
	[seq_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_MAINTAIN_LOG](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[sub_table_tid] [uniqueidentifier] NULL,
	[sub_table_name] [varchar](50) NULL,
	[case_log_type_cid] [int] NOT NULL,
	[job_code] [nvarchar](50) NULL,
	[combine_values] [nvarchar](4000) NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
 CONSTRAINT [PK_CASE_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_MASTER](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_no] [varchar](12) NOT NULL,
	[case_date] [datetime] NOT NULL,
	[case_type_cid] [int] NOT NULL,
	[in_method_cid] [int] NOT NULL,
	[case_class_cid] [int] NOT NULL,
	[case_class_cnt] [bit] NULL,
	[appeal_case_no] [varchar](12) NULL,
	[appeal_case_master_tid] [uniqueidentifier] NULL,
	[contact_no] [varchar](20) NULL,
	[special_cid] [int] NULL,
	[is_appeal] [bit] NOT NULL,
	[latest_case_flow_tid] [uniqueidentifier] NULL,
	[latest_case_eflow_tid] [uniqueidentifier] NULL,
	[tree_industry_cid] [int] NULL,
	[company_tid] [uniqueidentifier] NULL,
	[dispute_kind_cid] [int] NULL,
	[close_status_cid] [int] NULL,
	[close_reason1_cid] [int] NULL,
	[close_reason2_cid] [int] NULL,
	[close_stage_cid] [int] NULL,
	[center_owner_account] [nvarchar](255) NOT NULL,
	[company_owner_account] [nvarchar](255) NULL,
	[is_cc] [bit] NULL,
	[is_close] [bit] NULL,
	[continue_status_cid] [bit] NULL,
	[pre_case_no] [varchar](12) NULL,
	[pre_case_case_master_tid] [uniqueidentifier] NULL,
	[is_free] [bit] NOT NULL,
	[case_attribute_old_cid] [int] NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
	[reparation_cid] [int] NULL,
 CONSTRAINT [PK_CASE_MASTER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_MEDIATE](
	[id] [uniqueidentifier] NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[mediate_type_cid] [int] NULL,
	[mediate_amt] [int] NULL,
	[mediate_user] [nvarchar](255) NULL,
	[mediate_reject_date] [date] NULL,
	[reject_notice_date] [nchar](10) NULL,
	[mediate_desc] [nvarchar](800) NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_MEDIATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_MEDIATE_CONTACT](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_mediate_tid] [uniqueidentifier] NOT NULL,
	[contact_date] [date] NOT NULL,
	[contact_user_text] [nvarchar](100) NOT NULL,
	[contact_type_cid] [int] NOT NULL,
	[contact_method_cid] [int] NOT NULL,
	[remark] [nvarchar](100) NULL,
	[need_mail] [bit] NOT NULL,
	[mail_time] [datetime] NULL,
	[sign_time] [datetime] NULL,
	[sign_status_cid] [int] NULL,
	[sign_memo] [nvarchar](50) NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
 CONSTRAINT [PK_CASE_MEDIATE_CONTACT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_MEET_PLAN](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[meeting_tid] [uniqueidentifier] NULL,
	[plan_type_cid] [int] NULL,
	[close_status_cid] [int] NULL,
	[close_reason1_cid] [int] NULL,
	[submit_time] [datetime] NULL,
	[cancel_time] [datetime] NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_MEET_PLAN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_MEET_PLAN_REF_DOC](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_meet_plan_tid] [uniqueidentifier] NOT NULL,
	[doc_year] [nvarchar](3) NULL,
	[doc_word] [nvarchar](3) NULL,
	[doc_no] [nvarchar](12) NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
 CONSTRAINT [PK_CASE_MEET_PLAN_REF_DOC] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_MEMO](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[memo_type_cid] [int] NOT NULL,
	[memo_text] [varchar](500) NOT NULL,
	[seq_no] [int] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_MEMO] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_OWNER_LOG](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[owner_type_cid] [int] NOT NULL,
	[owner_account] [nvarchar](255) NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
 CONSTRAINT [PK_CASE_OWNER_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_PRODUCT_ITEM](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[owner_type_cid] [int] NOT NULL,
	[seq_no] [int] NOT NULL,
	[item_type_cid] [int] NOT NULL,
	[item_kind_cid] [int] NULL,
	[item_name] [nvarchar](255) NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_PRODUCT_ITEM] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_RECEIVE_APPL](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[receive_date] [datetime] NULL,
	[receive_no] [varchar](12) NULL,
	[receive_name] [nvarchar](50) NOT NULL,
	[subject] [nvarchar](50) NULL,
	[memo] [nvarchar](800) NULL,
	[issue_date] [datetime] NULL,
	[issue_no] [nvarchar](50) NULL,
	[issue_name] [nvarchar](50) NULL,
	[create_job_code] [nvarchar](50) NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_RECEIVE_APPL] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_RECEIVE_OTHER](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[ref_other_cid] [int] NOT NULL,
	[doc_action_cid] [int] NULL,
	[receive_no] [varchar](12) NULL,
	[receive_date] [date] NULL,
	[receive_name] [varchar](50) NULL,
	[issue_no] [varchar](12) NULL,
	[issue_date] [date] NULL,
	[meet_date] [date] NULL,
	[remark1] [nvarchar](400) NULL,
	[remark2] [varchar](800) NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [nchar](10) NULL,
 CONSTRAINT [PK_CASE_RECEIVE_OTHER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_SUGGESTION](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[case_reason_desc] [nvarchar](50) NOT NULL,
	[request_desc] [nvarchar](400) NOT NULL,
	[mail_message] [nvarchar](400) NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_SUGGESTION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_SUGGESTION_BOOK](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_suggestion_tid] [uniqueidentifier] NOT NULL,
	[seq_no] [int] NULL,
	[suggestion_book_desc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CASE_SUGGESTION_BOOK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_TAG不確定](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[tagTree_cid] [int] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_TAG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_TEL_CHECK](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[eflow_2000_check_cid] [int] NOT NULL,
	[value] [nvarchar](500) NULL,
	[update_by] [nvarchar](255) NOT NULL,
	[update_time] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_TEL_EXT](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[tel_type_cid] [int] NULL,
	[export_case_master_tid] [uniqueidentifier] NULL,
	[appeal_type_cid] [int] NULL,
	[appeal_class_cid] [int] NULL,
	[is_check132_1] [bit] NOT NULL,
	[is_check132_2] [bit] NOT NULL,
	[is_check132_3] [bit] NOT NULL,
	[is_check132_4] [bit] NOT NULL,
	[is_check132_5] [bit] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_TEL_EXT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_TREE](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[tree_name] [nvarchar](50) NOT NULL,
	[node_cid] [int] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_TREE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_TREE#](
	[case_tree_tid] [uniqueidentifier] NOT NULL,
	[node_cid] [int] NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[tree_name] [nvarchar](50) NOT NULL,
	[level] [int] NOT NULL,
 CONSTRAINT [PK_CASE_TREE#] PRIMARY KEY CLUSTERED 
(
	[case_tree_tid] ASC,
	[node_cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_USER](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[case_user_kind_cid] [int] NOT NULL,
	[name] [nvarchar](30) NULL,
	[idno_type_cid] [int] NULL,
	[idno_crypt] [varchar](256) NULL,
	[sex] [nchar](10) NULL,
	[birth_date] [date] NULL,
	[age] [int] NULL,
	[phone1_no_crypt] [varchar](256) NULL,
	[phone1_ext] [varchar](10) NULL,
	[phone2_no_crypt] [varchar](256) NULL,
	[phone2_ext] [varchar](10) NULL,
	[email_crypt] [varchar](256) NULL,
	[zip_code] [varchar](6) NULL,
	[sys_city_cid] [int] NULL,
	[sys_district_cid] [int] NULL,
	[address_crypt] [varchar](256) NULL,
	[assign_time] [datetime] NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_USER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CASE_USER_AGENT](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[case_user_tid] [uniqueidentifier] NOT NULL,
	[agent_kind_cid] [int] NOT NULL,
	[agent_type_cid] [int] NULL,
	[other_remark] [nvarchar](12) NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_CASE_USER_AGENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [code_column_config](
	[column_id] [bigint] IDENTITY(1,1) NOT NULL,
	[table_name] [nvarchar](255) NULL,
	[column_name] [nvarchar](255) NULL,
	[column_type] [nvarchar](255) NULL,
	[dict_name] [nvarchar](255) NULL,
	[extra] [nvarchar](255) NULL,
	[form_show] [bit] NULL,
	[form_type] [nvarchar](255) NULL,
	[key_type] [nvarchar](255) NULL,
	[list_show] [bit] NULL,
	[not_null] [bit] NULL,
	[query_type] [nvarchar](255) NULL,
	[remark] [nvarchar](255) NULL,
	[date_annotation] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[column_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [code_gen_config](
	[config_id] [bigint] IDENTITY(1,1) NOT NULL,
	[table_name] [nvarchar](255) NULL,
	[author] [nvarchar](255) NULL,
	[cover] [bit] NULL,
	[module_name] [nvarchar](255) NULL,
	[pack] [nvarchar](255) NULL,
	[path] [nvarchar](255) NULL,
	[api_path] [nvarchar](255) NULL,
	[prefix] [nvarchar](255) NULL,
	[api_alias] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[config_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [codedetail_filter](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[pid] [bigint] NOT NULL,
	[fid] [bigint] NOT NULL,
	[option1] [nvarchar](255) NULL,
	[option2] [nvarchar](255) NULL,
	[option3] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COMPANY](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[code] [nvarchar](50) NOT NULL,
	[tax_id] [char](10) NULL,
	[name] [nvarchar](50) NOT NULL,
	[chairman] [nvarchar](50) NULL,
	[company_addr] [nvarchar](255) NULL,
	[mail_addr] [nvarchar](255) NULL,
	[company_state_cid] [int] NOT NULL,
	[enable_date] [date] NULL,
	[close_date] [date] NULL,
	[close_remark] [nvarchar](50) NULL,
	[combine_date] [date] NULL,
	[code_end_date] [date] NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_COMPANY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COMPANY_CONCAT](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[company_tid] [uniqueidentifier] NOT NULL,
	[seq_no] [int] NULL,
	[name] [nvarchar](50) NOT NULL,
	[tel_no] [varchar](20) NOT NULL,
	[tel_ext] [varchar](8) NULL,
	[fax_no] [varchar](20) NULL,
	[fax_ext] [varchar](8) NULL,
	[email] [varchar](255) NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_COMPANY_CONCAT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COMPANY_INDUSTRY](
	[id] [uniqueidentifier] NOT NULL,
	[company_tid] [uniqueidentifier] NOT NULL,
	[seq_no] [int] NOT NULL,
	[industry_cid] [int] NOT NULL,
	[agent_company_industry_tid] [uniqueidentifier] NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_COMPANY_INDUSTRY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COMPANY_INDUSTRY#](
	[industry_cid] [int] NOT NULL,
	[company_tid] [uniqueidentifier] NOT NULL,
	[company_industry_tid] [uniqueidentifier] NOT NULL,
	[seq_no] [int] NULL,
 CONSTRAINT [PK_COMPANY_INDUSTRY#] PRIMARY KEY CLUSTERED 
(
	[industry_cid] ASC,
	[company_tid] ASC,
	[company_industry_tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COMPANY_INDUSTRY_CONTRACT](
	[id] [uniqueidentifier] NOT NULL,
	[company_industry_tid] [uniqueidentifier] NOT NULL,
	[year] [int] NOT NULL,
	[month] [int] NULL,
	[contract_type_cid] [int] NOT NULL,
	[contract_num] [int] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_company_industry_contracts_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COMPANY_INDUSTRY_SYS_USER](
	[id] [uniqueidentifier] NOT NULL,
	[company_industry_tid] [uniqueidentifier] NOT NULL,
	[sys_user_tid] [bigint] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
 CONSTRAINT [PK_COMPANY_INDUSTRY_SYS_USR] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DELETE_LOG](
	[table_name] [nvarchar](64) NOT NULL,
	[table_id] [uniqueidentifier] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
 CONSTRAINT [PK_DELETE_LOG] PRIMARY KEY CLUSTERED 
(
	[table_id] ASC,
	[table_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EFLOW](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[code] [varchar](20) NOT NULL,
	[name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_EFLOW] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EFLOW_MAP](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[eflow_tid] [uniqueidentifier] NOT NULL,
	[name] [varchar](32) NOT NULL,
	[page_code] [varchar](64) NULL,
	[current_code] [varchar](10) NOT NULL,
	[current_workgroup_code] [varchar](10) NOT NULL,
	[next_code] [varchar](10) NOT NULL,
	[next_workgroup_code] [varchar](10) NOT NULL,
	[action] [varchar](1) NOT NULL,
	[condition] [varchar](16) NULL,
	[case_flow_code] [varchar](5) NULL,
 CONSTRAINT [PK_EFLOW_MAP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U1_EFLOW_MAP] UNIQUE NONCLUSTERED 
(
	[eflow_tid] ASC,
	[current_code] ASC,
	[next_code] ASC,
	[action] ASC,
	[condition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [extra_info](
	[tid] [bigint] IDENTITY(1,1) NOT NULL,
	[ins_date] [datetime] NOT NULL,
	[ins_usr] [nvarchar](20) NOT NULL,
	[upd_date] [datetime] NULL,
	[upd_usr] [nvarchar](20) NULL,
	[gui_tid] [bigint] NOT NULL,
	[seq_no] [int] NOT NULL,
	[data_key] [nvarchar](64) NOT NULL,
	[data_value] [nvarchar](64) NOT NULL,
	[data_type] [nvarchar](64) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [gui](
	[tid] [bigint] IDENTITY(1,1) NOT NULL,
	[ins_date] [datetime] NOT NULL,
	[ins_usr] [nvarchar](20) NOT NULL,
	[upd_date] [datetime] NULL,
	[upd_usr] [nvarchar](20) NULL,
	[income_unit_tid] [bigint] NOT NULL,
	[income_unit_code] [nvarchar](36) NOT NULL,
	[income_date] [datetime] NULL,
	[check_no] [nvarchar](64) NULL,
	[gui_no] [nvarchar](10) NOT NULL,
	[rand_code] [nvarchar](10) NOT NULL,
	[gui_type] [nvarchar](32) NOT NULL,
	[carrier_code] [nvarchar](2) NULL,
	[job_code] [nvarchar](32) NOT NULL,
	[cancel_date] [datetime] NULL,
	[cancel_reason] [nvarchar](64) NULL,
	[cancel_usr] [nvarchar](20) NULL,
	[print_cnt] [int] NULL,
	[print_date] [int] NULL,
	[print_sub] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [html_content](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[html_doc_id] [bigint] NULL,
	[content] [nvarchar](max) NULL,
	[order_no] [int] NULL,
 CONSTRAINT [PK__html_con__3213E83F5C860A6C] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [html_doc](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](400) NULL,
	[memo] [nvarchar](400) NULL,
	[upd_date] [datetime] NULL,
	[upd_usr] [nvarchar](20) NULL,
	[ins_date] [datetime] NOT NULL,
	[ins_usr] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK__html_doc__3213E83F3324054D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [html_helper](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[menu_name] [nvarchar](255) NOT NULL,
	[html_doc_id] [bigint] NULL,
	[begin_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[window_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [html_post](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[html_doc_id] [bigint] NULL,
	[begin_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[display] [nvarchar](32) NULL,
	[pin] [bit] NULL,
	[title_color] [nvarchar](45) NULL,
	[bold] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [income_unit](
	[tid] [bigint] IDENTITY(1,1) NOT NULL,
	[ins_date] [datetime] NOT NULL,
	[ins_usr] [nvarchar](20) NOT NULL,
	[upd_date] [datetime] NULL,
	[upd_usr] [nvarchar](20) NULL,
	[code] [nvarchar](32) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[is_enabled] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [income_unit_word](
	[tid] [bigint] IDENTITY(1,1) NOT NULL,
	[ins_date] [datetime] NOT NULL,
	[ins_usr] [nvarchar](20) NOT NULL,
	[upd_date] [datetime] NULL,
	[upd_usr] [nvarchar](20) NULL,
	[word_config_tid] [bigint] NOT NULL,
	[income_unit_tid] [bigint] NOT NULL,
	[seq_no] [int] NOT NULL,
	[unit_start_no] [int] NOT NULL,
	[unit_end_no] [int] NOT NULL,
	[next_no] [int] NOT NULL,
	[is_enabled] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [item](
	[tid] [bigint] IDENTITY(1,1) NOT NULL,
	[ins_date] [datetime] NOT NULL,
	[ins_usr] [nvarchar](20) NOT NULL,
	[upd_date] [datetime] NULL,
	[upd_usr] [nvarchar](20) NULL,
	[gui_tid] [bigint] NOT NULL,
	[seq_no] [int] NOT NULL,
	[code] [nvarchar](64) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[quantity] [decimal](12, 2) NOT NULL,
	[price] [decimal](12, 2) NOT NULL,
	[total] [decimal](12, 2) NOT NULL,
	[is_gui] [nvarchar](1) NOT NULL,
	[taxType] [nvarchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MEETING](
	[id] [uniqueidentifier] NOT NULL,
	[session] [int] NOT NULL,
	[meet_no] [int] NOT NULL,
	[meet_date] [datetime] NOT NULL,
	[limit_date] [datetime] NOT NULL,
	[meet_room] [nvarchar](50) NOT NULL,
	[chairman] [nvarchar](50) NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_Meeting] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MEETING_DECIDE](
	[id] [uniqueidentifier] NOT NULL,
	[case_master_tid] [uniqueidentifier] NOT NULL,
	[meeting_tid] [uniqueidentifier] NULL,
	[close_status_cid] [int] NULL,
	[close_reason1_cid] [int] NULL,
	[meeting_result_desc] [nvarchar](50) NULL,
	[cancel_time] [datetime] NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_MEETING_DECIDE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MEETING_FILE](
	[id] [uniqueidentifier] NOT NULL,
	[meeting_tid] [uniqueidentifier] NOT NULL,
	[meeting_file_type_cid] [int] NOT NULL,
	[meeting_file_display_cid] [int] NOT NULL,
	[size] [nvarchar](100) NOT NULL,
	[sha2] [nvarchar](255) NOT NULL,
	[upload_by] [nvarchar](255) NOT NULL,
	[upload_time] [datetime] NOT NULL,
	[tool_local_storage_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_MEETING_FILES] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MEETING_MEMBER](
	[id] [uniqueidentifier] NOT NULL,
	[meeting_tid] [uniqueidentifier] NOT NULL,
	[member_tid] [uniqueidentifier] NOT NULL,
	[is_join] [bit] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_MEETING_MEMBER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mnt_app](
	[app_id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[upload_path] [nvarchar](255) NULL,
	[deploy_path] [nvarchar](255) NULL,
	[backup_path] [nvarchar](255) NULL,
	[port] [int] NULL,
	[start_script] [nvarchar](4000) NULL,
	[deploy_script] [nvarchar](4000) NULL,
	[create_by] [nvarchar](255) NULL,
	[update_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[app_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mnt_database](
	[db_id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[jdbc_url] [nvarchar](255) NOT NULL,
	[user_name] [nvarchar](255) NOT NULL,
	[pwd] [nvarchar](255) NOT NULL,
	[create_by] [nvarchar](255) NULL,
	[update_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mnt_deploy](
	[deploy_id] [bigint] IDENTITY(1,1) NOT NULL,
	[app_id] [bigint] NULL,
	[create_by] [nvarchar](255) NULL,
	[update_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[deploy_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mnt_deploy_history](
	[history_id] [nvarchar](50) NOT NULL,
	[app_name] [nvarchar](255) NOT NULL,
	[deploy_date] [datetime] NOT NULL,
	[deploy_user] [nvarchar](50) NOT NULL,
	[ip] [nvarchar](20) NOT NULL,
	[deploy_id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mnt_deploy_server](
	[deploy_id] [bigint] NOT NULL,
	[server_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mnt_server](
	[server_id] [bigint] IDENTITY(1,1) NOT NULL,
	[account] [nvarchar](50) NULL,
	[ip] [nvarchar](20) NULL,
	[name] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[port] [int] NULL,
	[create_by] [nvarchar](255) NULL,
	[update_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[server_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [payment](
	[tid] [bigint] IDENTITY(1,1) NOT NULL,
	[ins_date] [datetime] NOT NULL,
	[ins_usr] [nvarchar](20) NOT NULL,
	[upd_date] [datetime] NULL,
	[upd_usr] [nvarchar](20) NULL,
	[gui_tid] [bigint] NOT NULL,
	[seq_no] [int] NOT NULL,
	[code] [nvarchar](64) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[amount] [decimal](12, 2) NOT NULL,
	[is_gui] [nvarchar](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SERIAL_NO_RECORD](
	[type] [varchar](10) NOT NULL,
	[label] [varchar](10) NOT NULL,
	[next_no] [int] NOT NULL,
 CONSTRAINT [PK_SERIAL_NO_RECORD] PRIMARY KEY CLUSTERED 
(
	[type] ASC,
	[label] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SESSION_MEMBER_AVOID](
	[id] [uniqueidentifier] NOT NULL,
	[session_member_tid] [uniqueidentifier] NOT NULL,
	[company_tid] [uniqueidentifier] NOT NULL,
	[create_by] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
 CONSTRAINT [PK_SESSION_MEMBER_AVOID] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [substitute](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[main_id] [bigint] NOT NULL,
	[subs_id] [bigint] NOT NULL,
	[begins] [datetime] NULL,
	[ends] [datetime] NULL,
	[active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_attachment](
	[attachment_id] [bigint] IDENTITY(1,1) NOT NULL,
	[create_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
	[file_name] [nvarchar](255) NULL,
	[file_path] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[attachment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_contacts](
	[contacts_id] [bigint] IDENTITY(1,1) NOT NULL,
	[create_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
	[address] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[contacts_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_dept](
	[dept_id] [bigint] IDENTITY(1,1) NOT NULL,
	[pid] [bigint] NULL,
	[sub_count] [int] NULL,
	[name] [nvarchar](255) NOT NULL,
	[dept_sort] [int] NULL,
	[enabled] [bit] NOT NULL,
	[create_by] [nvarchar](255) NULL,
	[update_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[dept_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_dict](
	[dict_id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[description] [nvarchar](255) NULL,
	[create_by] [nvarchar](255) NULL,
	[update_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[dict_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_dict_detail](
	[detail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[dict_id] [bigint] NULL,
	[label] [nvarchar](255) NOT NULL,
	[value] [nvarchar](255) NOT NULL,
	[dict_sort] [int] NULL,
	[create_by] [nvarchar](255) NULL,
	[update_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_email](
	[email_id] [bigint] IDENTITY(1,1) NOT NULL,
	[create_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_by] [nvarchar](255) NULL,
	[update_time] [datetime] NULL,
	[child] [bigint] NULL,
	[content] [nvarchar](255) NULL,
	[from_api] [nvarchar](255) NULL,
	[status] [nvarchar](20) NULL,
	[subject] [nvarchar](255) NULL,
	[sended_time] [datetime] NULL,
	[failed_report_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[email_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_email_attachment](
	[email_id] [bigint] NOT NULL,
	[attachment_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[attachment_id] ASC,
	[email_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_email_contacts_bcc](
	[email_id] [bigint] NOT NULL,
	[contacts_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[contacts_id] ASC,
	[email_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_email_contacts_cc](
	[email_id] [bigint] NOT NULL,
	[contacts_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[contacts_id] ASC,
	[email_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_email_contacts_to](
	[email_id] [bigint] NOT NULL,
	[contacts_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[contacts_id] ASC,
	[email_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_job](
	[job_id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[enabled] [bit] NOT NULL,
	[job_sort] [int] NULL,
	[create_by] [nvarchar](255) NULL,
	[update_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uniq_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_log](
	[log_id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](255) NULL,
	[log_type] [nvarchar](255) NULL,
	[method] [nvarchar](255) NULL,
	[params] [nvarchar](max) NULL,
	[request_ip] [nvarchar](255) NULL,
	[time] [bigint] NULL,
	[account] [nvarchar](255) NULL,
	[browser] [nvarchar](255) NULL,
	[exception_detail] [nvarchar](max) NULL,
	[create_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_menu](
	[menu_id] [bigint] IDENTITY(1,1) NOT NULL,
	[pid] [bigint] NULL,
	[sub_count] [int] NULL,
	[type] [int] NULL,
	[title] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[component] [nvarchar](255) NULL,
	[menu_sort] [int] NULL,
	[icon] [nvarchar](255) NULL,
	[path] [nvarchar](255) NULL,
	[i_frame] [bit] NULL,
	[cache] [bit] NULL,
	[hidden] [bit] NULL,
	[permission] [nvarchar](255) NULL,
	[create_by] [nvarchar](255) NULL,
	[update_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_quartz_job](
	[job_id] [bigint] IDENTITY(1,1) NOT NULL,
	[bean_name] [nvarchar](255) NULL,
	[cron_expression] [nvarchar](255) NULL,
	[is_pause] [bit] NULL,
	[job_name] [nvarchar](255) NULL,
	[method_name] [nvarchar](255) NULL,
	[params] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[person_in_charge] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[sub_task] [nvarchar](100) NULL,
	[pause_after_failure] [bit] NULL,
	[create_by] [nvarchar](255) NULL,
	[update_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_quartz_log](
	[log_id] [bigint] IDENTITY(1,1) NOT NULL,
	[bean_name] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[cron_expression] [nvarchar](255) NULL,
	[exception_detail] [nvarchar](max) NULL,
	[is_success] [bit] NULL,
	[job_name] [nvarchar](255) NULL,
	[method_name] [nvarchar](255) NULL,
	[params] [nvarchar](255) NULL,
	[time] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_role](
	[role_id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[level] [int] NULL,
	[description] [nvarchar](255) NULL,
	[data_scope] [nvarchar](255) NULL,
	[create_by] [nvarchar](255) NULL,
	[update_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uniq_name3] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_roles_depts](
	[role_id] [bigint] NOT NULL,
	[dept_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_roles_menus](
	[menu_id] [bigint] NOT NULL,
	[role_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_user](
	[user_id] [bigint] IDENTITY(1,1) NOT NULL,
	[dept_id] [bigint] NULL,
	[account] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[nickname] [nvarchar](2) NULL,
	[gender] [nvarchar](2) NULL,
	[phone] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[avatar_name] [nvarchar](255) NULL,
	[avatar_path] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[is_admin] [bit] NULL,
	[enabled] [bigint] NULL,
	[err_flag] [nvarchar](10) NULL,
	[latest_login_time] [datetime] NULL,
	[err_count] [bigint] NULL,
	[create_by] [nvarchar](255) NULL,
	[update_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [account] UNIQUE NONCLUSTERED 
(
	[account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uniq_username] UNIQUE NONCLUSTERED 
(
	[account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_users_jobs](
	[user_id] [bigint] NOT NULL,
	[job_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_users_roles](
	[user_id] [bigint] NOT NULL,
	[role_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tool_email_config](
	[config_id] [bigint] NOT NULL,
	[from_user] [nvarchar](255) NULL,
	[host] [nvarchar](255) NULL,
	[pass] [nvarchar](255) NULL,
	[port] [nvarchar](255) NULL,
	[user] [nvarchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tool_local_storage](
	[storage_id] [bigint] IDENTITY(1,1) NOT NULL,
	[storage_uuid] [uniqueidentifier] NULL,
	[real_name] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[suffix] [nvarchar](255) NULL,
	[path] [nvarchar](255) NULL,
	[type] [nvarchar](255) NULL,
	[size] [nvarchar](100) NULL,
	[sha2] [nvarchar](255) NULL,
	[from_page_code] [nvarchar](255) NULL,
	[create_by] [nvarchar](255) NULL,
	[update_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK__tool_loc__AB53044AC7B30ED6] PRIMARY KEY CLUSTERED 
(
	[storage_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [url_mapping](
	[id] [int] NOT NULL,
	[full_url] [nvarchar](255) NOT NULL,
	[create_time] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [user_log](
	[log_id] [bigint] IDENTITY(1,1) NOT NULL,
	[account] [nvarchar](255) NULL,
	[usr_op] [nvarchar](255) NOT NULL,
	[verify] [nvarchar](10) NULL,
	[temp_pw] [nvarchar](255) NULL,
	[used] [bit] NULL,
	[prev_pw_sort] [bigint] NULL,
	[prev_pw] [nvarchar](255) NULL,
	[create_by] [nvarchar](255) NULL,
	[update_by] [nvarchar](255) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [__demo] ADD  DEFAULT (NULL) FOR [__demo_msg_a]
GO
ALTER TABLE [__demo] ADD  DEFAULT (NULL) FOR [__demo_msg_b]
GO
ALTER TABLE [__demo] ADD  DEFAULT (NULL) FOR [__demo_msg_c]
GO
ALTER TABLE [__demo] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [__demo] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [__demo] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [__demo] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [CASE_COMPANY_REPLY] ADD  CONSTRAINT [DF_case_company_reply_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_CONSULTANT] ADD  CONSTRAINT [DF_case_consultant_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_DECIDE] ADD  CONSTRAINT [DF_case_decide_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_DESK_EXT] ADD  CONSTRAINT [DF_CASE_DESK_EXT_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_DESK_EXT] ADD  CONSTRAINT [DF_Table_1_have_attach_id_copy]  DEFAULT ((0)) FOR [is_attach_id_copy]
GO
ALTER TABLE [CASE_DESK_EXT] ADD  CONSTRAINT [DF_Table_1_have_attact_agent_paper]  DEFAULT ((0)) FOR [is_attact_agent_paper]
GO
ALTER TABLE [CASE_DESK_EXT] ADD  CONSTRAINT [DF_Table_1_have_attact_agent_copy]  DEFAULT ((0)) FOR [is_attact_agent_copy]
GO
ALTER TABLE [CASE_DESK_EXT] ADD  CONSTRAINT [DF_Table_1_have_appel]  DEFAULT ((0)) FOR [is_law]
GO
ALTER TABLE [CASE_DESK_EXT] ADD  CONSTRAINT [DF_Table_1_have_mediate]  DEFAULT ((0)) FOR [is_meeting]
GO
ALTER TABLE [CASE_DESK_EXT] ADD  CONSTRAINT [DF_Table_1_have_appleal]  DEFAULT ((0)) FOR [is_company_appeal]
GO
ALTER TABLE [CASE_DESK_EXT] ADD  CONSTRAINT [DF_CASE_DESK_EXT_is_appleal_same]  DEFAULT ((0)) FOR [is_appeal_same]
GO
ALTER TABLE [CASE_DOC_EXT] ADD  CONSTRAINT [DF_CASE_DOC_EXT_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_DYNAMIC_COLUMN] ADD  CONSTRAINT [DF_Table_2_ID]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_EFLOW] ADD  CONSTRAINT [DF_CASE_EFLOW_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_EXAMINER] ADD  CONSTRAINT [DF_CASE_EXAMINER_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_FILE] ADD  CONSTRAINT [DF_CASE_FILES_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_FLOW] ADD  CONSTRAINT [DF_CASE_FLOW_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_MAINTAIN_LOG] ADD  CONSTRAINT [DF_CASE_LOG_1]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_MASTER] ADD  CONSTRAINT [DF_CASE_MASTER_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_MASTER] ADD  CONSTRAINT [DF_CASE_MASTER_is_appeal]  DEFAULT ((0)) FOR [is_appeal]
GO
ALTER TABLE [CASE_MASTER] ADD  CONSTRAINT [DF_CASE_MASTER_is_cc]  DEFAULT ((0)) FOR [is_cc]
GO
ALTER TABLE [CASE_MASTER] ADD  CONSTRAINT [DF_CASE_MASTER_is_close]  DEFAULT ((0)) FOR [is_close]
GO
ALTER TABLE [CASE_MASTER] ADD  CONSTRAINT [DF_CASE_MASTER_is_free]  DEFAULT ((0)) FOR [is_free]
GO
ALTER TABLE [CASE_MEDIATE_CONTACT] ADD  CONSTRAINT [DF_CASE_MEDIATE_CONTRACT_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_MEDIATE_CONTACT] ADD  CONSTRAINT [DF_CASE_MEDIATE_CONTRACT_need_mail]  DEFAULT ((0)) FOR [need_mail]
GO
ALTER TABLE [CASE_MEET_PLAN] ADD  CONSTRAINT [DF_CASE_MEET_PLAN_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_MEET_PLAN_REF_DOC] ADD  CONSTRAINT [DF_CASE_MEET_PLAN_REF_DOC_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_MEMO] ADD  CONSTRAINT [DF_CASE_MEMO_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_OWNER_LOG] ADD  CONSTRAINT [DF_CASE_OWNER_LOG_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_PRODUCT_ITEM] ADD  CONSTRAINT [DF_CASE_ITEM_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_RECEIVE_APPL] ADD  CONSTRAINT [DF_CASE_RECEIVE_APPL_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_RECEIVE_OTHER] ADD  CONSTRAINT [DF_CASE_RECEIVE_OTHER_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_SUGGESTION] ADD  CONSTRAINT [DF_CASE_SUGGESTION_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_SUGGESTION_BOOK] ADD  CONSTRAINT [DF_CASE_SUGGESTION_BOOK_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_TAG不確定] ADD  CONSTRAINT [DF_CASE_TAG_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_TEL_CHECK] ADD  CONSTRAINT [DF_CASE_TEL_CHECK_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_TEL_EXT] ADD  CONSTRAINT [DF_CASE_TEL_EXT_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_TEL_EXT] ADD  CONSTRAINT [DF_CASE_TEL_EXT_is_check132_1]  DEFAULT ((0)) FOR [is_check132_1]
GO
ALTER TABLE [CASE_TEL_EXT] ADD  CONSTRAINT [DF_CASE_TEL_EXT_is_check132_2]  DEFAULT ((0)) FOR [is_check132_2]
GO
ALTER TABLE [CASE_TEL_EXT] ADD  CONSTRAINT [DF_CASE_TEL_EXT_is_check132_3]  DEFAULT ((0)) FOR [is_check132_3]
GO
ALTER TABLE [CASE_TEL_EXT] ADD  CONSTRAINT [DF_CASE_TEL_EXT_is_check132_4]  DEFAULT ((0)) FOR [is_check132_4]
GO
ALTER TABLE [CASE_TEL_EXT] ADD  CONSTRAINT [DF_CASE_TEL_EXT_is_check132_5]  DEFAULT ((0)) FOR [is_check132_5]
GO
ALTER TABLE [CASE_TREE] ADD  CONSTRAINT [DF_CASE_TREE_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_TREE#] ADD  CONSTRAINT [DF_Table_1_id]  DEFAULT (newid()) FOR [case_tree_tid]
GO
ALTER TABLE [CASE_USER] ADD  CONSTRAINT [DF_CASE_USER_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [CASE_USER_AGENT] ADD  CONSTRAINT [DF_CASE_USER_AGENT_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [code_column_config] ADD  DEFAULT (NULL) FOR [table_name]
GO
ALTER TABLE [code_column_config] ADD  DEFAULT (NULL) FOR [column_name]
GO
ALTER TABLE [code_column_config] ADD  DEFAULT (NULL) FOR [column_type]
GO
ALTER TABLE [code_column_config] ADD  DEFAULT (NULL) FOR [dict_name]
GO
ALTER TABLE [code_column_config] ADD  DEFAULT (NULL) FOR [extra]
GO
ALTER TABLE [code_column_config] ADD  DEFAULT (NULL) FOR [form_show]
GO
ALTER TABLE [code_column_config] ADD  DEFAULT (NULL) FOR [form_type]
GO
ALTER TABLE [code_column_config] ADD  DEFAULT (NULL) FOR [key_type]
GO
ALTER TABLE [code_column_config] ADD  DEFAULT (NULL) FOR [list_show]
GO
ALTER TABLE [code_column_config] ADD  DEFAULT (NULL) FOR [not_null]
GO
ALTER TABLE [code_column_config] ADD  DEFAULT (NULL) FOR [query_type]
GO
ALTER TABLE [code_column_config] ADD  DEFAULT (NULL) FOR [remark]
GO
ALTER TABLE [code_column_config] ADD  DEFAULT (NULL) FOR [date_annotation]
GO
ALTER TABLE [code_gen_config] ADD  DEFAULT (NULL) FOR [table_name]
GO
ALTER TABLE [code_gen_config] ADD  DEFAULT (NULL) FOR [author]
GO
ALTER TABLE [code_gen_config] ADD  DEFAULT (NULL) FOR [cover]
GO
ALTER TABLE [code_gen_config] ADD  DEFAULT (NULL) FOR [module_name]
GO
ALTER TABLE [code_gen_config] ADD  DEFAULT (NULL) FOR [pack]
GO
ALTER TABLE [code_gen_config] ADD  DEFAULT (NULL) FOR [path]
GO
ALTER TABLE [code_gen_config] ADD  DEFAULT (NULL) FOR [api_path]
GO
ALTER TABLE [code_gen_config] ADD  DEFAULT (NULL) FOR [prefix]
GO
ALTER TABLE [code_gen_config] ADD  DEFAULT (NULL) FOR [api_alias]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (NULL) FOR [ins_date]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (NULL) FOR [ins_usr]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (NULL) FOR [upd_date]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (NULL) FOR [upd_usr]
GO
ALTER TABLE [codedetail] ADD  DEFAULT ((1)) FOR [is_enabled]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (N'(未使用)') FOR [description]
GO
ALTER TABLE [codedetail] ADD  DEFAULT ('000') FOR [sort_code]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (N'(未使用)') FOR [property1]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (N'(未使用)') FOR [property2]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (N'(未使用)') FOR [property3]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (N'(未使用)') FOR [property4]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (N'(未使用)') FOR [property5]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (N'(未使用)') FOR [property6]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (N'(未使用)') FOR [property7]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (N'(未使用)') FOR [property8]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (N'(未使用)') FOR [property9]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (NULL) FOR [child_id]
GO
ALTER TABLE [codedetail] ADD  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [codedetail_filter] ADD  DEFAULT (N'(未使用)') FOR [option1]
GO
ALTER TABLE [codedetail_filter] ADD  DEFAULT (N'(未使用)') FOR [option2]
GO
ALTER TABLE [codedetail_filter] ADD  DEFAULT (N'(未使用)') FOR [option3]
GO
ALTER TABLE [COMPANY] ADD  CONSTRAINT [DF_COMPANY_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [COMPANY_CONCAT] ADD  CONSTRAINT [DF_COMPANY_CONCAT_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [EFLOW] ADD  CONSTRAINT [DF_EFLOW_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [EFLOW_MAP] ADD  CONSTRAINT [DF_EFLOW_MAP_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [extra_info] ADD  DEFAULT (NULL) FOR [upd_date]
GO
ALTER TABLE [extra_info] ADD  DEFAULT (NULL) FOR [upd_usr]
GO
ALTER TABLE [gui] ADD  DEFAULT (NULL) FOR [upd_date]
GO
ALTER TABLE [gui] ADD  DEFAULT (NULL) FOR [upd_usr]
GO
ALTER TABLE [gui] ADD  DEFAULT (NULL) FOR [income_date]
GO
ALTER TABLE [gui] ADD  DEFAULT (NULL) FOR [check_no]
GO
ALTER TABLE [gui] ADD  DEFAULT (NULL) FOR [carrier_code]
GO
ALTER TABLE [gui] ADD  DEFAULT (NULL) FOR [cancel_date]
GO
ALTER TABLE [gui] ADD  DEFAULT (NULL) FOR [cancel_reason]
GO
ALTER TABLE [gui] ADD  DEFAULT (NULL) FOR [cancel_usr]
GO
ALTER TABLE [gui] ADD  DEFAULT (NULL) FOR [print_cnt]
GO
ALTER TABLE [gui] ADD  DEFAULT (NULL) FOR [print_date]
GO
ALTER TABLE [gui] ADD  DEFAULT (NULL) FOR [print_sub]
GO
ALTER TABLE [html_content] ADD  CONSTRAINT [DF__html_cont__html___123EB7A3]  DEFAULT (NULL) FOR [html_doc_id]
GO
ALTER TABLE [html_content] ADD  CONSTRAINT [DF__html_cont__conte__1332DBDC]  DEFAULT (NULL) FOR [content]
GO
ALTER TABLE [html_content] ADD  CONSTRAINT [DF__html_cont__order__14270015]  DEFAULT (NULL) FOR [order_no]
GO
ALTER TABLE [html_doc] ADD  CONSTRAINT [DF__html_doc__title__0D7A0286]  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [html_doc] ADD  CONSTRAINT [DF__html_doc__upd_da__0E6E26BF]  DEFAULT (NULL) FOR [upd_date]
GO
ALTER TABLE [html_doc] ADD  CONSTRAINT [DF__html_doc__upd_us__0F624AF8]  DEFAULT (NULL) FOR [upd_usr]
GO
ALTER TABLE [html_helper] ADD  DEFAULT (NULL) FOR [html_doc_id]
GO
ALTER TABLE [html_helper] ADD  DEFAULT (NULL) FOR [begin_date]
GO
ALTER TABLE [html_helper] ADD  DEFAULT (NULL) FOR [end_date]
GO
ALTER TABLE [html_helper] ADD  DEFAULT ('1080') FOR [window_size]
GO
ALTER TABLE [html_post] ADD  DEFAULT (NULL) FOR [html_doc_id]
GO
ALTER TABLE [html_post] ADD  DEFAULT (NULL) FOR [begin_date]
GO
ALTER TABLE [html_post] ADD  DEFAULT (NULL) FOR [end_date]
GO
ALTER TABLE [html_post] ADD  DEFAULT (NULL) FOR [display]
GO
ALTER TABLE [html_post] ADD  DEFAULT ((0)) FOR [pin]
GO
ALTER TABLE [html_post] ADD  DEFAULT ('#000000') FOR [title_color]
GO
ALTER TABLE [html_post] ADD  DEFAULT ((0)) FOR [bold]
GO
ALTER TABLE [income_unit] ADD  DEFAULT (NULL) FOR [upd_date]
GO
ALTER TABLE [income_unit] ADD  DEFAULT (NULL) FOR [upd_usr]
GO
ALTER TABLE [income_unit_word] ADD  DEFAULT (NULL) FOR [upd_date]
GO
ALTER TABLE [income_unit_word] ADD  DEFAULT (NULL) FOR [upd_usr]
GO
ALTER TABLE [item] ADD  DEFAULT (NULL) FOR [upd_date]
GO
ALTER TABLE [item] ADD  DEFAULT (NULL) FOR [upd_usr]
GO
ALTER TABLE [MEETING_DECIDE] ADD  CONSTRAINT [DF_MEETING_DECIDE_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [MEETING_FILE] ADD  CONSTRAINT [DF_MEETING_FILES_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [MEETING_MEMBER] ADD  CONSTRAINT [DF_MEETING_MEMBER_is_join]  DEFAULT ((1)) FOR [is_join]
GO
ALTER TABLE [mnt_app] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [mnt_app] ADD  DEFAULT (NULL) FOR [upload_path]
GO
ALTER TABLE [mnt_app] ADD  DEFAULT (NULL) FOR [deploy_path]
GO
ALTER TABLE [mnt_app] ADD  DEFAULT (NULL) FOR [backup_path]
GO
ALTER TABLE [mnt_app] ADD  DEFAULT (NULL) FOR [port]
GO
ALTER TABLE [mnt_app] ADD  DEFAULT (NULL) FOR [start_script]
GO
ALTER TABLE [mnt_app] ADD  DEFAULT (NULL) FOR [deploy_script]
GO
ALTER TABLE [mnt_app] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [mnt_app] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [mnt_app] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [mnt_app] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [mnt_database] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [mnt_database] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [mnt_database] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [mnt_database] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [mnt_deploy] ADD  DEFAULT (NULL) FOR [app_id]
GO
ALTER TABLE [mnt_deploy] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [mnt_deploy] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [mnt_deploy] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [mnt_deploy] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [mnt_deploy_history] ADD  DEFAULT (NULL) FOR [deploy_id]
GO
ALTER TABLE [mnt_server] ADD  DEFAULT (NULL) FOR [account]
GO
ALTER TABLE [mnt_server] ADD  DEFAULT (NULL) FOR [ip]
GO
ALTER TABLE [mnt_server] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [mnt_server] ADD  DEFAULT (NULL) FOR [password]
GO
ALTER TABLE [mnt_server] ADD  DEFAULT (NULL) FOR [port]
GO
ALTER TABLE [mnt_server] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [mnt_server] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [mnt_server] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [mnt_server] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [payment] ADD  DEFAULT (NULL) FOR [upd_date]
GO
ALTER TABLE [payment] ADD  DEFAULT (NULL) FOR [upd_usr]
GO
ALTER TABLE [substitute] ADD  DEFAULT ((0)) FOR [active]
GO
ALTER TABLE [sys_attachment] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [sys_attachment] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [sys_attachment] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [sys_attachment] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [sys_attachment] ADD  DEFAULT (NULL) FOR [file_name]
GO
ALTER TABLE [sys_attachment] ADD  DEFAULT (NULL) FOR [file_path]
GO
ALTER TABLE [sys_contacts] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [sys_contacts] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [sys_contacts] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [sys_contacts] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [sys_contacts] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [sys_dept] ADD  DEFAULT (NULL) FOR [pid]
GO
ALTER TABLE [sys_dept] ADD  DEFAULT ('0') FOR [sub_count]
GO
ALTER TABLE [sys_dept] ADD  DEFAULT ('999') FOR [dept_sort]
GO
ALTER TABLE [sys_dept] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [sys_dept] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [sys_dept] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [sys_dept] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [sys_dict] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [sys_dict] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [sys_dict] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [sys_dict] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [sys_dict] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [sys_dict_detail] ADD  DEFAULT (NULL) FOR [dict_id]
GO
ALTER TABLE [sys_dict_detail] ADD  DEFAULT (NULL) FOR [dict_sort]
GO
ALTER TABLE [sys_dict_detail] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [sys_dict_detail] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [sys_dict_detail] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [sys_dict_detail] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [sys_email] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [sys_email] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [sys_email] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [sys_email] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [sys_email] ADD  DEFAULT (NULL) FOR [child]
GO
ALTER TABLE [sys_email] ADD  DEFAULT (NULL) FOR [content]
GO
ALTER TABLE [sys_email] ADD  DEFAULT (NULL) FOR [from_api]
GO
ALTER TABLE [sys_email] ADD  DEFAULT (NULL) FOR [status]
GO
ALTER TABLE [sys_email] ADD  DEFAULT (NULL) FOR [subject]
GO
ALTER TABLE [sys_email] ADD  DEFAULT (NULL) FOR [sended_time]
GO
ALTER TABLE [sys_email] ADD  DEFAULT (NULL) FOR [failed_report_time]
GO
ALTER TABLE [sys_job] ADD  DEFAULT (NULL) FOR [job_sort]
GO
ALTER TABLE [sys_job] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [sys_job] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [sys_job] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [sys_job] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [sys_log] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [sys_log] ADD  DEFAULT (NULL) FOR [log_type]
GO
ALTER TABLE [sys_log] ADD  DEFAULT (NULL) FOR [method]
GO
ALTER TABLE [sys_log] ADD  DEFAULT (NULL) FOR [request_ip]
GO
ALTER TABLE [sys_log] ADD  DEFAULT (NULL) FOR [time]
GO
ALTER TABLE [sys_log] ADD  DEFAULT (NULL) FOR [account]
GO
ALTER TABLE [sys_log] ADD  DEFAULT (NULL) FOR [browser]
GO
ALTER TABLE [sys_log] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT (NULL) FOR [pid]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT ('0') FOR [sub_count]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT (NULL) FOR [component]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT (NULL) FOR [menu_sort]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT (NULL) FOR [icon]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT (NULL) FOR [path]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT (NULL) FOR [i_frame]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT ((0)) FOR [cache]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT ((0)) FOR [hidden]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT (NULL) FOR [permission]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [sys_menu] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [sys_quartz_job] ADD  DEFAULT (NULL) FOR [bean_name]
GO
ALTER TABLE [sys_quartz_job] ADD  DEFAULT (NULL) FOR [cron_expression]
GO
ALTER TABLE [sys_quartz_job] ADD  DEFAULT (NULL) FOR [is_pause]
GO
ALTER TABLE [sys_quartz_job] ADD  DEFAULT (NULL) FOR [job_name]
GO
ALTER TABLE [sys_quartz_job] ADD  DEFAULT (NULL) FOR [method_name]
GO
ALTER TABLE [sys_quartz_job] ADD  DEFAULT (NULL) FOR [params]
GO
ALTER TABLE [sys_quartz_job] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [sys_quartz_job] ADD  DEFAULT (NULL) FOR [person_in_charge]
GO
ALTER TABLE [sys_quartz_job] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [sys_quartz_job] ADD  DEFAULT (NULL) FOR [sub_task]
GO
ALTER TABLE [sys_quartz_job] ADD  DEFAULT (NULL) FOR [pause_after_failure]
GO
ALTER TABLE [sys_quartz_job] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [sys_quartz_job] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [sys_quartz_job] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [sys_quartz_job] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [sys_quartz_log] ADD  DEFAULT (NULL) FOR [bean_name]
GO
ALTER TABLE [sys_quartz_log] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [sys_quartz_log] ADD  DEFAULT (NULL) FOR [cron_expression]
GO
ALTER TABLE [sys_quartz_log] ADD  DEFAULT (NULL) FOR [is_success]
GO
ALTER TABLE [sys_quartz_log] ADD  DEFAULT (NULL) FOR [job_name]
GO
ALTER TABLE [sys_quartz_log] ADD  DEFAULT (NULL) FOR [method_name]
GO
ALTER TABLE [sys_quartz_log] ADD  DEFAULT (NULL) FOR [params]
GO
ALTER TABLE [sys_quartz_log] ADD  DEFAULT (NULL) FOR [time]
GO
ALTER TABLE [sys_role] ADD  DEFAULT (NULL) FOR [level]
GO
ALTER TABLE [sys_role] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [sys_role] ADD  DEFAULT (NULL) FOR [data_scope]
GO
ALTER TABLE [sys_role] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [sys_role] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [sys_role] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [sys_role] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [dept_id]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [account]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [nickname]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [gender]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [avatar_name]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [avatar_path]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [password]
GO
ALTER TABLE [sys_user] ADD  DEFAULT ((0)) FOR [is_admin]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [enabled]
GO
ALTER TABLE [sys_user] ADD  DEFAULT ('0') FOR [err_flag]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [latest_login_time]
GO
ALTER TABLE [sys_user] ADD  DEFAULT ('0') FOR [err_count]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [tool_email_config] ADD  DEFAULT (NULL) FOR [from_user]
GO
ALTER TABLE [tool_email_config] ADD  DEFAULT (NULL) FOR [host]
GO
ALTER TABLE [tool_email_config] ADD  DEFAULT (NULL) FOR [pass]
GO
ALTER TABLE [tool_email_config] ADD  DEFAULT (NULL) FOR [port]
GO
ALTER TABLE [tool_email_config] ADD  DEFAULT (NULL) FOR [user]
GO
ALTER TABLE [tool_local_storage] ADD  CONSTRAINT [DF__tool_loca__real___5A846E65]  DEFAULT (NULL) FOR [real_name]
GO
ALTER TABLE [tool_local_storage] ADD  CONSTRAINT [DF__tool_local__name__5B78929E]  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [tool_local_storage] ADD  CONSTRAINT [DF__tool_loca__suffi__5C6CB6D7]  DEFAULT (NULL) FOR [suffix]
GO
ALTER TABLE [tool_local_storage] ADD  CONSTRAINT [DF__tool_local__path__5D60DB10]  DEFAULT (NULL) FOR [path]
GO
ALTER TABLE [tool_local_storage] ADD  CONSTRAINT [DF__tool_local__type__5E54FF49]  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [tool_local_storage] ADD  CONSTRAINT [DF__tool_local__size__5F492382]  DEFAULT (NULL) FOR [size]
GO
ALTER TABLE [tool_local_storage] ADD  CONSTRAINT [DF__tool_local__sha2__603D47BB]  DEFAULT (NULL) FOR [sha2]
GO
ALTER TABLE [tool_local_storage] ADD  CONSTRAINT [DF__tool_loca__from___61316BF4]  DEFAULT (NULL) FOR [from_page_code]
GO
ALTER TABLE [tool_local_storage] ADD  CONSTRAINT [DF__tool_loca__creat__6225902D]  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [tool_local_storage] ADD  CONSTRAINT [DF__tool_loca__updat__6319B466]  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [tool_local_storage] ADD  CONSTRAINT [DF__tool_loca__creat__640DD89F]  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [tool_local_storage] ADD  CONSTRAINT [DF__tool_loca__updat__6501FCD8]  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [url_mapping] ADD  DEFAULT (getdate()) FOR [create_time]
GO
ALTER TABLE [user_log] ADD  DEFAULT (NULL) FOR [account]
GO
ALTER TABLE [user_log] ADD  DEFAULT (NULL) FOR [verify]
GO
ALTER TABLE [user_log] ADD  DEFAULT (NULL) FOR [temp_pw]
GO
ALTER TABLE [user_log] ADD  DEFAULT ((0)) FOR [used]
GO
ALTER TABLE [user_log] ADD  DEFAULT (NULL) FOR [prev_pw_sort]
GO
ALTER TABLE [user_log] ADD  DEFAULT (NULL) FOR [prev_pw]
GO
ALTER TABLE [user_log] ADD  DEFAULT (NULL) FOR [create_by]
GO
ALTER TABLE [user_log] ADD  DEFAULT (NULL) FOR [update_by]
GO
ALTER TABLE [user_log] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [user_log] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [CASE_MEET_PLAN_REF_DOC]  WITH CHECK ADD  CONSTRAINT [FK_CASE_MEET_PLAN_REF_DOC_CASE_MEET_PLAN_REF_DOC] FOREIGN KEY([id])
REFERENCES [CASE_MEET_PLAN_REF_DOC] ([id])
GO
ALTER TABLE [CASE_MEET_PLAN_REF_DOC] CHECK CONSTRAINT [FK_CASE_MEET_PLAN_REF_DOC_CASE_MEET_PLAN_REF_DOC]
GO
ALTER TABLE [codedetail_filter]  WITH CHECK ADD  CONSTRAINT [filter_code] FOREIGN KEY([fid])
REFERENCES [codedetail] ([cid])
GO
ALTER TABLE [codedetail_filter] CHECK CONSTRAINT [filter_code]
GO
ALTER TABLE [codedetail_filter]  WITH CHECK ADD  CONSTRAINT [parent_code] FOREIGN KEY([pid])
REFERENCES [codedetail] ([cid])
GO
ALTER TABLE [codedetail_filter] CHECK CONSTRAINT [parent_code]
GO
ALTER TABLE [html_content]  WITH CHECK ADD  CONSTRAINT [html_content_ibfk_1] FOREIGN KEY([html_doc_id])
REFERENCES [html_doc] ([id])
GO
ALTER TABLE [html_content] CHECK CONSTRAINT [html_content_ibfk_1]
GO
ALTER TABLE [html_helper]  WITH CHECK ADD  CONSTRAINT [html_helper_ibfk_1] FOREIGN KEY([html_doc_id])
REFERENCES [html_doc] ([id])
GO
ALTER TABLE [html_helper] CHECK CONSTRAINT [html_helper_ibfk_1]
GO
ALTER TABLE [html_post]  WITH CHECK ADD  CONSTRAINT [html_post_ibfk_1] FOREIGN KEY([html_doc_id])
REFERENCES [html_doc] ([id])
GO
ALTER TABLE [html_post] CHECK CONSTRAINT [html_post_ibfk_1]
GO
ALTER TABLE [substitute]  WITH CHECK ADD  CONSTRAINT [foreign_main] FOREIGN KEY([main_id])
REFERENCES [sys_user] ([user_id])
GO
ALTER TABLE [substitute] CHECK CONSTRAINT [foreign_main]
GO
ALTER TABLE [substitute]  WITH CHECK ADD  CONSTRAINT [foreign_subs] FOREIGN KEY([subs_id])
REFERENCES [sys_user] ([user_id])
GO
ALTER TABLE [substitute] CHECK CONSTRAINT [foreign_subs]
GO
ALTER TABLE [sys_email_attachment]  WITH CHECK ADD  CONSTRAINT [FKhu5j4114eqpwvwcgknt3mehrn] FOREIGN KEY([email_id])
REFERENCES [sys_email] ([email_id])
GO
ALTER TABLE [sys_email_attachment] CHECK CONSTRAINT [FKhu5j4114eqpwvwcgknt3mehrn]
GO
ALTER TABLE [sys_email_attachment]  WITH CHECK ADD  CONSTRAINT [FKjy2xclv2451j7oqo5uo310ecm] FOREIGN KEY([attachment_id])
REFERENCES [sys_attachment] ([attachment_id])
GO
ALTER TABLE [sys_email_attachment] CHECK CONSTRAINT [FKjy2xclv2451j7oqo5uo310ecm]
GO
ALTER TABLE [sys_email_contacts_bcc]  WITH CHECK ADD  CONSTRAINT [FK75a1glcrn13h7l0fauaj5hjbk] FOREIGN KEY([contacts_id])
REFERENCES [sys_contacts] ([contacts_id])
GO
ALTER TABLE [sys_email_contacts_bcc] CHECK CONSTRAINT [FK75a1glcrn13h7l0fauaj5hjbk]
GO
ALTER TABLE [sys_email_contacts_bcc]  WITH CHECK ADD  CONSTRAINT [FKoifxxq5myiydfqu2f6r9w655] FOREIGN KEY([email_id])
REFERENCES [sys_email] ([email_id])
GO
ALTER TABLE [sys_email_contacts_bcc] CHECK CONSTRAINT [FKoifxxq5myiydfqu2f6r9w655]
GO
ALTER TABLE [sys_email_contacts_cc]  WITH CHECK ADD  CONSTRAINT [FKkmw686xjuutort8nw3n1m01c0] FOREIGN KEY([email_id])
REFERENCES [sys_email] ([email_id])
GO
ALTER TABLE [sys_email_contacts_cc] CHECK CONSTRAINT [FKkmw686xjuutort8nw3n1m01c0]
GO
ALTER TABLE [sys_email_contacts_cc]  WITH CHECK ADD  CONSTRAINT [FKp5ljxj3cfexa5i0wy3xg6rsbx] FOREIGN KEY([contacts_id])
REFERENCES [sys_contacts] ([contacts_id])
GO
ALTER TABLE [sys_email_contacts_cc] CHECK CONSTRAINT [FKp5ljxj3cfexa5i0wy3xg6rsbx]
GO
ALTER TABLE [sys_email_contacts_to]  WITH CHECK ADD  CONSTRAINT [FK5cdqu2vbq4m1kk071ttbydwru] FOREIGN KEY([email_id])
REFERENCES [sys_email] ([email_id])
GO
ALTER TABLE [sys_email_contacts_to] CHECK CONSTRAINT [FK5cdqu2vbq4m1kk071ttbydwru]
GO
ALTER TABLE [sys_email_contacts_to]  WITH CHECK ADD  CONSTRAINT [FKdqgox2h1jtj5yu6bu4bvko7vg] FOREIGN KEY([contacts_id])
REFERENCES [sys_contacts] ([contacts_id])
GO
ALTER TABLE [sys_email_contacts_to] CHECK CONSTRAINT [FKdqgox2h1jtj5yu6bu4bvko7vg]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_COMPANY_REPLY', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_COMPANY_REPLY', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回覆處理結果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_COMPANY_REPLY', @level2type=N'COLUMN',@level2name=N'reply_result_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回覆概述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_COMPANY_REPLY', @level2type=N'COLUMN',@level2name=N'result_text'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回覆中心之流程代碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_COMPANY_REPLY', @level2type=N'COLUMN',@level2name=N'replay_flow_code_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'爭議類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_COMPANY_REPLY', @level2type=N'COLUMN',@level2name=N'dispute_kind_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'銷售通路' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_COMPANY_REPLY', @level2type=N'COLUMN',@level2name=N'sales_channel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'銷售機構' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_COMPANY_REPLY', @level2type=N'COLUMN',@level2name=N'sales_company_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保單掛名業務員' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_COMPANY_REPLY', @level2type=N'COLUMN',@level2name=N'sales_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_COMPANY_REPLY', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_COMPANY_REPLY', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_COMPANY_REPLY', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_COMPANY_REPLY', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金融業者回覆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_COMPANY_REPLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_CONSULTANT', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_CONSULTANT', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'諮詢顧問識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_CONSULTANT', @level2type=N'COLUMN',@level2name=N'member_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顯示次序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_CONSULTANT', @level2type=N'COLUMN',@level2name=N'seq_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顧問姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_CONSULTANT', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'發文文號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_CONSULTANT', @level2type=N'COLUMN',@level2name=N'issue_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'發文日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_CONSULTANT', @level2type=N'COLUMN',@level2name=N'issue_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_CONSULTANT', @level2type=N'COLUMN',@level2name=N'receive_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文文號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_CONSULTANT', @level2type=N'COLUMN',@level2name=N'receive_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_CONSULTANT', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_CONSULTANT', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_CONSULTANT', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_CONSULTANT', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件諮詢顧問' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_CONSULTANT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'結案情形1階(由議事行政帶入))' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'close_reason1_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'評議成立/不成立結論' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'decide_result_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'請求標的類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'request_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'請求標的/評議決定金額A' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'a_amt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'評議決定金額B' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'b_amt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'適用一定額度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'quota_style_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申請人評議書回執日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'appl_return_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申請人評議決定回函文號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'appl_return_receive_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'相對人評議決定回函文號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'company_return_receive_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'一定額度類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'quota_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'評議成立金額縮減至一定額度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'is_cut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'評議決定摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'decide_remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'評議決定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DECIDE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'訪談結束時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'end_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'臨櫃身分別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'user_kind_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'臨櫃身分-其他' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'user_kind_remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'評議申請應附身分證正、反面影本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'is_attach_id_copy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委任代理文件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'is_attact_agent_paper'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'評議申請應附受任人/代理人身分證正、反面影本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'is_attact_agent_copy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否曾提出民事訟訴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'is_law'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民事訟訴內容簡述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'law_remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否成立調處、評議、和解、調解或仲裁' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'is_meeting'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'調處、評議、和解、調解或仲裁-內容簡述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'meeting_remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否曾向金融服務業申訴過' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'is_company_appeal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申訴日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'appeal_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收受金融服務業回覆日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'company_reply_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申訴內容與本次訴求是否相符' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'is_appeal_same'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'臨櫃-諮詢事項' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'desk_calss_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'臨櫃件特有欄位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DESK_EXT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主旨' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'subject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'來文者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'receive_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'來文態樣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'communication_class_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身分類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'identify_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文-年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'doc_year'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文-字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'doc_word'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文-號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'doc_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合意停止日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'agree_stop_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否簽延長' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'is_special_extent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申訴轉評議簽收日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'review_sign_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'議事行政-簽核日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'issue_sign_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'議事行政-簽核類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'issue_sign_kind_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'議事行政-撤件日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'issue_cancel_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'議事行政-評議成立簽核日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'issue_sure_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'議事行政-結案流水號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'issue_receive_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文件特有欄位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DOC_EXT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DYNAMIC_COLUMN', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顯示區塊' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DYNAMIC_COLUMN', @level2type=N'COLUMN',@level2name=N'band_code_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'欄位定義' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DYNAMIC_COLUMN', @level2type=N'COLUMN',@level2name=N'column_adjust_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'關聯表格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DYNAMIC_COLUMN', @level2type=N'COLUMN',@level2name=N'from_table_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'關聯表格識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DYNAMIC_COLUMN', @level2type=N'COLUMN',@level2name=N'from_table_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'填入值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DYNAMIC_COLUMN', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DYNAMIC_COLUMN', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DYNAMIC_COLUMN', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DYNAMIC_COLUMN', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異時時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DYNAMIC_COLUMN', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件動態欄位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_DYNAMIC_COLUMN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW', @level2type=N'COLUMN',@level2name=N'pcode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW', @level2type=N'COLUMN',@level2name=N'process_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'現在流程碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW', @level2type=N'COLUMN',@level2name=N'current_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'現在工作群組碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW', @level2type=N'COLUMN',@level2name=N'current_workgroup_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'現在帳號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW', @level2type=N'COLUMN',@level2name=N'current_account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'觸發動作帳號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW', @level2type=N'COLUMN',@level2name=N'action_account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接續流程碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW', @level2type=N'COLUMN',@level2name=N'next_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接續工作群組碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW', @level2type=N'COLUMN',@level2name=N'next_workgroup_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接續處理帳號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW', @level2type=N'COLUMN',@level2name=N'next_account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件電子流程檔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EFLOW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'預審委員識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'member_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顯示次序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'seq_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'首次通知日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'first_mail_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最後通知日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'latest_mail_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'首次列印日(代表鎖定)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'print_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'審查狀態' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'exam_status_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'審查回覆日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'replay_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'判斷結論(因為可選其他,無法用uuid)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'result_case_suggestion_book_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他-判斷結論' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'result_desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'判斷結論(因為可選其他,無法用uuid)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'reason_case_suggestion_book_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他-理由' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'reasion_desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件預審委員資料' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_EXAMINER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FILE', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FILE', @level2type=N'COLUMN',@level2name=N'case_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'檔案類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FILE', @level2type=N'COLUMN',@level2name=N'case_file_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'關聯資料表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FILE', @level2type=N'COLUMN',@level2name=N'from_table_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'資料表識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FILE', @level2type=N'COLUMN',@level2name=N'from_table_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顯示次序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FILE', @level2type=N'COLUMN',@level2name=N'seq_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'檔案大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FILE', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'檔案驗證碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FILE', @level2type=N'COLUMN',@level2name=N'sha2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FILE', @level2type=N'COLUMN',@level2name=N'upload_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FILE', @level2type=N'COLUMN',@level2name=N'upload_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件相關檔案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FLOW', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FLOW', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件進度時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FLOW', @level2type=N'COLUMN',@level2name=N'flow_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件進度識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FLOW', @level2type=N'COLUMN',@level2name=N'flow_code_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文文號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FLOW', @level2type=N'COLUMN',@level2name=N'doc_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文動作代碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FLOW', @level2type=N'COLUMN',@level2name=N'doc_action_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'開放業者修改期限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FLOW', @level2type=N'COLUMN',@level2name=N'open_modify_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可顯示範圍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FLOW', @level2type=N'COLUMN',@level2name=N'scope_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主管寫入' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FLOW', @level2type=N'COLUMN',@level2name=N'manager_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'當時承辦人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FLOW', @level2type=N'COLUMN',@level2name=N'owner_account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FLOW', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FLOW', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FLOW', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FLOW', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件進度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_FLOW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_KEYWORD', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'欄位來源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_KEYWORD', @level2type=N'COLUMN',@level2name=N'table_column'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'若寫入文字太長,用於拆段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_KEYWORD', @level2type=N'COLUMN',@level2name=N'seq_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'關鍵字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_KEYWORD', @level2type=N'COLUMN',@level2name=N'keyword'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'寫入時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_KEYWORD', @level2type=N'COLUMN',@level2name=N'timestamp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件關鍵字(trigger建)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_KEYWORD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MAINTAIN_LOG', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MAINTAIN_LOG', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'關聯子表識別值(非必要)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MAINTAIN_LOG', @level2type=N'COLUMN',@level2name=N'sub_table_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'關聯子表名稱(非必要)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MAINTAIN_LOG', @level2type=N'COLUMN',@level2name=N'sub_table_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'紀錄類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MAINTAIN_LOG', @level2type=N'COLUMN',@level2name=N'case_log_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'後端程式代碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MAINTAIN_LOG', @level2type=N'COLUMN',@level2name=N'job_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'紀錄的合併字串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MAINTAIN_LOG', @level2type=N'COLUMN',@level2name=N'combine_values'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MAINTAIN_LOG', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MAINTAIN_LOG', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件維護紀錄檔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MAINTAIN_LOG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'case_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'case_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'case_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'進件方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'in_method_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'專案類型(進件類型)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'case_class_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'計件否' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'case_class_cnt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原申訴案號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'appeal_case_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原申訴案號識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'appeal_case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'契約編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'contact_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'件別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'special_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'於金融業提出申訴否' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'is_appeal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最後一筆案件進度識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'latest_case_flow_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最後一筆線上流程進度識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'latest_case_eflow_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'爭議產業別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'tree_industry_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'爭議對象識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'company_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'爭議類型-選項' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'dispute_kind_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'結案情形分類' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'close_status_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'結案情形1階' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'close_reason1_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'結案情形2階' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'close_reason2_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'結案階段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'close_stage_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中心承辦人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'center_owner_account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'業者承辦人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'company_owner_account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否續行申請評議' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'is_cc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'結案否' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'is_close'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'續辦狀態' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'continue_status_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'續辦案號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'pre_case_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'續辦案號識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'pre_case_case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'計費否' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'is_free'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'舊版案件屬性(用於103年前報表)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'case_attribute_old_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件主檔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MASTER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'調處成立否' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE', @level2type=N'COLUMN',@level2name=N'mediate_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'調處成立金額' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE', @level2type=N'COLUMN',@level2name=N'mediate_amt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'調處人員' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE', @level2type=N'COLUMN',@level2name=N'mediate_user'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拒絕調處日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE', @level2type=N'COLUMN',@level2name=N'mediate_reject_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拒絕調處通知當事人日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE', @level2type=N'COLUMN',@level2name=N'reject_notice_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'調處情境概述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE', @level2type=N'COLUMN',@level2name=N'mediate_desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'調處情形' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE_CONTACT', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE_CONTACT', @level2type=N'COLUMN',@level2name=N'case_mediate_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聯繫日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE_CONTACT', @level2type=N'COLUMN',@level2name=N'contact_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聯繫對象(文字,用tab分隔; kind=contract_user_kind)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE_CONTACT', @level2type=N'COLUMN',@level2name=N'contact_user_text'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聯繫目的' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE_CONTACT', @level2type=N'COLUMN',@level2name=N'contact_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聯繴(調處)方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE_CONTACT', @level2type=N'COLUMN',@level2name=N'contact_method_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE_CONTACT', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'須(Mail)通知長官調處情型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE_CONTACT', @level2type=N'COLUMN',@level2name=N'need_mail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知信寄送時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE_CONTACT', @level2type=N'COLUMN',@level2name=N'mail_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'長官審核時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE_CONTACT', @level2type=N'COLUMN',@level2name=N'sign_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'長官批示結果(kind=sign_status)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE_CONTACT', @level2type=N'COLUMN',@level2name=N'sign_status_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'長官批示內容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE_CONTACT', @level2type=N'COLUMN',@level2name=N'sign_memo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者（建檔人員）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE_CONTACT', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立日期（排入通知長官時間)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE_CONTACT', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'調處聯繫紀錄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEDIATE_CONTACT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'資料識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN', @level2type=N'COLUMN',@level2name=N'meeting_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提會類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN', @level2type=N'COLUMN',@level2name=N'plan_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'結案情形分類(提會結論)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN', @level2type=N'COLUMN',@level2name=N'close_status_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'結案情形1階(選會次時帶入爭議內容值)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN', @level2type=N'COLUMN',@level2name=N'close_reason1_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送出提會時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN', @level2type=N'COLUMN',@level2name=N'submit_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'議事人員退回時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN', @level2type=N'COLUMN',@level2name=N'cancel_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件提會' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN_REF_DOC', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN_REF_DOC', @level2type=N'COLUMN',@level2name=N'case_meet_plan_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文-年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN_REF_DOC', @level2type=N'COLUMN',@level2name=N'doc_year'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文-字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN_REF_DOC', @level2type=N'COLUMN',@level2name=N'doc_word'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文-號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN_REF_DOC', @level2type=N'COLUMN',@level2name=N'doc_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN_REF_DOC', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN_REF_DOC', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件提會關聯件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEET_PLAN_REF_DOC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEMO', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEMO', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEMO', @level2type=N'COLUMN',@level2name=N'memo_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註文字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEMO', @level2type=N'COLUMN',@level2name=N'memo_text'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顯示次序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEMO', @level2type=N'COLUMN',@level2name=N'seq_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEMO', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEMO', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEMO', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEMO', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件相關備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_MEMO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_OWNER_LOG', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_OWNER_LOG', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'承辦人類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_OWNER_LOG', @level2type=N'COLUMN',@level2name=N'owner_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'承辦人帳號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_OWNER_LOG', @level2type=N'COLUMN',@level2name=N'owner_account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_OWNER_LOG', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_OWNER_LOG', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件承辦人變更紀錄檔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_OWNER_LOG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_PRODUCT_ITEM', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_PRODUCT_ITEM', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'資料來源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_PRODUCT_ITEM', @level2type=N'COLUMN',@level2name=N'owner_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顯示次序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_PRODUCT_ITEM', @level2type=N'COLUMN',@level2name=N'seq_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品種類' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_PRODUCT_ITEM', @level2type=N'COLUMN',@level2name=N'item_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品項目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_PRODUCT_ITEM', @level2type=N'COLUMN',@level2name=N'item_kind_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_PRODUCT_ITEM', @level2type=N'COLUMN',@level2name=N'item_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_PRODUCT_ITEM', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_PRODUCT_ITEM', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_PRODUCT_ITEM', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_PRODUCT_ITEM', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件爭議商品' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_PRODUCT_ITEM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL', @level2type=N'COLUMN',@level2name=N'receive_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文文號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL', @level2type=N'COLUMN',@level2name=N'receive_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'來文者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL', @level2type=N'COLUMN',@level2name=N'receive_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主旨' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL', @level2type=N'COLUMN',@level2name=N'subject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL', @level2type=N'COLUMN',@level2name=N'memo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'發文時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL', @level2type=N'COLUMN',@level2name=N'issue_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'發文文號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL', @level2type=N'COLUMN',@level2name=N'issue_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'受文者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL', @level2type=N'COLUMN',@level2name=N'issue_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立建立的程式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL', @level2type=N'COLUMN',@level2name=N'create_job_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案關文號(兩造)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_APPL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案關文件來文者類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'ref_other_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文動作代碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'doc_action_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文文號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'receive_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'receive_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'來文者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'receive_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'發文文號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'issue_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'發文日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'issue_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會議日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'meet_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'remark1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'remark2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案關文號(非兩造)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_RECEIVE_OTHER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_SUGGESTION', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_SUGGESTION', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案由(描述)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_SUGGESTION', @level2type=N'COLUMN',@level2name=N'case_reason_desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'請求標的' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_SUGGESTION', @level2type=N'COLUMN',@level2name=N'request_desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'郵件註記(隨email寄出)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_SUGGESTION', @level2type=N'COLUMN',@level2name=N'mail_message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_SUGGESTION', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_SUGGESTION', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_SUGGESTION', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_SUGGESTION', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件預審資料' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_SUGGESTION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_SUGGESTION_BOOK', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'預審資料識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_SUGGESTION_BOOK', @level2type=N'COLUMN',@level2name=N'case_suggestion_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顯示次序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_SUGGESTION_BOOK', @level2type=N'COLUMN',@level2name=N'seq_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'判斷書-描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_SUGGESTION_BOOK', @level2type=N'COLUMN',@level2name=N'suggestion_book_desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件預審判斷書' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_SUGGESTION_BOOK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TAG不確定', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TAG不確定', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'標籤樹識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TAG不確定', @level2type=N'COLUMN',@level2name=N'tagTree_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TAG不確定', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TAG不確定', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TAG不確定', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TAG不確定', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件標籤檔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TAG不確定'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_CHECK', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_CHECK', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'線上簽核流程(代碼:2000)的所在位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_CHECK', @level2type=N'COLUMN',@level2name=N'eflow_2000_check_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'填入值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_CHECK', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_CHECK', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_CHECK', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'電話檢核表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_CHECK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'電話件結案情型(屬金管會)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT', @level2type=N'COLUMN',@level2name=N'tel_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被匯入至哪一筆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT', @level2type=N'COLUMN',@level2name=N'export_case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'本次是否曾向業者申訴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT', @level2type=N'COLUMN',@level2name=N'appeal_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'本次是否曾由本人或他人向本中心申訴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT', @level2type=N'COLUMN',@level2name=N'appeal_class_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金保法第13條第2項規定.第1項' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT', @level2type=N'COLUMN',@level2name=N'is_check132_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金保法第13條第2項規定.第2項' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT', @level2type=N'COLUMN',@level2name=N'is_check132_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金保法第13條第2項規定.第3項' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT', @level2type=N'COLUMN',@level2name=N'is_check132_3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金保法第13條第2項規定.第4項' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT', @level2type=N'COLUMN',@level2name=N'is_check132_4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金保法第13條第2項規定.第5項' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT', @level2type=N'COLUMN',@level2name=N'is_check132_5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'電話件特有欄位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TEL_EXT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TREE', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TREE', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'樹的類型名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TREE', @level2type=N'COLUMN',@level2name=N'tree_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'節點識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TREE', @level2type=N'COLUMN',@level2name=N'node_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TREE', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TREE', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TREE', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TREE', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件樹狀欄位檔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TREE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'資料識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TREE#', @level2type=N'COLUMN',@level2name=N'case_tree_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'節點識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TREE#', @level2type=N'COLUMN',@level2name=N'node_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TREE#', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'樹的類型名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TREE#', @level2type=N'COLUMN',@level2name=N'tree_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'階數' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TREE#', @level2type=N'COLUMN',@level2name=N'level'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件樹狀欄位搜尋樹' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_TREE#'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件人名類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'case_user_kind_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'證號類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'idno_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'證號(加密)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'idno_crypt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'birth_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年齡' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'age'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'*電話1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'phone1_no_crypt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'電話1分機' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'phone1_ext'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'*電話2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'phone2_no_crypt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'電話2分機' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'phone2_ext'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'*電子郵件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'email_crypt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'郵遞區號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'zip_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'縣市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'sys_city_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'區處' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'sys_district_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'*地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'address_crypt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'設定為代表人時間(排序用)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'assign_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件人名檔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER_AGENT', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER_AGENT', @level2type=N'COLUMN',@level2name=N'case_user_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理人類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER_AGENT', @level2type=N'COLUMN',@level2name=N'agent_kind_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理人身分別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER_AGENT', @level2type=N'COLUMN',@level2name=N'agent_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身分別-其他之註釋' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER_AGENT', @level2type=N'COLUMN',@level2name=N'other_remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER_AGENT', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER_AGENT', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER_AGENT', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER_AGENT', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件代理人屬性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CASE_USER_AGENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代碼明細ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新增日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'ins_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新增使用者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'ins_usr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'upd_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新使用者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'upd_usr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'種類' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'kind'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否啟用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'is_enabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分類代碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'sort_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屬性1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'property1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屬性2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'property2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屬性3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'property3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屬性4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'property4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屬性5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'property5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屬性6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'property6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屬性7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'property7'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屬性8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'property8'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屬性9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'property9'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'孩童ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'child_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父母ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'codedetail', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系統編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'統一編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'tax_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'負責人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'chairman'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'company_addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通訊地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'mail_addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'狀態' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'company_state_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'啟用日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'enable_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停用日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'close_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停用原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'close_remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合併日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'combine_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下拉代碼停用日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'code_end_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'爭議對象' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_CONCAT', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_CONCAT', @level2type=N'COLUMN',@level2name=N'company_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顯示次序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_CONCAT', @level2type=N'COLUMN',@level2name=N'seq_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_CONCAT', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'電話' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_CONCAT', @level2type=N'COLUMN',@level2name=N'tel_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'電話分機' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_CONCAT', @level2type=N'COLUMN',@level2name=N'tel_ext'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'傳真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_CONCAT', @level2type=N'COLUMN',@level2name=N'fax_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'傳真分機' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_CONCAT', @level2type=N'COLUMN',@level2name=N'fax_ext'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'電子郵件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_CONCAT', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_CONCAT', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_CONCAT', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_CONCAT', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_CONCAT', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'爭議對象_聯絡窗口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_CONCAT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY', @level2type=N'COLUMN',@level2name=N'company_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顯示次序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY', @level2type=N'COLUMN',@level2name=N'seq_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'產業別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY', @level2type=N'COLUMN',@level2name=N'industry_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授權代理對象之產業別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY', @level2type=N'COLUMN',@level2name=N'agent_company_industry_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'爭議對象_產業別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY#', @level2type=N'COLUMN',@level2name=N'industry_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'爭議對象識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY#', @level2type=N'COLUMN',@level2name=N'company_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'爭議產業樹識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY#', @level2type=N'COLUMN',@level2name=N'company_industry_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'次序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY#', @level2type=N'COLUMN',@level2name=N'seq_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'爭議對象產業別_搜尋樹計算檔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY#'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_CONTRACT', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_CONTRACT', @level2type=N'COLUMN',@level2name=N'company_industry_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_CONTRACT', @level2type=N'COLUMN',@level2name=N'year'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_CONTRACT', @level2type=N'COLUMN',@level2name=N'month'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'契約數-紀錄類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_CONTRACT', @level2type=N'COLUMN',@level2name=N'contract_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'契約數' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_CONTRACT', @level2type=N'COLUMN',@level2name=N'contract_num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_CONTRACT', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_CONTRACT', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_CONTRACT', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_CONTRACT', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'爭議對象產業別_契約數' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_CONTRACT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_SYS_USER', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_SYS_USER', @level2type=N'COLUMN',@level2name=N'company_industry_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系統帳號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_SYS_USER', @level2type=N'COLUMN',@level2name=N'sys_user_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_SYS_USER', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_SYS_USER', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'爭議對象產業別_帳號關聯檔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPANY_INDUSTRY_SYS_USER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'資料表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DELETE_LOG', @level2type=N'COLUMN',@level2name=N'table_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'資料表識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DELETE_LOG', @level2type=N'COLUMN',@level2name=N'table_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DELETE_LOG', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DELETE_LOG', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刪除紀錄檔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DELETE_LOG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'簽核流程代碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW', @level2type=N'COLUMN',@level2name=N'code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'簽核流程名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'線上流程檔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW_MAP', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW_MAP', @level2type=N'COLUMN',@level2name=N'eflow_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'節點名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW_MAP', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'適用程式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW_MAP', @level2type=N'COLUMN',@level2name=N'page_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'現在流程碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW_MAP', @level2type=N'COLUMN',@level2name=N'current_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'現在工作群組碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW_MAP', @level2type=N'COLUMN',@level2name=N'current_workgroup_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接續流程碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW_MAP', @level2type=N'COLUMN',@level2name=N'next_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接續工作群組碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW_MAP', @level2type=N'COLUMN',@level2name=N'next_workgroup_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'動作類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW_MAP', @level2type=N'COLUMN',@level2name=N'action'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'條件式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW_MAP', @level2type=N'COLUMN',@level2name=N'condition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'動作執行後要新增的案件進度碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW_MAP', @level2type=N'COLUMN',@level2name=N'case_flow_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'線上流程路徑檔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EFLOW_MAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'項次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'html_content', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'項次編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'html_content', @level2type=N'COLUMN',@level2name=N'html_doc_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'內文' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'html_content', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列次序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'html_content', @level2type=N'COLUMN',@level2name=N'order_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'郵件範本_主旨' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'html_doc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屆次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING', @level2type=N'COLUMN',@level2name=N'session'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING', @level2type=N'COLUMN',@level2name=N'meet_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會議日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING', @level2type=N'COLUMN',@level2name=N'meet_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提會期限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING', @level2type=N'COLUMN',@level2name=N'limit_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會議地點' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING', @level2type=N'COLUMN',@level2name=N'meet_room'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主席' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING', @level2type=N'COLUMN',@level2name=N'chairman'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會次檔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'資料識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_DECIDE', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案件識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_DECIDE', @level2type=N'COLUMN',@level2name=N'case_master_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_DECIDE', @level2type=N'COLUMN',@level2name=N'meeting_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'結案情形分類(提會結論)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_DECIDE', @level2type=N'COLUMN',@level2name=N'close_status_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'結案情形1階(選會次時帶入爭議內容值)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_DECIDE', @level2type=N'COLUMN',@level2name=N'close_reason1_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'決議結果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_DECIDE', @level2type=N'COLUMN',@level2name=N'meeting_result_desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'議事人員退回時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_DECIDE', @level2type=N'COLUMN',@level2name=N'cancel_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_DECIDE', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_DECIDE', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_DECIDE', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_DECIDE', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提會案件及決議' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_DECIDE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_FILE', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_FILE', @level2type=N'COLUMN',@level2name=N'meeting_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'檔案類型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_FILE', @level2type=N'COLUMN',@level2name=N'meeting_file_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顯示位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_FILE', @level2type=N'COLUMN',@level2name=N'meeting_file_display_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'檔案大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_FILE', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'檔案驗證碼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_FILE', @level2type=N'COLUMN',@level2name=N'sha2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_FILE', @level2type=N'COLUMN',@level2name=N'upload_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_FILE', @level2type=N'COLUMN',@level2name=N'upload_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系統保存檔識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_FILE', @level2type=N'COLUMN',@level2name=N'tool_local_storage_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會議檔案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_FILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_MEMBER', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會次識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_MEMBER', @level2type=N'COLUMN',@level2name=N'meeting_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'委員識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_MEMBER', @level2type=N'COLUMN',@level2name=N'member_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出席否' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_MEMBER', @level2type=N'COLUMN',@level2name=N'is_join'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_MEMBER', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_MEMBER', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_MEMBER', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_MEMBER', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'會次出席委員' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEETING_MEMBER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身分類別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'member_type_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顯示次序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'seq_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帳號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'專長領域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'domain_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'電話' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'tel_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分機' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'ext_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主要電子郵件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'email1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副知電子郵件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'email2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'匯款銀行（文字)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'bank_desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'匯款帳號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'bank_account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'註記刪除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'del_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'評議委員/諮詢顧問' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MEMBER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'取號種類' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SERIAL_NO_RECORD', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'取號依據' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SERIAL_NO_RECORD', @level2type=N'COLUMN',@level2name=N'label'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'當前可用編號' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SERIAL_NO_RECORD', @level2type=N'COLUMN',@level2name=N'next_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER', @level2type=N'COLUMN',@level2name=N'session_cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顯示次序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER', @level2type=N'COLUMN',@level2name=N'seq_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'預審委員識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER', @level2type=N'COLUMN',@level2name=N'member_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'註記刪除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER', @level2type=N'COLUMN',@level2name=N'del_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屆次委員' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER_AVOID', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父層識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER_AVOID', @level2type=N'COLUMN',@level2name=N'session_member_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'應迴避公司識別值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER_AVOID', @level2type=N'COLUMN',@level2name=N'company_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER_AVOID', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER_AVOID', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'屆次委員迴避對象' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SESSION_MEMBER_AVOID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部門ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'dept_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上級部門' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子部門數目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'sub_count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'dept_sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'狀態' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'enabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'職務ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'job_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'職務名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'職務狀態' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'enabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'job_sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日誌ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'log_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日誌型別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'log_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'方法' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'method'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'參數' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'params'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'請求IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'request_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用者名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'瀏覽器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'browser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'例外細項' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'exception_detail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_log', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'選單ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'menu_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上級選單ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子選單數目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'sub_count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'選單型別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'選單標題' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元件名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'元件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'component'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'menu_sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'圖示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'鏈接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否外鏈' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'i_frame'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'cache'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'隱藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'hidden'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'許可權' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'permission'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'職務ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'job_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Spring Bean名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'bean_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cron 表達式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'cron_expression'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'狀態：1暫停、0啟用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'is_pause'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任務名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'job_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'方法名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'method_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'參數' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'params'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'備註' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'負責人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'person_in_charge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'報警郵箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子任務ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'sub_task'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任務失敗後是否暫停' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'pause_after_failure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_job', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日誌ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_log', @level2type=N'COLUMN',@level2name=N'log_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Spring Bean名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_log', @level2type=N'COLUMN',@level2name=N'bean_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_log', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cron 表達式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_log', @level2type=N'COLUMN',@level2name=N'cron_expression'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'例外細項' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_log', @level2type=N'COLUMN',@level2name=N'exception_detail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'狀態：1成功、0失敗' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_log', @level2type=N'COLUMN',@level2name=N'is_success'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'職務名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_log', @level2type=N'COLUMN',@level2name=N'job_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'方法名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_log', @level2type=N'COLUMN',@level2name=N'method_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'參數' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_log', @level2type=N'COLUMN',@level2name=N'params'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_quartz_log', @level2type=N'COLUMN',@level2name=N'time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_roles_depts', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部門ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_roles_depts', @level2type=N'COLUMN',@level2name=N'dept_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'選單ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_roles_menus', @level2type=N'COLUMN',@level2name=N'menu_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_roles_menus', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_users_jobs', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'職務ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_users_jobs', @level2type=N'COLUMN',@level2name=N'job_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'儲存體ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tool_local_storage', @level2type=N'COLUMN',@level2name=N'storage_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'儲存體uuid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tool_local_storage', @level2type=N'COLUMN',@level2name=N'storage_uuid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'檔案真實名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tool_local_storage', @level2type=N'COLUMN',@level2name=N'real_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'檔案名稱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tool_local_storage', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'後綴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tool_local_storage', @level2type=N'COLUMN',@level2name=N'suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路徑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tool_local_storage', @level2type=N'COLUMN',@level2name=N'path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'型別' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tool_local_storage', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tool_local_storage', @level2type=N'COLUMN',@level2name=N'size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'雜錯演算法' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tool_local_storage', @level2type=N'COLUMN',@level2name=N'sha2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'來自下個頁面' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tool_local_storage', @level2type=N'COLUMN',@level2name=N'from_page_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tool_local_storage', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tool_local_storage', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tool_local_storage', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新時間' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tool_local_storage', @level2type=N'COLUMN',@level2name=N'update_time'
GO
