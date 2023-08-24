package com.ezcore.tools.htmlHelper.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.ezcore.tools.codedetail.model.Tool;
import com.ezcore.tools.codedetail.model.exception.ResponseDataException;
import com.ezcore.tools.htmlDoc.dao.HtmlContentMapper;
import com.ezcore.tools.htmlDoc.dao.HtmlDocMapper;
import com.ezcore.tools.htmlDoc.dto.SysMenuDto;
import com.ezcore.tools.htmlDoc.po.HtmlContent;
import com.ezcore.tools.htmlDoc.po.HtmlContentExample;
import com.ezcore.tools.htmlDoc.po.HtmlDoc;
import com.ezcore.tools.htmlDoc.service.impl.HtmlDocServiceImpl;
import com.ezcore.tools.htmlDoc.service.impl.SysMenuServiceImpl;
import com.ezcore.tools.htmlHelper.dao.HtmlHelperMapper;
import com.ezcore.tools.htmlHelper.dto.HelperContentDto;
import com.ezcore.tools.htmlHelper.po.HtmlHelper;
import com.ezcore.tools.htmlHelper.po.HtmlHelperExample;
import com.ezcore.tools.htmlHelper.service.HtmlHelperService;

import lombok.extern.slf4j.Slf4j;
import me.zhengjie.utils.SecurityUtils;
@Slf4j
@Component
@Transactional
public class HtmlHelperServiceImpl implements HtmlHelperService {
    @Autowired
    HtmlDocMapper htmlDocMapper;
    @Autowired
    HtmlHelperMapper htmlHelperMapper;
    @Autowired
    HtmlContentMapper htmlContentMapper;
    @Autowired
    SysMenuServiceImpl sysMenuServiceImpl;
    @Autowired
    HtmlDocServiceImpl htmlDocService;

    /**
     * 檢查區間內是否已有文檔
     * 
     * @param updateData
     * @throws ResponseDataException
     */
    private void checkData(HelperContentDto updateData) throws ResponseDataException {
        HtmlHelperExample example = new HtmlHelperExample();
        example.createCriteria().andMenuNameEqualTo(updateData.getSysMenuName());
        List<HtmlHelper> helpers = htmlHelperMapper.selectByExample(example);
        /* 如果找其他同menu id 的helper */
        if (!helpers.isEmpty()) {
            for (HtmlHelper htmlHelper : helpers) {
                /* 不同id才會比對起訖日期 */
                if (updateData.getId() == null || !htmlHelper.getId().equals(updateData.getId())) {
                    /* 如果修改資料沒有設定起訖日期且已有同menu id的help */
                    if (updateData.getBeginDate() == null || updateData.getEndDate() == null) {
                        throw new ResponseDataException(-2, "", "資訊錯誤", "此區間內已存在小幫手文檔", "htmlDocservice");
                    }
                    /* 若找到的helper沒有設定起訖時間則不可新增同一menu id 的文檔 */
                    if ((htmlHelper.getBeginDate() == null || htmlHelper.getEndDate() == null)) {
                        throw new ResponseDataException(-2, "", "資訊錯誤", "此區間內已存在小幫手文檔", "htmlDocservice");
                    }
                    Date begin = updateData.getBeginDate();
                    Date end = updateData.getEndDate();
                    Date compareBegin = htmlHelper.getBeginDate();
                    Date compareEnd = htmlHelper.getEndDate();
                    /* 若有設定起訖時間則比對區間是否有重複 */
                    if ((begin.before(compareEnd) && begin.after(compareBegin))
                            || (end.before(compareEnd) && end.after(compareBegin))) {
                        throw new ResponseDataException(-2, "", "資訊錯誤", "此區間內已存在小幫手文檔", "htmlDocservice");
                    }
                }
            }
        }
    }

    /**
     * 建立要更新的htmlHelper物件
     * 
     * @param updateData
     * @return
     * @throws ResponseDataException
     */
    private HtmlHelper updateHtmlHelper(HelperContentDto updateData) throws ResponseDataException {
        HtmlHelper orignalData = htmlHelperMapper.selectByPrimaryKey(updateData.getId());
        /* 檢查menu id */
        if (updateData.getSysMenuName() == null) {
            throw new ResponseDataException(-2, "", "資訊錯誤", "menu id不可為空", "htmlDocservice");
        }
        if (sysMenuServiceImpl.getByName(updateData.getSysMenuName()) == null) {
            throw new ResponseDataException(-2, "", "資訊錯誤", "menu id不存在", "htmlDocservice");
        }

        orignalData.setBeginDate(updateData.getBeginDate());
        orignalData.setEndDate(updateData.getEndDate());
        orignalData.setWindowSize(updateData.getWindowSize());
        orignalData.setMenuName(updateData.getSysMenuName());
        orignalData.setHtmlDocId(updateData.getHtmlDocId());

        return orignalData;
    }

    @Override
    public void delete(Long helperId) throws ResponseDataException {

        HtmlHelper helper = htmlHelperMapper.selectByPrimaryKey(helperId);
        if (helper == null) {
            throw new ResponseDataException(-2, "", "資訊錯誤", "id不存在", "htmlDocservice");
        }
        htmlDocService.delete(helper.getHtmlDocId());
        htmlHelperMapper.deleteByPrimaryKey(helperId);
        log.info("delete to html_helper:{}", helperId);
    }

