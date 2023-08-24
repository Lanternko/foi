package com.ezcore.tools.htmlPost.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import com.ezcore.tools.codedetail.model.Tool;
import com.ezcore.tools.codedetail.model.exception.ResponseDataException;
import com.ezcore.tools.htmlDoc.dao.HtmlContentMapper;
import com.ezcore.tools.htmlDoc.dao.HtmlDocMapper;
import com.ezcore.tools.htmlDoc.po.HtmlContent;
import com.ezcore.tools.htmlDoc.po.HtmlDoc;
import com.ezcore.tools.htmlDoc.service.impl.HtmlDocServiceImpl;
import com.ezcore.tools.htmlPost.dao.HtmlPostMapper;
import com.ezcore.tools.htmlPost.dto.HtmlPostDto;
import com.ezcore.tools.htmlPost.po.HtmlPost;
import com.ezcore.tools.htmlPost.service.HtmlPostService;

import lombok.extern.slf4j.Slf4j;
import me.zhengjie.utils.SecurityUtils;

@Slf4j
@Component
@Transactional
public class HtmlPostServiceImpl implements HtmlPostService {
    private static final String JOB_CODE = "htmlPostservice";
    @Autowired
    HtmlPostMapper htmlPostMapper;
    @Autowired
    HtmlDocServiceImpl htmlDocService;
    @Autowired
    HtmlDocMapper htmlDocMapper;
    @Autowired
    HtmlContentMapper htmlContentMapper;

    /**
     * 製作要更新的htmlpost
     * 
     * @param updateData
     * @return
     */
    private HtmlPost updateHtmlPost(HtmlPostDto updateData) {
        HtmlPost orignalData = htmlPostMapper.selectByPrimaryKey(updateData.getId());
        orignalData.setBeginDate(updateData.getBeginDate());
        orignalData.setEndDate(updateData.getEndDate());
        orignalData.setHtmlDocId(updateData.getHtmlDocId());
        orignalData.setDisplay(updateData.getDisplay());
        orignalData.setBold(updateData.getBold() != null ? updateData.getBold() : false);
        orignalData.setPin(updateData.getPin() != null ? updateData.getPin() : false);
        orignalData.setTitleColor(updateData.getTitleColor() != null ? updateData.getTitleColor() : "#000000");
        return orignalData;
    }

    @Override
    public void update(HtmlPostDto updateData) throws ResponseDataException {
        /* 確認id是否存在 */
        if (updateData.getId() == null) {
            throw new ResponseDataException(-2, "", "資訊錯誤", "id不可為空", JOB_CODE);
        }
        if (htmlPostMapper.selectByPrimaryKey(updateData.getId()) == null) {
            throw new ResponseDataException(-2, "", "資訊錯誤", "無此id", JOB_CODE);
        }
        HtmlPost htmlPost = updateHtmlPost(updateData);
        HtmlDoc htmlDoc = htmlDocService.updateHtmlDoc(updateData);
        List<HtmlContent> contentList = htmlDocService.createHtmlContentList(updateData.getHtmlDocId(),
                updateData.getContent());

        /* 刪除原本content,更新資料庫 */
        htmlDocService.deleteContent(updateData.getHtmlDocId());
        htmlPostMapper.updateByPrimaryKey(htmlPost);
        log.info("update to html_post:{}", htmlPost);
        htmlDocMapper.updateByPrimaryKey(htmlDoc);
        log.info("update to html_doc:{}", htmlPost);

        for (HtmlContent htmlContent : contentList) {
            htmlContentMapper.insert(htmlContent);
            log.info("insert to html_content:{}", htmlContent);
        }
    }

    @Override
    public List<HtmlPostDto> getAll() {
        TreeMap<Boolean, List<HtmlPostDto>> dtoMap = new TreeMap<>(Collections.reverseOrder());// 降冪排序的tree map
        /* 先把html post全部資料找出來 */
        List<HtmlPost> htmlPosts = htmlPostMapper.selectByExample(null);
        for (HtmlPost htmlPost : htmlPosts) {
            /* 依照html_post的html_doc_id找到對應的html_doc */
            HtmlDoc doc = htmlDocMapper.selectByPrimaryKey(htmlPost.getHtmlDocId());
            /* 用html_doc找到所有html_content */
            String content = htmlDocService.getContent(htmlPost.getHtmlDocId());
            dtoMap.computeIfAbsent(htmlPost.getPin(), key -> new ArrayList<>());
            dtoMap.computeIfPresent(htmlPost.getPin(), (key, value) -> value)
                    .add(new HtmlPostDto(htmlPost, doc, content));
        }
        for (Map.Entry<Boolean, List<HtmlPostDto>> entry : dtoMap.entrySet()) {
            /* 用建立日期排序 */
            Collections.sort(entry.getValue(), (h1, h2) -> h2.getInsDate().compareTo(h1.getInsDate()));
        }

        return dtoMap.values().stream().flatMap(Collection::stream).collect(Collectors.toList());
    }

