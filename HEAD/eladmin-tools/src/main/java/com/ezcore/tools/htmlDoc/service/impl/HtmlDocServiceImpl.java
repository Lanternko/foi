package com.ezcore.tools.htmlDoc.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezcore.tools.codedetail.model.Tool;
import com.ezcore.tools.codedetail.model.exception.ResponseDataException;
import com.ezcore.tools.htmlDoc.dao.HtmlContentMapper;
import com.ezcore.tools.htmlDoc.dao.HtmlDocMapper;
import com.ezcore.tools.htmlDoc.dto.HtmlDocDto;
import com.ezcore.tools.htmlDoc.po.HtmlContent;
import com.ezcore.tools.htmlDoc.po.HtmlContentExample;
import com.ezcore.tools.htmlDoc.po.HtmlDoc;
import com.ezcore.tools.htmlDoc.service.HtmlDocService;

import lombok.extern.slf4j.Slf4j;
import me.zhengjie.utils.SecurityUtils;
@Slf4j
@Component
@Transactional
public class HtmlDocServiceImpl implements HtmlDocService{
    private static final int CONTENT_LENGTH = 32000;
    private static final String JOB_CODE = "html_doc_service";

    @Autowired HtmlDocMapper htmlDocMapper;
    @Autowired HtmlContentMapper htmlContentMapper;

    @Override
    public HtmlDoc updateHtmlDoc(HtmlDocDto updateData) throws ResponseDataException{
        HtmlDoc orignalData = htmlDocMapper.selectByPrimaryKey(updateData.getHtmlDocId());
        if(orignalData == null){
            throw new ResponseDataException(-2,"","資訊錯誤","html doc不存在","htmlDocservice");
        }

        orignalData.setTitle(updateData.getTitle());
        orignalData.setUpdDate(Tool.now());
        orignalData.setUpdUsr(SecurityUtils.getCurrentUsername());

        return orignalData;

    }

    @Override
    public List<HtmlContent> createHtmlContentList(Long htmlDocId, String content){
        List<HtmlContent> result = new ArrayList<>();
        StringBuffer stringBuffer = new StringBuffer(content);
        int contentLenght = content.length();
        int htmlContentQnt = contentLenght/ CONTENT_LENGTH;
        if(contentLenght%CONTENT_LENGTH>0){
            htmlContentQnt+=1;
        }

        for(int i=0;i<htmlContentQnt;i++){
            HtmlContent htmlContent = new HtmlContent();
            htmlContent.setHtmlDocId(htmlDocId);
            htmlContent.setOrderNo(i);
            if(( (i+1)*CONTENT_LENGTH-1) < contentLenght){
            htmlContent.setContent(stringBuffer.substring(i*CONTENT_LENGTH, (i+1)*CONTENT_LENGTH).toString());
            }else{
                htmlContent.setContent(stringBuffer.substring(i*CONTENT_LENGTH, contentLenght).toString());
            }

            result.add(htmlContent);
        }

        return result;
    }

    @Override
    public void deleteContent(Long htmlDocId){
        HtmlContentExample example = new HtmlContentExample();
        example.createCriteria().andHtmlDocIdEqualTo(htmlDocId);
        List<HtmlContent> orignalList = htmlContentMapper.selectByExample(example);
        if(orignalList.size()!=0){
            /* 刪除原本資料 */
            for (HtmlContent htmlContent : orignalList) {
                htmlContentMapper.deleteByPrimaryKey(htmlContent.getId());
                log.info("delete to html_content:{}", htmlContent.getId());

            }
        }
    }
    @Override
    public String getContent (Long htmlDocId){
        HtmlContentExample htmlContentExample = new HtmlContentExample();
        htmlContentExample.createCriteria().andHtmlDocIdEqualTo(htmlDocId);
        htmlContentExample.setOrderByClause("order_no");
        List<HtmlContent> contentList = htmlContentMapper.selectByExample(htmlContentExample);
        StringBuffer content = new StringBuffer();
        /* 把content串起來 */
        for (HtmlContent htmlContent : contentList) {
            content.append(htmlContent.getContent());
        }
       return content.toString();
    }
    @Override
    public void delete (Long htmlDocId) throws ResponseDataException {
        HtmlDoc doc = htmlDocMapper.selectByPrimaryKey(htmlDocId);
        if(doc == null){
            throw new ResponseDataException(-2,"","資訊錯誤","doc id不存在",JOB_CODE);
        }
        deleteContent(htmlDocId);
        htmlDocMapper.deleteByPrimaryKey(doc.getId());

    }

}
