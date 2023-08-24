package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.lang.Nullable;

import com.ezcore.foi.ecase.dao.dto.custom.Eflow1000BoDataProjection;
import com.ezcore.foi.ecase.dao.entity.EFlow;
import com.ezcore.foi.ecase.dao.entity.custom.Eflow1000BoHistoryProjection;
import com.ezcore.foi.ecase.dao.entity.custom.Eflow2000BoDataProjection;
import com.ezcore.foi.ecase.dao.entity.custom.Eflow2000BoGroupProjection;
import com.ezcore.foi.ecase.model.bo.Eflow1000BoData;
import com.ezcore.foi.ecase.model.bo.Eflow1000BoHistory;
import com.ezcore.foi.ecase.model.bo.Eflow2000BoData;
import com.ezcore.foi.ecase.model.bo.Eflow2000BoHistory;
import com.ezcore.foi.ecase.model.bo.Eflow2000BoHistoryData;
import com.ezcore.foi.ecase.model.bo.EflowBoEFlowMap;

public interface EFlowRepository extends JpaRepository<EFlow, String>, JpaSpecificationExecutor<EFlow> {
    
    @Query(value = "select new com.ezcore.foi.ecase.model.bo.EflowBoEFlowMap("
    			 + "    A.code as pCode, "
    			 + "    A.name as pName, "
    			 + "    B.name as nodeName, "
    			 + "    B.pageCode as pageCode, "
    			 + "    B.currentCode as currentCode, "
    			 + "    B.currentWorkgroupCode as currentWorkgroup, "
    			 + "    B.nextCode as nextCode, "
    			 + "    B.nextWorkgroupCode as nextWorkgroup, "
    			 + "    B.action, "
    			 + "    B.condition, "
    			 + "    B.caseFlowCode as caseFlow "
    			 + ") from EFlow as A "
    			 + "inner join EFlowMap as B ON A.id = B.eflow.id "
    			 + "where (:pageCode is null or B.pageCode = :pageCode) "
    			 + "    and (:pCode is null or A.code = :pCode) "
    			 + "order by B.currentCode, B.action")
    List<EflowBoEFlowMap> getUsableEFlow(@Param("pageCode") @Nullable String pageCode, @Param("pCode") @Nullable String pCode);

    @Query(value = "select 'sql1-新件-須建流程' as sqlCheck, "
    			 + "    dbo.fnGetCodeName(a.case_class_cid) as caseClassName, "
    			 + "    dbo.fnGetCodeName(a.in_method_cid) as inMethodName, "
    			 + "    a.case_no as caseNo, "
    			 + "    b.name as companyName, "
    			 + "    dbo.fnGetCodeName(a.dispute_kind_cid) as disputeKindName, "
    			 + "    a.case_date as caseDate, "
    			 + "    c.memo_text as memoText, "
    			 + "    a.id as caseMasterTid, "
    			 + "    '0000' as flowCode, "
    			 + "    '' as caseEflowTid, "
    			 + "    '' as processNo, "
    			 + "    a.center_owner_account as centerOwnerAccount, "
    			 + "    dbo.fnGetUserName(a.center_owner_account, 1) as centerOwnerName "
    			 + "from case_master as a "
    			 + "inner join COMPANY as b on a.company_tid = b.id "
    			 + "inner join codedetail as inMethod on inMethod.cid = a.in_method_cid "
    			 + "    and inMethod.property2 = 'Y' "
    			 + "left outer join CASE_MEMO as c on a.id = c.case_master_tid "
    			 + "    and c.memo_type_cid = dbo.fnGetCodeCid('memo_type',concat('eflow.', :pCode)) "
    			 + "where a.center_owner_account = :account "
    			 + "    and not exists (select 1 from CASE_EFLOW s1 where s1.case_master_tid = a.id and s1.pcode = :pCode) "
    			 + "order by processNo, centerOwnerAccount, caseDate ", nativeQuery = true)
    List<Eflow1000BoDataProjection> getToCreateEFlowConsult(@Param("pCode") @Nullable String pCode, @Param("account") @Nullable String account);
    
