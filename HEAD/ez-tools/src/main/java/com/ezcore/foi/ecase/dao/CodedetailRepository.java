package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import javax.persistence.SqlResultSetMapping;

import com.ezcore.foi.ecase.dao.dto.ChildKindListDto;
import com.ezcore.foi.ecase.dao.entity.Codedetail;
import com.ezcore.foi.ecase.model.response.comm.Comm04Response;

import io.swagger.v3.oas.annotations.Parameter;

/**
 * 注意: 僅用於foi.ecase程式包內select、insert、update、delete相關業務資料<br>
 * 系統底層代碼請使用com.ezcore.common.utils.CodeDetailMap相關的實作
 */
public interface CodedetailRepository extends JpaRepository<Codedetail, Long>, JpaSpecificationExecutor<Codedetail> {

	String findKindByCid(Long cid);
	String findCodeByCid(Long cid);
	String findNameByCid(Long cid);
	Long findCidByKind(String kind);
	Long findCidByCode(String code);

	Codedetail findByCid(Long columnCodeCid);
	
	Codedetail findByCode(String code);

	Codedetail findByKindAndCode(String kind, String code);

	Codedetail findByKindAndProperty1(String kind, String property1);
	
	List<Codedetail> findByKindOrderBySortCodeAsc(String kind);

	Long findCidByKindAndCode(String kind, String code);

	Integer countByParentId(Long cid);
	
	Integer countByKind(String childKind);
	
	// TODO move to CodeDetailMap
	@Query(nativeQuery = true, name = "codedetail.getChildKindList")
    List<ChildKindListDto> execChildKindList(@Param("parentKind") String parentKind, @Param("parentCode") String parentCode,
            								 @Param("childKind") String childKind);

	/*已經被execChildKindList取代*/	// 找出所轄區塊 
//    @Query(value = "select * from dbo.fnCodeChildKindList('case_type', :caseType, 'caseType.band') "
//    		+ "where property1 = :caseTypeBandCode", nativeQuery = true)
//    List<ChildKindListDto> getBand(@Param("caseType") String caseType, @Param("caseTypeBandCode") String caseTypeBandCode);
//    // 找出所轄欄位
//    @Query(value = "select * from dbo.fnCodeChildKindList('caseType.band', :caseTypeAndBandCode, 'column_adjust') "
//			+ "where property1='dynamic'", nativeQuery = true) 							//, resultSetMapping = "ChildKindListMapping"
//    List<ChildKindListDto> getColumn(@Param("caseTypeAndBandCode") String caseTypeAndBandCode);

    @Query(nativeQuery = true, name = "codedetail.findUsersByWorkGroupCode")
	List<Comm04Response> findUsersByWorkGroupCode(@Param("workGroupCode") String workGroupCode);


}