    @Override
    public HtmlPostDto insert(HtmlPostDto updateData) throws ResponseDataException {
        /* 確認id是否存在 */
        if (updateData.getId() != null && updateData.getHtmlDocId() == null) {
            throw new ResponseDataException(-2, "", "資訊錯誤", "id錯誤", "htmlDocservice");
        }
        HtmlDoc doc = HtmlDoc.builder().title(updateData.getTitle()).insDate(Tool.now())
                .insUsr(SecurityUtils.getCurrentUsername()).build();
        htmlDocMapper.insertReturnId(doc);
        log.info("insert to html_doc:{}", doc);

        HtmlPost post = HtmlPost.builder()
                .htmlDocId(doc.getId())
                .beginDate(updateData.getBeginDate())
                .endDate(updateData.getEndDate())
                .display(updateData.getDisplay())
                .pin((updateData.getPin() != null) && updateData.getPin())
                .titleColor(updateData.getTitleColor() != null ? updateData.getTitleColor() : "#000000")
                .bold(updateData.getBold() != null && updateData.getBold())
                .build();
        htmlPostMapper.insertReturnId(post);
        log.info("insert to html_post:{}", post);

        updateData.setId(post.getId());
        updateData.setHtmlDocId(doc.getId());

        List<HtmlContent> contentList = htmlDocService.createHtmlContentList(updateData.getHtmlDocId(),
                updateData.getContent());
        for (HtmlContent htmlContent : contentList) {
            htmlContentMapper.insert(htmlContent);
            log.info("insert to html_content:{}", htmlContent);
        }
        /* 回傳新增後的資料 */
        return updateData;
    }

    @Override
    public HtmlPostDto get(Long id) throws ResponseDataException {
        HtmlPost post = htmlPostMapper.selectByPrimaryKey(id);
        if (post == null) {
            throw new ResponseDataException(-2, "", "資訊錯誤", "無此id", JOB_CODE);
        }
        HtmlDoc doc = htmlDocMapper.selectByPrimaryKey(post.getHtmlDocId());
        String content = htmlDocService.getContent(post.getHtmlDocId());
        return new HtmlPostDto(post, doc, content);

    }

    @Override
    public void delete(Long id) throws ResponseDataException {
        HtmlPost post = htmlPostMapper.selectByPrimaryKey(id);
        if (post == null) {
            throw new ResponseDataException(-2, "", "資訊錯誤", "id不存在", JOB_CODE);
        }
        htmlPostMapper.deleteByPrimaryKey(id);
        htmlDocService.delete(post.getHtmlDocId());

    }

    @Override
    public List<HtmlPostDto> getByDisplayType(String type) {
        TreeMap<Boolean, List<HtmlPostDto>> dtoMap = new TreeMap<>(Collections.reverseOrder()); // 降冪排序的tree map
        List<HtmlPost> all = htmlPostMapper.selectByExample(null);
        for (HtmlPost htmlPost : all) {
            /* 如果顯示位置正確寫公告日期區間正確 */
            if (htmlPost.getDisplay().contains(type)
                    && (htmlPost.getBeginDate() == null || htmlPost.getBeginDate().before(Tool.now())
                            && (htmlPost.getEndDate() == null || htmlPost.getEndDate().after(Tool.now())))) {
                HtmlDoc doc = htmlDocMapper.selectByPrimaryKey(htmlPost.getHtmlDocId());
                String content = htmlDocService.getContent(htmlPost.getHtmlDocId());
                dtoMap.computeIfAbsent(htmlPost.getPin(), key -> new ArrayList<>());
                dtoMap.computeIfPresent(htmlPost.getPin(), (key, value) -> value)
                        .add(new HtmlPostDto(htmlPost, doc, content));
            }
        }
        for (Map.Entry<Boolean, List<HtmlPostDto>> entry : dtoMap.entrySet()) {
            /* 用建立日期排序 */
            Collections.sort(entry.getValue(), (h1, h2) -> h2.getInsDate().compareTo(h1.getInsDate()));
        }
        return dtoMap.values().stream().flatMap(Collection::stream).collect(Collectors.toList());
    }

}
