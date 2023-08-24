package com.ezcore.tools.codedetail.po;

import java.util.Date;

public class CodeDetail {
    private Long cid;

    private Date insDate;

    private String insUsr;

    private Date updDate;

    private String updUsr;

    private String kind;

    private String code;

    private String name;

    private Boolean isEnabled;

    private String description;

    private String sortCode;

    private String property1;

    private String property2;

    private String property3;

    private String property4;

    private String property5;

    private String property6;

    private String property7;

    private String property8;

    private String property9;

    private Long childId;

    private Long parentId;

    public Long getCid() {
        return cid;
    }

    public void setCid(Long cid) {
        this.cid = cid;
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

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind == null ? null : kind.trim();
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Boolean getIsEnabled() {
        return isEnabled;
    }

    public void setIsEnabled(Boolean isEnabled) {
        this.isEnabled = isEnabled;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getSortCode() {
        return sortCode;
    }

    public void setSortCode(String sortCode) {
        this.sortCode = sortCode == null ? null : sortCode.trim();
    }

    public String getProperty1() {
        return property1;
    }

    public void setProperty1(String property1) {
        this.property1 = property1 == null ? null : property1.trim();
    }

    public String getProperty2() {
        return property2;
    }

    public void setProperty2(String property2) {
        this.property2 = property2 == null ? null : property2.trim();
    }

    public String getProperty3() {
        return property3;
    }

    public void setProperty3(String property3) {
        this.property3 = property3 == null ? null : property3.trim();
    }

    public String getProperty4() {
        return property4;
    }

    public void setProperty4(String property4) {
        this.property4 = property4 == null ? null : property4.trim();
    }

    public String getProperty5() {
        return property5;
    }

    public void setProperty5(String property5) {
        this.property5 = property5 == null ? null : property5.trim();
    }

    public String getProperty6() {
        return property6;
    }

    public void setProperty6(String property6) {
        this.property6 = property6 == null ? null : property6.trim();
    }

    public String getProperty7() {
        return property7;
    }

    public void setProperty7(String property7) {
        this.property7 = property7 == null ? null : property7.trim();
    }

    public String getProperty8() {
        return property8;
    }

    public void setProperty8(String property8) {
        this.property8 = property8 == null ? null : property8.trim();
    }

    public String getProperty9() {
        return property9;
    }

    public void setProperty9(String property9) {
        this.property9 = property9 == null ? null : property9.trim();
    }

    public Long getChildId() {
        return childId;
    }

    public void setChildId(Long childId) {
        this.childId = childId;
    }

    public Long getParetntId() {
        return parentId;
    }

    public void setParentId(Long parentId){
        this.parentId = parentId;
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
        CodeDetail other = (CodeDetail) that;
        return (this.getCid() == null ? other.getCid() == null : this.getCid().equals(other.getCid()))
            && (this.getInsDate() == null ? other.getInsDate() == null : this.getInsDate().equals(other.getInsDate()))
            && (this.getInsUsr() == null ? other.getInsUsr() == null : this.getInsUsr().equals(other.getInsUsr()))
            && (this.getUpdDate() == null ? other.getUpdDate() == null : this.getUpdDate().equals(other.getUpdDate()))
            && (this.getUpdUsr() == null ? other.getUpdUsr() == null : this.getUpdUsr().equals(other.getUpdUsr()))
            && (this.getKind() == null ? other.getKind() == null : this.getKind().equals(other.getKind()))
            && (this.getCode() == null ? other.getCode() == null : this.getCode().equals(other.getCode()))
            && (this.getName() == null ? other.getName() == null : this.getName().equals(other.getName()))
            && (this.getIsEnabled() == null ? other.getIsEnabled() == null : this.getIsEnabled().equals(other.getIsEnabled()))
            && (this.getDescription() == null ? other.getDescription() == null : this.getDescription().equals(other.getDescription()))
            && (this.getSortCode() == null ? other.getSortCode() == null : this.getSortCode().equals(other.getSortCode()))
            && (this.getProperty1() == null ? other.getProperty1() == null : this.getProperty1().equals(other.getProperty1()))
            && (this.getProperty2() == null ? other.getProperty2() == null : this.getProperty2().equals(other.getProperty2()))
            && (this.getProperty3() == null ? other.getProperty3() == null : this.getProperty3().equals(other.getProperty3()))
            && (this.getProperty4() == null ? other.getProperty4() == null : this.getProperty4().equals(other.getProperty4()))
            && (this.getProperty5() == null ? other.getProperty5() == null : this.getProperty5().equals(other.getProperty5()))
            && (this.getProperty6() == null ? other.getProperty6() == null : this.getProperty6().equals(other.getProperty6()))
            && (this.getProperty7() == null ? other.getProperty7() == null : this.getProperty7().equals(other.getProperty7()))
            && (this.getProperty8() == null ? other.getProperty8() == null : this.getProperty8().equals(other.getProperty8()))
            && (this.getProperty9() == null ? other.getProperty9() == null : this.getProperty9().equals(other.getProperty9()))
            && (this.getChildId() == null ? other.getChildId() == null : this.getChildId().equals(other.getChildId()))
            && (this.getParetntId() == null ? other.getParetntId() == null : this.getParetntId().equals(other.getParetntId()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getCid() == null) ? 0 : getCid().hashCode());
        result = prime * result + ((getInsDate() == null) ? 0 : getInsDate().hashCode());
        result = prime * result + ((getInsUsr() == null) ? 0 : getInsUsr().hashCode());
        result = prime * result + ((getUpdDate() == null) ? 0 : getUpdDate().hashCode());
        result = prime * result + ((getUpdUsr() == null) ? 0 : getUpdUsr().hashCode());
        result = prime * result + ((getKind() == null) ? 0 : getKind().hashCode());
        result = prime * result + ((getCode() == null) ? 0 : getCode().hashCode());
        result = prime * result + ((getName() == null) ? 0 : getName().hashCode());
        result = prime * result + ((getIsEnabled() == null) ? 0 : getIsEnabled().hashCode());
        result = prime * result + ((getDescription() == null) ? 0 : getDescription().hashCode());
        result = prime * result + ((getSortCode() == null) ? 0 : getSortCode().hashCode());
        result = prime * result + ((getProperty1() == null) ? 0 : getProperty1().hashCode());
        result = prime * result + ((getProperty2() == null) ? 0 : getProperty2().hashCode());
        result = prime * result + ((getProperty3() == null) ? 0 : getProperty3().hashCode());
        result = prime * result + ((getProperty4() == null) ? 0 : getProperty4().hashCode());
        result = prime * result + ((getProperty5() == null) ? 0 : getProperty5().hashCode());
        result = prime * result + ((getProperty6() == null) ? 0 : getProperty6().hashCode());
        result = prime * result + ((getProperty7() == null) ? 0 : getProperty7().hashCode());
        result = prime * result + ((getProperty8() == null) ? 0 : getProperty8().hashCode());
        result = prime * result + ((getProperty9() == null) ? 0 : getProperty9().hashCode());
        result = prime * result + ((getChildId() == null) ? 0 : getChildId().hashCode());
        result = prime * result + ((getParetntId() == null) ? 0 : getParetntId().hashCode());
        return result;
    }
}