package com.ezcore.tools.htmlHelper.po;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
@Data
@SuperBuilder
@NoArgsConstructor
public class HtmlHelper {
    private Long id;

    private String menuName;

    private Long htmlDocId;

    private Date beginDate;

    private Date endDate;

    private Integer windowSize;

//    public Long getId() {
//        return id;
//    }
//
//    public void setId(Long id) {
//        this.id = id;
//    }
//
//    public String getMenuName() {
//        return menuName;
//    }
//
//    public void setMenuName(String menuName) {
//        this.menuName = menuName == null ? null : menuName.trim();
//    }
//
//    public Long getHtmlDocId() {
//        return htmlDocId;
//    }
//
//    public void setHtmlDocId(Long htmlDocId) {
//        this.htmlDocId = htmlDocId;
//    }
//
//    public Date getBeginDate() {
//        return beginDate;
//    }
//
//    public void setBeginDate(Date beginDate) {
//        this.beginDate = beginDate;
//    }
//
//    public Date getEndDate() {
//        return endDate;
//    }
//
//    public void setEndDate(Date endDate) {
//        this.endDate = endDate;
//    }
//
//    public Integer getWindowSize() {
//        return windowSize;
//    }
//
//    public void setWindowSize(Integer windowSize) {
//        this.windowSize = windowSize;
//    }

//    @Override
//    public boolean equals(Object that) {
//        if (this == that) {
//            return true;
//        }
//        if (that == null) {
//            return false;
//        }
//        if (getClass() != that.getClass()) {
//            return false;
//        }
//        HtmlHelper other = (HtmlHelper) that;
//        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
//            && (this.getMenuName() == null ? other.getMenuName() == null : this.getMenuName().equals(other.getMenuName()))
//            && (this.getHtmlDocId() == null ? other.getHtmlDocId() == null : this.getHtmlDocId().equals(other.getHtmlDocId()))
//            && (this.getBeginDate() == null ? other.getBeginDate() == null : this.getBeginDate().equals(other.getBeginDate()))
//            && (this.getEndDate() == null ? other.getEndDate() == null : this.getEndDate().equals(other.getEndDate()))
//            && (this.getWindowSize() == null ? other.getWindowSize() == null : this.getWindowSize().equals(other.getWindowSize()));
//}
//
//    @Override
//    public int hashCode() {
//        final int prime = 31;
//        int result = 1;
//        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
//        result = prime * result + ((getMenuName() == null) ? 0 : getMenuName().hashCode());
//        result = prime * result + ((getHtmlDocId() == null) ? 0 : getHtmlDocId().hashCode());
//        result = prime * result + ((getBeginDate() == null) ? 0 : getBeginDate().hashCode());
//        result = prime * result + ((getEndDate() == null) ? 0 : getEndDate().hashCode());
//        result = prime * result + ((getWindowSize() == null) ? 0 : getWindowSize().hashCode());
//        return result;
//    }
}