USE [nfoi]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [d2L] (
@ctimestamp datetime
)
RETURNS bigint
AS
BEGIN
  /* Function body */
  declare @return bigint

  SELECT @return = DATEDIFF_BIG(millisecond,{d '1970-01-01'}, @ctimestamp)

  return @return
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Shawn>
-- Create date: <2023.05.09>
-- Description:	<取得codeName>
-- =============================================
CREATE FUNCTION [fnGetCodeCid]
(
	-- Add the parameters for the function here
	@kind nvarchar(255),
	@code nvarchar(255)
)
RETURNS bigint
AS
BEGIN
	-- Declare the return variable here
	DECLARE @cid bigint;

	SELECT @cid  = a.cid
	  from dbo.codedetail a 
	 where kind = @kind and code=@code;

	-- Return the result of the function
	RETURN @cid

END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Shawn>
-- Create date: <2023.05.09>
-- Description:	<取得codeName>
-- =============================================
Create FUNCTION [fnGetCodeColumn]
(
	-- Add the parameters for the function here
	@cid int ,
	@colName varchar(10)
)
RETURNS Nvarchar(255)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @codeValue Nvarchar(255);

	SELECT @codeValue = 
	     (case lower(@colName) 
		  when 'name' then name 
		  when 'code' then code
		  when 'property1' then property1
		  when 'property2' then property2
		  when 'property3' then property3
		  when 'property4' then property4
		  when 'property5' then property5
		  when 'property6' then property6
		  when 'property7' then property7
		  when 'property8' then property8
		  when 'property9' then property9
		  else name end )
	  from dbo.codedetail a 
	 where cid = @cid;

	-- Return the result of the function
	RETURN @codeValue

END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [fnGetCodeDetailCidSn]()
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @cidSn int

	-- Add the T-SQL statements to compute the return value here
	SELECT @cidSn = max(cid) + 1  from codedetail ;
	-- Return the result of the function
	RETURN @cidSn

END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [fnGetCodeDetailFilterNewId]()
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @idSn int

	-- Add the T-SQL statements to compute the return value here
	SELECT @idSn = isnull(max(id),0) + 1  from codedetail_filter ;
	-- Return the result of the function
 	RETURN @idSn

END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Shawn>
-- Create date: <2023.05.09>
-- Description:	<取得codeName>
-- =============================================
CREATE FUNCTION [fnGetCodeName]
(
	-- Add the parameters for the function here
	@cid int
)
RETURNS Nvarchar(255)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @codeName Nvarchar(255);

	SELECT @codeName  = a.name
	  from dbo.codedetail a 
	 where cid = @cid;

	-- Return the result of the function
	RETURN @codeName

END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Shawn>
-- Create date: <2023.05.09>
-- Description:	<取得codeName>
-- =============================================
Create FUNCTION [fnGetCodeNameByKind]
(
	-- Add the parameters for the function here
	@kind nvarchar(255),
	@code nvarchar(255)
)
RETURNS nvarchar(255)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @name nvarchar(255);

	SELECT @name  = a.name
	  from dbo.codedetail a 
	 where kind = @kind and code=@code;

	-- Return the result of the function
	RETURN @name

