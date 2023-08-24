package com.ezcore.tools.htmlDoc.po;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
@Data
@SuperBuilder
@NoArgsConstructor
public class HtmlDoc {
    private Long id;

    private String title;

    private Date updDate;

    private String updUsr;

    private Date insDate;

    private String insUsr;

    private String memo;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Date getUpdDate() {
        return updDate;
    }

    public void setUpdDate(Date updDate) {
        this.updDate = updDate;
    }

    public String getUpdUsr() {
        return updUsr;
    }

    public void setUpdUsr(String updUsr) {
        this.updUsr = updUsr == null ? null : updUsr.trim();
    }

    public Date getInsDate() {
        return insDate;
    }

    public void setInsDate(Date insDate) {
        this.insDate = insDate;
    }

    public String getInsUsr() {
        return insUsr;
    }

    public void setInsUsr(String insUsr) {
        this.insUsr = insUsr == null ? null : insUsr.trim();
    }

    public String getMemo() {
        return memo; 
    }
    public void setMemo(String memo) {
        this.memo = memo == null ? null : memo.trim();
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        HtmlDoc other = (HtmlDoc) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getTitle() == null ? other.getTitle() == null : this.getTitle().equals(other.getTitle()))
            && (this.getUpdDate() == null ? other.getUpdDate() == null : this.getUpdDate().equals(other.getUpdDate()))
            && (this.getUpdUsr() == null ? other.getUpdUsr() == null : this.getUpdUsr().equals(other.getUpdUsr()))
            && (this.getInsDate() == null ? other.getInsDate() == null : this.getInsDate().equals(other.getInsDate()))
            && (this.getInsUsr() == null ? other.getInsUsr() == null : this.getInsUsr().equals(other.getInsUsr()))
            && (this.getMemo() == null ? other.getMemo() == null : this.getMemo().equals(other.getMemo()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getTitle() == null) ? 0 : getTitle().hashCode());
        result = prime * result + ((getUpdDate() == null) ? 0 : getUpdDate().hashCode());
        result = prime * result + ((getUpdUsr() == null) ? 0 : getUpdUsr().hashCode());
        result = prime * result + ((getInsDate() == null) ? 0 : getInsDate().hashCode());
        result = prime * result + ((getInsUsr() == null) ? 0 : getInsUsr().hashCode());
        result = prime * result + ((getMemo() == null) ? 0 : getMemo().hashCode());
        return result;
    }
}