    @Query(value = "select distinct "
    			 + "    'sql2-流程中的清單' as sqlCheck, "
    			 + "    dbo.fnGetCodeName(a.case_class_cid) as caseClassName, "
    			 + "    dbo.fnGetCodeName(a.in_method_cid) as inMethodName, "
    			 + "        a.case_no as caseNo, "
    			 + "        b.name as companyName, "
    			 + "        dbo.fnGetCodeName(a.dispute_kind_cid) as disputeKindName, "
    			 + "        a.case_date as caseDate, "
    			 + "        c.memo_text as memoText, "
    			 + "        a.id as caseMasterTid, "
    			 + "        isnull(d.next_code, d.current_code) as flowCode, "
    			 + "        d.id as caseEflowTid, "
    			 + "        d.process_no as processNo, "
    			 + "        a.center_owner_account as centerOwnerAccount, "
    			 + "        dbo.fnGetUserName(a.center_owner_account, 1) as centerOwnerName "
    			 + "from case_master a "
    			 + "inner join COMPANY as b on a.company_tid = b.ID "
    			 + "inner join codedetail as inMethod on inMethod.cid = a.in_method_cid "
    			 + "  and inMethod.property2 = 'Y' "
    			 + "left outer join CASE_MEMO as c on a.id = c.case_master_tid "
    			 + "  and c.memo_type_cid = dbo.fnGetCodeCid('memo_type', concat('eflow.', :pCode)) "
    			 + "inner join CASE_EFLOW as d on d.case_master_tid = a.id "
    			 + "  and a.latest_case_eflow_tid = d.id "
    			 + "where d.current_code = :currentCode "
    			 + "  and d.update_time is null "
    			 + "  and (:currentWorkGroupCode is null or d.current_workgroup_code = :currentWorkGroupCode) "
    			 + "  and (:account is null or a.center_owner_account = :account) "
    			 + "order by processNo, centerOwnerAccount, caseDate ", nativeQuery = true)
    List<Eflow1000BoDataProjection> getOnProcessEFlowConsult(@Param("pCode") String pCode, @Param("currentCode") String currentCode, 
    									@Param("currentWorkGroupCode") @Nullable String currentWorkGroupCode, 
    									@Param("account") @Nullable String account);
    
    @Query(value = "select '未送' as type, "
    			 + "        CONVERT(VARCHAR(10),d.flow_time, 120) as flow10022Date, "
    			 + "        dbo.fnGetUserName(a.center_owner_account, 0) as ownerName, "
    			 + "        count(*) as workCnt, "
    			 + "        count(*) as totalCnt "
    			 + "from CASE_MASTER a "
    			 + "inner join CASE_TEL_EXT b on a.id = b.case_master_tid "
    			 + "inner join CASE_FLOW d on a.latest_case_flow_tid = d.id "
    			 + "    and d.flow_code_cid = dbo.fnGetCodeCid('flow_code', '10022') "
    			 + "where a.center_owner_account = :account "
    			 + "    and not exists(select 1 from CASE_EFLOW s1 "
    			 + "                        where s1.case_master_tid = a.id "
    			 + "                            and s1.pcode = :pCode) "
    			 + "group by CONVERT(VARCHAR(10), d.flow_time, 120), a.center_owner_account ", nativeQuery = true)
    List<Eflow2000BoGroupProjection> getToCreateEFlowGroupAppeal(@Param("account") String account, @Param("pCode") String pCode);
    
    @Query(value = "select a.case_no as caseNo, "
    			 + "       '' as applicantNames, "
    			 + "       c.memo_text as memoText, "
    			 + "       a.id as caseMasterTid, "
    			 + "       null as statusText, "
    			 + "       null as caseEflowTid "
    			 + "from CASE_MASTER a "
    			 + "inner join CASE_TEL_EXT b on a.id = b.case_master_tid "
    			 + "left outer join CASE_MEMO c on a.id = c.case_master_tid "
    			 + "    and c.memo_type_cid = dbo.fnGetCodeCid('memo_type', concat('eflow.', :pCode)) "
    			 + "inner join CASE_FLOW d on a.latest_case_flow_tid = d.id "
    			 + "    and d.flow_code_cid = dbo.fnGetCodeCid('flow_code','10022') "
    			 + "where a.center_owner_account = :account "
    			 + "    and not exists(select 1 from CASE_EFLOW s1 "
    			 + "                        where s1.case_master_tid = a.id "
    			 + "                            and s1.pcode = :pCode) ", nativeQuery = true)
    List<Eflow2000BoDataProjection> getToCreateEFlowDataAppeal(@Param("account") String account, @Param("pCode") String pCode);
    