END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Shawn>
-- Create date: <2023.05.09>
-- Description:	<取得codeName>
-- =============================================
create FUNCTION [fnGetEflowMapTid]
(
	-- Add the parameters for the function here
	@flow_code    nvarchar(255),
	@current_code nvarchar(255)
)
RETURNS uniqueidentifier
AS
BEGIN
	-- Declare the return variable here
	DECLARE @tid uniqueidentifier;

    select @tid = b.id 
      from eflow a inner join EFLOW_MAP  b on a.id = b.eflow_tid
     where a.code = @flow_code and b.current_code = @current_code

	-- Return the result of the function
	RETURN @tid ;
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [fnGetMailto]
( 
	@mailCode varchar , 
	@caseMasterTid uniqueidentifier, 
	@dataTid uniqueidentifier 
)
RETURNS @rtnTable TABLE (mailType nvarchar , mailName nvarchar(255) , mailAddress nvarchar(255))
AS
BEGIN
	if (@mailCode = 'WEB090101.examiner')  -- 預審委員
	Begin
		insert into @rtnTable 
		select 'cc' , b.name , b.email1
		from CASE_EXAMINER a 
		inner join MEMBER b on a.member_tid = b.id and b.member_type_cid = dbo.fnGetCodeCid('member_type','examiner')
		where a.case_master_tid = @caseMasterTid
		union 		
		select 'bcc' , b.name , b.email1
		from CASE_EXAMINER a 
		inner join MEMBER b on a.member_tid = b.id and b.member_type_cid = dbo.fnGetCodeCid('member_type','examiner')
		where a.case_master_tid = @caseMasterTid
		  and b.email2 is not null 
	End
	if (@mailCode = 'unknow')  --  範本, 未定義
	Begin
		insert into @rtnTable 
		select 'cc' , 'ezcore'		, 'sample@ezcore.tw' union 
		select 'cc' , '中心承辦人'	, 'sample@foi.tw'
	End
	return ;
End
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Shawn>
-- Create date: <2023.05.09>
-- Description:	<取得codeName>
-- =============================================
CREATE FUNCTION [fnGetUserName]
(
	-- Add the parameters for the function here
	@account nvarchar(255) ,
	@style int 
)
RETURNS nvarchar(255)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @showName nvarchar(255);
	DECLARE @nickName nvarchar(255); 
	--Style=0 
	SELECT @showName = concat((case when enabled = 0 then '已離職' else '' end) , name ),
	       @nickName = isnull(nickname,'') 
	  from dbo.sys_user a 
	 where account = @account;
	
    if (@style = 1 ) and @nickName !=''
	   Select @showName = Concat(@showName,'(',@nickName,')') ;
	if (@style = 2 ) and @nickName !=''
	   Select @showName = @nickName ;
	    
	-- Return the result of the function
	RETURN @showName

