package com.ezcore.tools.codedetail.service.impl;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;

import com.ezcore.tools.codedetail.dao.CodeDetailFilterMapper;
import com.ezcore.tools.codedetail.dao.CodeDetailMapper;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.codedetail.dto.CodeDetailFilterDto;
import com.ezcore.tools.codedetail.model.CreateCodeDetailExcel;
import com.ezcore.tools.codedetail.model.Tool;
import com.ezcore.tools.codedetail.model.loader.CodeDetailLoader;
import com.ezcore.tools.codedetail.po.CodeDetail;
import com.ezcore.tools.codedetail.po.CodeDetailFilter;
import com.ezcore.tools.codedetail.po.CodeDetailFilterExample;
import com.ezcore.tools.codedetail.service.CodeDetailService;

import lombok.extern.slf4j.Slf4j;

import me.zhengjie.utils.SecurityUtils;

@Slf4j
@Component
@Primary
public class CodeDetailServiceImpl implements CodeDetailService{

	@Autowired
	private CodeDetailMapper codeDetailMapper;
	private static Map<String, List<CodeDetail>> kindMap = new HashMap<>();
	private static Map<String, CodeDetail> kindCodeMap = new HashMap<>();
	private static Map<Long, CodeDetail> idMap = new HashMap<>();
	private static final String SPLIT = "%&%";
	@Autowired
	CodeDetailLoader codeDetailLoader;
	@Autowired
	CodeDetailFilterMapper codeDetailFilterMapper;

	private CodeDetailServiceImpl() {

	}

	private void genFilterList(CodeDetailDto dto) {
		List<CodeDetailDto> result = new ArrayList<>();
		CodeDetailFilterExample example = new CodeDetailFilterExample();
		example.createCriteria().andPidEqualTo(dto.getCid());
		List<CodeDetailFilter> filters = codeDetailFilterMapper.selectByExample(example);
		if (filters != null) {
			filters.forEach(filter -> result.add(new CodeDetailDto(idMap.get(filter.getFid()))));
		}
		dto.setFilterList(result);
	}

	private List<CodeDetailDto> poListToDto(List<CodeDetail> codes) {
		List<CodeDetailDto> dtos = new ArrayList<>();
		codes.forEach(code -> {
			CodeDetailDto dto = new CodeDetailDto(code);
			genFilterList(dto);
			dtos.add(dto);
		});
		return dtos;
	}

	private CodeDetail genUpdateCodeDetail(CodeDetailDto data) {
		CodeDetail updateData = data.toPo();
		/* 先用CID取得原本資料 */
		CodeDetail originalData = codeDetailMapper.selectByPrimaryKey(updateData.getCid());

		updateData.setInsUsr(originalData.getInsUsr());
		updateData.setInsDate(originalData.getInsDate());
		updateData.setUpdDate(Tool.now());
		updateData.setUpdUsr(SecurityUtils.getCurrentUsername());
		return updateData;
	}

	/**
	 * 填入child code parent code Filter list
	 * 
	 * @param codeDetailDto
	 * @return
	 */
	private CodeDetailDto insertDtoCode(CodeDetailDto codeDetailDto) {
		if (codeDetailDto.getChildId() != null) {
			CodeDetail child = codeDetailMapper.selectByPrimaryKey(codeDetailDto.getChildId());
			codeDetailDto.setChildCode(child.getName() + '-' + child.getCode());
		}
		if (codeDetailDto.getParentId() != null) {
			CodeDetail parent = codeDetailMapper.selectByPrimaryKey(codeDetailDto.getParentId());
			codeDetailDto.setParentCode(parent.getName() + '-' + parent.getCode());
		}
		genFilterList(codeDetailDto);
		return codeDetailDto;
	}

	// 用Kind取得物件LIST
	@Override
	public List<CodeDetailDto> getList(String kind) {
		if (kindMap.containsKey(kind)) {
			List<CodeDetailDto> result = poListToDto(kindMap.get(kind));
			result.forEach(this::insertDtoCode);
			return result;

		}
		return Collections.emptyList();
	}

	// 用Kind與code取得物件
	@Override
	public CodeDetailDto getCodeDetail(String kind, String code) {
		String key = kind + SPLIT + code;
		return insertDtoCode(new CodeDetailDto(kindCodeMap.get(key)));
	}