    @Query(value = "select '送過' as type, "
    			 + "        CONVERT(VARCHAR(10),d.flow_time,120) as flow10022Date, "
    			 + "        dbo.fnGetUserName(e.current_account, 0) as ownerName, "
    			 + "        count(*) as workCnt, "
    			 + "        (select count(*) from case_flow s1 "
    			 + "            inner join case_master s2 on s1.case_master_tid= s2.id "
    			 + "            where s1.flow_time >= CONVERT(VARCHAR(10),d.flow_time,120)  "
    			 + "                and s1.flow_time < DateAdd(dd ,1,CONVERT(VARCHAR(10),d.flow_time,120)) "
    			 + "                and s1.flow_code_cid = dbo.fnGetCodeCid('flow_code','10022')) as totalCnt "
    			 + "from CASE_MASTER a "
    			 + "inner join CASE_TEL_EXT b on a.id = b.case_master_tid "
    			 + "inner join CASE_FLOW d on a.latest_case_flow_tid = d.id "
    			 + "    and d.flow_code_cid = dbo.fnGetCodeCid('flow_code','10022') "
    			 + "inner join CASE_EFLOW e on e.id = a.latest_case_eflow_tid and e.pcode = :pCode "
    			 + "where e.update_time is null "
    			 + "    and e.current_code = :currentCode "
    			 + "    and (:currentWorkGroupCode is null or e.current_workgroup_code = :currentWorkGroupCode) "
    			 + "    and (:account is null or a.center_owner_account = :account) "
    			 + "group by CONVERT(VARCHAR(10), d.flow_time,120), e.current_account ", nativeQuery = true)
    List<Eflow2000BoGroupProjection> getSpecificEFlowGroupAppeal(@Param("pCode") String pCode, @Param("currentCode") String currentCode, 
    											@Param("currentWorkGroupCode") String currentWorkGroupCode, 
    											@Param("account") String account);
    
    @Query(value = "select a.case_no as caseNo, "
    			 + "         '' as applicantNames, "
    			 + "         c.memo_text as memoText, "
    			 + "         a.id as caseMasterTid, "
    			 + "         null as statusText, "
    			 + "         e.id as caseEflowTid "
    			 + "from CASE_MASTER a "
    			 + "inner join CASE_TEL_EXT b on a.id = b.case_master_tid "
    			 + "left outer join CASE_MEMO c on a.id = c.case_master_tid "
    			 + "    and c.memo_type_cid = dbo.fnGetCodeCid('memo_type', concat('eflow.', :pCode)) "
    			 + "inner join CASE_FLOW d on a.latest_case_flow_tid = d.id "
    			 + "    and d.flow_code_cid = dbo.fnGetCodeCid('flow_code','10022') "
    			 + "inner join CASE_EFLOW e on e.id = a.latest_case_eflow_tid "
    			 + "    and e.pcode = :pCode "
    			 + "where e.update_time is null "
    			 + "    and e.current_code = :currentCode "
    			 + "    and (:currentWorkGroupCode is null or e.current_workgroup_code = :currentWorkGroupCode) "
    			 + "    and (:account is null or a.center_owner_account = :account) ", nativeQuery = true)
    List<Eflow2000BoDataProjection> getSpecificEFlowDataAppeal(@Param("pCode") String pCode, @Param("currentCode") String currentCode, 
    											@Param("currentWorkGroupCode") String currentWorkGroupCode, 
    											@Param("account") String account);
    
    /*
     * CaseEflow07
     */
    @Query(value = "select process_no as processNo, "
    			 + "dbo.fnGetCodeNameByKind('workGroup', d.current_workgroup_code) as currentWorkGroup, "
    			 + "dbo.fnGetCodeNameByKind('workGroup', d.next_workgroup_code) as nextWorkGroup, "
    			 + "d.create_time as createTime, "
    			 + "count(*) as rows "
    			 + "from case_master a "
    			 + "inner join CASE_EFLOW d on d.case_master_tid = a.id and a.latest_case_eflow_tid = d.id "
    			 + "where (:caseNo is null or a.case_no = :caseNo) "
    			 + "    and (:beginDate is null or d.create_time >= :beginDate) "
    			 + "    and (:endDate is null or d.create_time < dateadd(day, 1, :endDate)) "
    			 + "    and (:currentWorkgroupCode is null or d.current_workgroup_code = :currentWorkgroupCode) "
    			 + "group by d.process_no, d.create_time, d.current_workgroup_code, d.next_workgroup_code "
    			 + "order by d.process_no", nativeQuery = true)
    List<Eflow1000BoHistoryProjection> findHistory(@Param("caseNo") String caseNo, @Param("beginDate") String beginDate, 
    											   @Param("endDate") String endDate, @Param("currentWorkgroupCode") String currentWorkgroupCode);