    @Override
    public HelperContentDto insert(HelperContentDto updateData) throws ResponseDataException {
        /* 確認id是否存在 */
        if (updateData.getId() != null && updateData.getHtmlDocId() == null) {
            throw new ResponseDataException(-2, "", "資訊錯誤", "id錯誤", "htmlDocservice");
        }
        checkData(updateData);

        HtmlDoc doc = HtmlDoc.builder().title(updateData.getTitle()).insDate(Tool.now())
                .insUsr(SecurityUtils.getCurrentUsername()).build();
        htmlDocMapper.insertReturnId(doc);
        log.info("insert to html_content:{}", doc);

        HtmlHelper helper = HtmlHelper.builder()
                .menuName(updateData.getSysMenuName())
                .htmlDocId(doc.getId())
                .beginDate(updateData.getBeginDate())
                .endDate(updateData.getEndDate())
                .windowSize(updateData.getWindowSize())
                .build();
        htmlHelperMapper.insertReturnId(helper);
        log.info("insert to html_helper:{}", helper);

        updateData.setId(helper.getId());
        updateData.setHtmlDocId(doc.getId());

        List<HtmlContent> contents = htmlDocService.createHtmlContentList(updateData.getHtmlDocId(),
                updateData.getContent());
        contents.forEach(htmlContentMapper::insert);
        /* 回傳新增後的資料 */
        return updateData;
    }

    @Override
    public void update(HelperContentDto updateData) throws ResponseDataException {
        /* 確認id是否存在 */
        if (updateData.getId() == null) {
            throw new ResponseDataException(-2, "", "資訊錯誤", "id不可為空", "htmlDocservice");
        }
        if (htmlHelperMapper.selectByPrimaryKey(updateData.getId()) == null) {
            throw new ResponseDataException(-2, "", "資訊錯誤", "無此id", "htmlDocservice");
        }
        checkData(updateData);
        HtmlHelper htmlHelper = updateHtmlHelper(updateData);
        HtmlDoc htmlDoc = htmlDocService.updateHtmlDoc(updateData);
        List<HtmlContent> contentList = htmlDocService.createHtmlContentList(updateData.getHtmlDocId(),
                updateData.getContent());

        /* 刪除原本content,更新資料庫 */
        htmlDocService.deleteContent(updateData.getHtmlDocId());
        htmlHelperMapper.updateByPrimaryKey(htmlHelper);
        log.info("update to html_helper:{}", htmlHelper);
        htmlDocMapper.updateByPrimaryKey(htmlDoc);
        contentList.forEach(htmlContentMapper::insert);
    }

    @Override
    public List<HelperContentDto> getAll() {
        List<HelperContentDto> result = new ArrayList<>();
        /* 先把html_helper全部資料找出來 */
        HtmlHelperExample helperExample = new HtmlHelperExample();
        helperExample.setOrderByClause("menu_name asc,begin_date asc");
        List<HtmlHelper> htmlHelpers = htmlHelperMapper.selectByExample(helperExample);
        for (HtmlHelper htmlHelper : htmlHelpers) {
            /* 找到對應的page name */
            String pageName = sysMenuServiceImpl.getByName(htmlHelper.getMenuName()).getTitle();
            HtmlDoc doc = htmlDocMapper.selectByPrimaryKey(htmlHelper.getHtmlDocId());
            /* 用html_doc找到所有html_content */
            String content = htmlDocService.getContent(htmlHelper.getHtmlDocId());
            result.add(HelperContentDto.builder()
                    .beginDate(htmlHelper.getBeginDate())
                    .endDate(htmlHelper.getEndDate())
                    .title(doc.getTitle())
                    .content(content)
                    .sysMenuName(htmlHelper.getMenuName())
                    .htmlDocId(htmlHelper.getHtmlDocId())
                    .id(htmlHelper.getId())
                    .windowSize(htmlHelper.getWindowSize())
                    .sysMenuTitle(pageName)
                    .build());
        }
        return result;
    }

    @Override
    public HelperContentDto get(Long id) throws ResponseDataException {
        HtmlHelper htmlHelper = htmlHelperMapper.selectByPrimaryKey(id);
        if (htmlHelper == null) {
            throw new ResponseDataException(-2, "", "資訊錯誤", "無此id", "htmlDocservice");
        }
        SysMenuDto sysMenu = sysMenuServiceImpl.getByName(htmlHelper.getMenuName());
        HtmlDoc doc = htmlDocMapper.selectByPrimaryKey(htmlHelper.getHtmlDocId());
        HtmlContentExample example = new HtmlContentExample();
        example.createCriteria().andHtmlDocIdEqualTo(htmlHelper.getHtmlDocId());
        String content = htmlDocService.getContent(htmlHelper.getHtmlDocId());
        return HelperContentDto.builder()
            .beginDate(htmlHelper.getBeginDate())
            .endDate(htmlHelper.getEndDate())
            .content(content)
            .title(doc.getTitle())
            .sysMenuName(sysMenu.getName())
            .sysMenuTitle(sysMenu.getTitle())
            .id(id)
            .htmlDocId(htmlHelper.getHtmlDocId())
            .windowSize(htmlHelper.getWindowSize())
            .build();
    }

    @Override
    public HelperContentDto getByMenuCode(String menuName) throws ResponseDataException {
        HtmlHelperExample example = new HtmlHelperExample();
        example.createCriteria().andMenuNameEqualTo(menuName);
        List<HtmlHelper> helpers = htmlHelperMapper.selectByExample(example);
        for (HtmlHelper htmlHelper : helpers) {
            if (htmlHelper.getBeginDate() == null && htmlHelper.getEndDate() == null
                    || (htmlHelper.getBeginDate().before(Tool.now()) && htmlHelper.getEndDate().after(Tool.now()))) {
                return get(htmlHelper.getId());
            }
        }
        throw new ResponseDataException(-2, "", "資訊錯誤", "無可用文檔", "htmlDocservice");

    }
}