	public static void reload(List<CodeDetail> codeList) {
		kindMap.clear();
		kindCodeMap.clear();
		for (CodeDetail item : codeList) {
			kindMap.computeIfAbsent(item.getKind(), key -> new ArrayList<>());
			kindMap.computeIfPresent(item.getKind(), (key, value) -> value).add(item);

			kindCodeMap.put(item.getKind() + SPLIT + item.getCode(), item);
			idMap.put(item.getCid(), item);
		}
	}

	@Override
	public CodeDetailDto insert(CodeDetailDto data) {
		CodeDetail code = data.toPo();
		/* 加建立時間 */
		code.setInsDate(Tool.now());
		code.setInsUsr(SecurityUtils.getCurrentUsername());
		codeDetailMapper.insertReturnId(code);
		log.info("insert to code_detail:{}", code);
		/* 更新代碼表 */
		codeDetailLoader.load();
		return new CodeDetailDto(code);
	}

	/* 更新 */
	@Override
	public void update(CodeDetailDto data) {
		String orignalCode = idMap.get(data.getCid()).getCode();
		CodeDetail code = genUpdateCodeDetail(data);
		/* 如果更新的kind=ROOT 要再另外更新同類kind */
		if ("root".equals(data.getKind()) && !Objects.equals(orignalCode, data.getCode())) {
			List<CodeDetailDto> codeList = getList(orignalCode);
			if (codeList != null) {
				codeList.forEach(dto -> {
					dto.setKind(data.getCode());
					codeDetailMapper.updateByPrimaryKey(genUpdateCodeDetail(dto));
					log.info("update to code_detail:{}", dto);

				});

			}
		}
		/* 製作要更新的物件 */
		codeDetailMapper.updateByPrimaryKey(code);
		log.info("update to code_detail:{}", code);

		/* 更新代碼表 */
		codeDetailLoader.load();
	}

	/* 刪除 */
	@Override
	public void delete(Long cid) {
		codeDetailMapper.deleteByPrimaryKey(cid);
		log.info("delete {} from code_detail", cid);
		/* 更新代碼表 */
		codeDetailLoader.load();
	}

	/* 匯出excel */
	public ByteArrayInputStream downloadByKind(String kind) throws IOException {
		/* get code list by kind */
		return CreateCodeDetailExcel.codeDetailToExcel(getList(kind));
	}

	@Override
	public List<CodeDetailDto> parentOptionList(String childKind) {
		CodeDetailDto childRoot = getCodeDetail("root", childKind);
		List<CodeDetailDto> rootList = getList("root");
		for (CodeDetailDto codeDetailDto : rootList) {
			if (codeDetailDto.getChildId() != null && codeDetailDto.getChildId().equals(childRoot.getCid())) {
				return getList(codeDetailDto.getCode());
			}
		}
		return Collections.emptyList();
	}

	@Override
	public List<CodeDetailDto> childList(Long parentId) {
		List<CodeDetailDto> result = new ArrayList<>();
		for (Map.Entry<String, CodeDetail> entry : kindCodeMap.entrySet()) {
			Long parentIdInChild = entry.getValue().getParetntId();
			if (parentIdInChild != null && parentIdInChild.equals(parentId)) {
				result.add(new CodeDetailDto(entry.getValue()));
			}
		}
		return result;
	}

	@Override
	public String childKind(String parentKind) {
		Long childId = kindCodeMap.get("root" + SPLIT + parentKind).getChildId();
		if (idMap.containsKey(childId)) {
			return idMap.get(childId).getCode();
		}
		return null;
	}

	@Override
	public CodeDetailDto getCodeDetail(Long id) {
		return insertDtoCode(new CodeDetailDto(idMap.get(id)));
	}

	@Override
	public void updateFilterCode(CodeDetailFilterDto dto) {
		/* 先刪除原先同Pid的資料 */
		CodeDetailFilterExample example = new CodeDetailFilterExample();
		example.createCriteria().andPidEqualTo(dto.getPid());
		List<CodeDetailFilter> filters = codeDetailFilterMapper.selectByExample(example);
		if (!filters.isEmpty()) {
			filters.forEach(filter -> {
				codeDetailFilterMapper.deleteByPrimaryKey(filter.getId());
				log.info("delete {} from codedetail_filter", filter.getId());
			});
		}

		if (!dto.getFid().isEmpty()) {
			for (Long fid : dto.getFid()) {
				if (fid == null) {
					break;
				}
				CodeDetailFilter filter = new CodeDetailFilter(dto.getPid(), fid);
				codeDetailFilterMapper.insert(filter);
				log.info("insert {} into codedetail_filter", filter);
			}
		}
	}

}
