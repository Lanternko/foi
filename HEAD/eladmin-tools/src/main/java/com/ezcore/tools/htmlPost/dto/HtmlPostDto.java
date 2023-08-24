package com.ezcore.tools.htmlPost.dto;

import com.ezcore.tools.htmlDoc.dto.HtmlDocDto;
import com.ezcore.tools.htmlDoc.po.HtmlDoc;
import com.ezcore.tools.htmlPost.po.HtmlPost;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@Getter
@Setter
@SuperBuilder
@NoArgsConstructor
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
public class HtmlPostDto extends HtmlDocDto{
    String display;
    String titleColor;
    Boolean pin;
    Boolean bold;
    /**
     * constructor
     * @param htmlPost
     * @param doc
     * @param content
     */
    public HtmlPostDto (HtmlPost htmlPost, HtmlDoc doc, String content) {
        bold = htmlPost.getBold();
        pin = htmlPost.getPin();
        titleColor = htmlPost.getTitleColor();
        display = htmlPost.getDisplay();
        beginDate = htmlPost.getBeginDate();
        endDate = htmlPost.getEndDate();
        title = doc.getTitle();
        this.content = content;
        id = htmlPost.getId();
        htmlDocId = htmlPost.getHtmlDocId();
        insDate = doc.getInsDate();
        insUsr = doc.getInsUsr();
        updDate = doc.getUpdDate();
        updUsr = doc.getUpdUsr();
    }
}