    /*
     * EFlow 07-2
     * fetching the "DATA" that are needed
     */
    @Query(value = "select distinct "
    			 + "'' as sqlCheck, "
    			 + "dbo.fnGetCodeName(a.case_class_cid) as caseClassName, "
    			 + "dbo.fnGetCodeName(a.in_method_cid) as inMethodName, "
    			 + "a.case_no as caseNo, "
    			 + "b.name as companyName, "
    			 + "dbo.fnGetCodeName(a.dispute_kind_cid) as disputeKindName, "
    			 + "a.case_date as caseDate, "
    			 + "c.memo_text as memoText, "
    			 + "a.id as caseMasterTid, "
    			 + "isnull(d.next_code, d.current_code) as flowCode, "
    			 + "d.id as caseEflowTid, "
    			 + "d.process_no as processNo, "
    			 + "a.center_owner_account as centerOwnerAccount, "
    			 + "dbo.fnGetUserName(a.center_owner_account, 1) as centerOwnerName "
    			 + "from case_master a "
    			 + "inner join COMPANY as b on a.company_tid = b.ID "
    			 + "inner join codedetail as inMethod on inMethod.cid = a.in_method_cid "
    			 + "    and inMethod.property2 = 'Y' "
    			 + "left outer join CASE_MEMO as c on a.id = c.case_master_tid "
    			 + "    and c.memo_type_cid = dbo.fnGetCodeCid('memo_type', concat('eflow.', '1000')) "
    			 + "inner join CASE_EFLOW as d on d.case_master_tid = a.id "
    			 + "    and a.latest_case_eflow_tid = d.id "
    			 + "where (:processNo is null or d.process_no = :processNo) "
    			 + "order by processNo, centerOwnerAccount, caseDate ", nativeQuery = true)
    List<Eflow1000BoDataProjection> findHistoryByProcessNo(@Param("processNo") String processNo);
    
    /*
     * EFlow 08
     */
    @Query(value = "select '' as type, "
    			 + "CONVERT(VARCHAR(10),d.flow_time,120) as flow10022Date, "
    			 + "dbo.fnGetUserName(e.current_account, 0) as ownerName, "
    			 + "count(*) as workCnt, "
    			 + "(select count(*) "
    			 + "    from case_flow s1 inner join case_master s2 on s1.case_master_tid = s2.id "
    			 + "    where s1.flow_time >= CONVERT(VARCHAR(10), d.flow_time, 120) "
    			 + "        and s1.flow_time < DateAdd(dd, 1, CONVERT(VARCHAR(10), d.flow_time, 120)) "
    			 + "        and s1.flow_code_cid = dbo.fnGetCodeCid('flow_code', '10022')) as totalCnt "
    			 + "from CASE_MASTER a "
    			 + "inner join CASE_TEL_EXT b on a.id = b.case_master_tid "
    			 + "inner join CASE_FLOW d on a.id = d.case_master_tid "
    			 + "    and d.flow_code_cid = dbo.fnGetCodeCid('flow_code', '10022') "
    			 + "inner join CASE_EFLOW e on e.id = a.latest_case_eflow_tid "
    			 + "    and e.pcode = '2000' "
    			 + "where e.update_time is null "
    			 + "    and (:account is null or a.center_owner_account = :account) "
    			 + "    and (:beginDate is null or e.create_time >= :beginDate) "
    			 + "    and (:endDate is null or e.create_time < dateadd(day, 1, :endDate)) "
    			 + "group by CONVERT(VARCHAR(10), d.flow_time, 120), e.current_account ", nativeQuery = true)
    List<Eflow2000BoGroupProjection> findComplaintHistory(@Param("account") String account, @Param("beginDate") String beginDate, 
    													@Param("endDate") String endDate);

//  EFlow 08-2
    @Query(value = "select a.case_no as caseNo, '' as applicantNames, c.memo_text as memoText, a.id as caseMasterTid, "
    			 + "(case when e.next_code = '9999' and e.update_time is not null then '結案' "
    			 + "     when e.next_code = '0000' then '退回' "
    			 + "     else '處理中' end ) as statusText,"
    			 + "e.id as caseEflowTid "
    			 + "from CASE_MASTER a "
    			 + "inner join CASE_TEL_EXT b on a.id = b.case_master_tid "
    			 + "left outer join CASE_MEMO c on a.id = c.case_master_tid "
    			 + "    and c.memo_type_cid = dbo.fnGetCodeCid('memo_type', 'eflow.2000') "
    			 + "inner join CASE_FLOW d on a.id = d.case_master_tid "
    			 + "    and d.flow_code_cid = dbo.fnGetCodeCid('flow_code', '10022') "
    			 + "inner join CASE_EFLOW e on e.id = a.latest_case_eflow_tid "
    			 + "    and e.pcode = '2000' "
    			 + "where (:account is null or a.center_owner_account = :account) ", nativeQuery = true)
    List<Eflow2000BoDataProjection> findComplaintHistoryDatas(@Param("account") String account);
        
    EFlow findByCode(String pCode);
    
}