END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [fnCaseNodeTree]
( 
	@caseMasterTid uniqueidentifier,
	@treeName nvarchar(50)
)
Returns Table
as
Return
(
	-- 取得某案件之樹狀資料

    WITH tree
		AS
		(
		   SELECT cid,Parent_Id , name  , code , sort_code , 0 level# ,convert(varchar, code) as node_Path   ,  data.id as case_tree_tid , data.tree_name
			 FROM codedetail t inner join dbo.CASE_TREE data on data.node_cid = t.cid
			WHERE data.case_Master_tid = @caseMasterTid and data.tree_name = @treeName
		   UNION ALL
		   SELECT C.cid,C.Parent_Id , c.name  , c.code , c.sort_code , level# + 1 as level#  ,convert(varchar,concat(tree.node_Path,'.',c.code)) as node_Path  , tree.case_tree_tid  ,tree.tree_name
		   FROM codedetail C
		   INNER JOIN  tree ON tree.Parent_Id = c.cid 
		   where kind  !='root' 
		)
		--  (select max(level#) from tree s1 where s1.case_tree_tid = a.case_tree_tid) - level# + 1 as  
		SELECT cid as node_cid , parent_id , name , code ,level#  + 1 as level#, node_Path  , @caseMasterTid  as case_master_tid , case_tree_tid ,tree_name
		  FROM tree  a


 )
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Shawn
-- Create date: <Create Date,,>
-- Description:	取得次下拉項目
-- =============================================
CREATE FUNCTION [fnCodeChildKindList]
(	
	-- Add the parameters for the function here
	@pKind nvarchar(255),
	@pCode nvarchar(255),
	@cKind nvarchar(255)
)
RETURNS TABLE 
AS
RETURN 
(
	
	Select a.cid as pCid ,a.kind as pkind , a.Code as pCode,a.Name as pName ,b.* ,ab.option1,ab.option2,ab.option3
	  from CodeDetail a 
	 inner join codedetail_filter ab on a.cid = ab.pid
	 inner join CodeDetail b on ab.fid = b.cid  and b.is_enabled =1 and b.kind = @cKind
	 where a.kind = @pKind
	   and a.code like isnull(@pCode,'%')
	   and a.is_enabled=1
	-- order by isnull(a.sort_code,a.code),isnull(b.sort_code,b.code)
)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [fnCompanyIndustryTree]
( 
	@companyIndustryTid uniqueidentifier 
)
Returns Table
as
Return
(
    WITH Industry_Tree
		AS
		(
		   SELECT cid,Parent_Id , name  , code , sort_code , 1 level# ,convert(varchar, code) as industry_Path   
			 FROM codedetail t inner join dbo.company_industry data on data.industry_cid = t.cid
			WHERE data.id =@companyIndustryTid
		   UNION ALL
		   SELECT C.cid,C.Parent_Id , c.name  , c.code , c.sort_code , level# - 1 as level#  ,convert(varchar,concat(tree.industry_Path,'.',c.code)) as industry_Path 
		   FROM codedetail C
		   INNER JOIN Industry_Tree Tree ON tree.Parent_Id = c.cid 
		   where kind  !='root' 
		)
		SELECT cid , parent_id , name , code , level# , industry_Path  , data.id  as company_industry_tid, data.company_tid
		  FROM Industry_Tree , company_industry data  
			WHERE data.id =@companyIndustryTid
 )
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  Function [fnIndustryTree]
( 
)
Returns Table
as
Return
(
 WITH Industry_Tree
AS
(
   SELECT cid,Parent_Id , name  , code , sort_code , 0 level# ,convert(varchar, code) as industry_Path    
     FROM codedetail P 
	WHERE kind = 'root' and code='industry'
    UNION ALL
   SELECT C.cid,C.Parent_Id , c.name  , c.code , c.sort_code , level# + 1 as level#  ,convert(varchar,concat(Tree.industry_Path,'.',c.code)) as industry_Path
     FROM codedetail C
    INNER JOIN Industry_Tree Tree ON C.Parent_Id = Tree.cid 
   where kind  !='root' 
)
SELECT cid , parent_id , name , code , level# , industry_Path FROM Industry_Tree   
 )
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Function [fnTree]
( 
   	@treeKind varchar(50)  
)
Returns Table
as
Return
(
 WITH tree
AS
(
   SELECT cid,Parent_Id , name  , code , sort_code , 0 level# ,convert(varchar, code) as node_Path    
     FROM codedetail P 
	WHERE kind = 'root' and code=@treeKind
    UNION ALL
   SELECT C.cid,C.Parent_Id , c.name  , c.code , c.sort_code , level# + 1 as level#  ,convert(varchar,concat(Tree.node_Path,'.',c.code)) as tree_Path
     FROM codedetail C
    INNER JOIN tree Tree ON C.Parent_Id = Tree.cid 
   where kind  !='root' 
)
SELECT cid  as node_cid , parent_id , name , code , level# , node_Path FROM tree   
 )
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [fnUserSelectableMenu](
	@domain varchar(100), 
	@account varchar(100)
)
returns table
as
return (
with tree as (
  select  
    1 as level, 
    title, 
    path as url, 
    menu_id as id, 
    pid,
    type, 
    cast(concat('1' + menu_sort, '1') as int) as sortroot,
    menu_sort as sortmenu 
  from sys_menu 
    where pid is null 
  union all
  select 
    a.level + 1 as level, 
    b.title, 
    cast(concat(a.url, '/', b.path) as nvarchar(255)) as url, 
    b.menu_id as id, 
    b.pid,
    b.type, 
    cast(a.sortroot + 1 as int) as sortroot, 
    b.menu_sort as sortmenu
  from sys_menu b 
  inner join tree a on a.id = b.pid 
)
select res.level, res.title, res.url from (
select distinct 
  c.level, 
  c.title, 
  case when c.type = 0 then null else concat(@domain, c.url) end as url, 
  c.sortroot as '(sort info1)', 
  c.sortmenu as '(sort info2)'
from tree c, sys_user a, sys_role b, sys_users_roles ab, sys_roles_menus bc 
  where a.user_id = ab.user_id 
  and b.role_id = ab.role_id 
  and b.role_id = bc.role_id 
  and c.id = bc.menu_id 
  and c.type <> 2 
  and a.account = @account
order by c.sortroot, c.sortmenu offset 0 rows
) as res
)
GO
