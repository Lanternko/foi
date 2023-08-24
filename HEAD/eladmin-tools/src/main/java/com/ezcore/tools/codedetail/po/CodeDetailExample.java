package com.ezcore.tools.codedetail.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CodeDetailExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CodeDetailExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new NullPointerException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new NullPointerException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new NullPointerException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andCidIsNull() {
            addCriterion("cid is null");
            return (Criteria) this;
        }

        public Criteria andCidIsNotNull() {
            addCriterion("cid is not null");
            return (Criteria) this;
        }

        public Criteria andCidEqualTo(Long value) {
            addCriterion("cid =", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidNotEqualTo(Long value) {
            addCriterion("cid <>", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidGreaterThan(Long value) {
            addCriterion("cid >", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidGreaterThanOrEqualTo(Long value) {
            addCriterion("cid >=", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidLessThan(Long value) {
            addCriterion("cid <", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidLessThanOrEqualTo(Long value) {
            addCriterion("cid <=", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidIn(List<Long> values) {
            addCriterion("cid in", values, "cid");
            return (Criteria) this;
        }

        public Criteria andCidNotIn(List<Long> values) {
            addCriterion("cid not in", values, "cid");
            return (Criteria) this;
        }

        public Criteria andCidBetween(Long value1, Long value2) {
            addCriterion("cid between", value1, value2, "cid");
            return (Criteria) this;
        }

        public Criteria andCidNotBetween(Long value1, Long value2) {
            addCriterion("cid not between", value1, value2, "cid");
            return (Criteria) this;
        }

        public Criteria andInsDateIsNull() {
            addCriterion("ins_date is null");
            return (Criteria) this;
        }

        public Criteria andInsDateIsNotNull() {
            addCriterion("ins_date is not null");
            return (Criteria) this;
        }

        public Criteria andInsDateEqualTo(Date value) {
            addCriterion("ins_date =", value, "insDate");
            return (Criteria) this;
        }

        public Criteria andInsDateNotEqualTo(Date value) {
            addCriterion("ins_date <>", value, "insDate");
            return (Criteria) this;
        }

        public Criteria andInsDateGreaterThan(Date value) {
            addCriterion("ins_date >", value, "insDate");
            return (Criteria) this;
        }

        public Criteria andInsDateGreaterThanOrEqualTo(Date value) {
            addCriterion("ins_date >=", value, "insDate");
            return (Criteria) this;
        }

        public Criteria andInsDateLessThan(Date value) {
            addCriterion("ins_date <", value, "insDate");
            return (Criteria) this;
        }

        public Criteria andInsDateLessThanOrEqualTo(Date value) {
            addCriterion("ins_date <=", value, "insDate");
            return (Criteria) this;
        }

        public Criteria andInsDateIn(List<Date> values) {
            addCriterion("ins_date in", values, "insDate");
            return (Criteria) this;
        }

        public Criteria andInsDateNotIn(List<Date> values) {
            addCriterion("ins_date not in", values, "insDate");
            return (Criteria) this;
        }

        public Criteria andInsDateBetween(Date value1, Date value2) {
            addCriterion("ins_date between", value1, value2, "insDate");
            return (Criteria) this;
        }

        public Criteria andInsDateNotBetween(Date value1, Date value2) {
            addCriterion("ins_date not between", value1, value2, "insDate");
            return (Criteria) this;
        }

        public Criteria andInsUsrIsNull() {
            addCriterion("ins_usr is null");
            return (Criteria) this;
        }

        public Criteria andInsUsrIsNotNull() {
            addCriterion("ins_usr is not null");
            return (Criteria) this;
        }

        public Criteria andInsUsrEqualTo(String value) {
            addCriterion("ins_usr =", value, "insUsr");
            return (Criteria) this;
        }

        public Criteria andInsUsrNotEqualTo(String value) {
            addCriterion("ins_usr <>", value, "insUsr");
            return (Criteria) this;
        }

        public Criteria andInsUsrGreaterThan(String value) {
            addCriterion("ins_usr >", value, "insUsr");
            return (Criteria) this;
        }

        public Criteria andInsUsrGreaterThanOrEqualTo(String value) {
            addCriterion("ins_usr >=", value, "insUsr");
            return (Criteria) this;
        }

        public Criteria andInsUsrLessThan(String value) {
            addCriterion("ins_usr <", value, "insUsr");
            return (Criteria) this;
        }

        public Criteria andInsUsrLessThanOrEqualTo(String value) {
            addCriterion("ins_usr <=", value, "insUsr");
            return (Criteria) this;
        }

        public Criteria andInsUsrLike(String value) {
            addCriterion("ins_usr like", value, "insUsr");
            return (Criteria) this;
        }

        public Criteria andInsUsrNotLike(String value) {
            addCriterion("ins_usr not like", value, "insUsr");
            return (Criteria) this;
        }

        public Criteria andInsUsrIn(List<String> values) {
            addCriterion("ins_usr in", values, "insUsr");
            return (Criteria) this;
        }

        public Criteria andInsUsrNotIn(List<String> values) {
            addCriterion("ins_usr not in", values, "insUsr");
            return (Criteria) this;
        }

        public Criteria andInsUsrBetween(String value1, String value2) {
            addCriterion("ins_usr between", value1, value2, "insUsr");
            return (Criteria) this;
        }

        public Criteria andInsUsrNotBetween(String value1, String value2) {
            addCriterion("ins_usr not between", value1, value2, "insUsr");
            return (Criteria) this;
        }

        public Criteria andUpdDateIsNull() {
            addCriterion("upd_date is null");
            return (Criteria) this;
        }

        public Criteria andUpdDateIsNotNull() {
            addCriterion("upd_date is not null");
            return (Criteria) this;
        }

        public Criteria andUpdDateEqualTo(Date value) {
            addCriterion("upd_date =", value, "updDate");
            return (Criteria) this;
        }

        public Criteria andUpdDateNotEqualTo(Date value) {
            addCriterion("upd_date <>", value, "updDate");
            return (Criteria) this;
        }

        public Criteria andUpdDateGreaterThan(Date value) {
            addCriterion("upd_date >", value, "updDate");
            return (Criteria) this;
        }

        public Criteria andUpdDateGreaterThanOrEqualTo(Date value) {
            addCriterion("upd_date >=", value, "updDate");
            return (Criteria) this;
        }

        public Criteria andUpdDateLessThan(Date value) {
            addCriterion("upd_date <", value, "updDate");
            return (Criteria) this;
        }

        public Criteria andUpdDateLessThanOrEqualTo(Date value) {
            addCriterion("upd_date <=", value, "updDate");
            return (Criteria) this;
        }

        public Criteria andUpdDateIn(List<Date> values) {
            addCriterion("upd_date in", values, "updDate");
            return (Criteria) this;
        }

        public Criteria andUpdDateNotIn(List<Date> values) {
            addCriterion("upd_date not in", values, "updDate");
            return (Criteria) this;
        }

        public Criteria andUpdDateBetween(Date value1, Date value2) {
            addCriterion("upd_date between", value1, value2, "updDate");
            return (Criteria) this;
        }

        public Criteria andUpdDateNotBetween(Date value1, Date value2) {
            addCriterion("upd_date not between", value1, value2, "updDate");
            return (Criteria) this;
        }

        public Criteria andUpdUsrIsNull() {
            addCriterion("upd_usr is null");
            return (Criteria) this;
        }

        public Criteria andUpdUsrIsNotNull() {
            addCriterion("upd_usr is not null");
            return (Criteria) this;
        }

        public Criteria andUpdUsrEqualTo(String value) {
            addCriterion("upd_usr =", value, "updUsr");
            return (Criteria) this;
        }

        public Criteria andUpdUsrNotEqualTo(String value) {
            addCriterion("upd_usr <>", value, "updUsr");
            return (Criteria) this;
        }

        public Criteria andUpdUsrGreaterThan(String value) {
            addCriterion("upd_usr >", value, "updUsr");
            return (Criteria) this;
        }

        public Criteria andUpdUsrGreaterThanOrEqualTo(String value) {
            addCriterion("upd_usr >=", value, "updUsr");
            return (Criteria) this;
        }

        public Criteria andUpdUsrLessThan(String value) {
            addCriterion("upd_usr <", value, "updUsr");
            return (Criteria) this;
        }

        public Criteria andUpdUsrLessThanOrEqualTo(String value) {
            addCriterion("upd_usr <=", value, "updUsr");
            return (Criteria) this;
        }

        public Criteria andUpdUsrLike(String value) {
            addCriterion("upd_usr like", value, "updUsr");
            return (Criteria) this;
        }

        public Criteria andUpdUsrNotLike(String value) {
            addCriterion("upd_usr not like", value, "updUsr");
            return (Criteria) this;
        }

        public Criteria andUpdUsrIn(List<String> values) {
            addCriterion("upd_usr in", values, "updUsr");
            return (Criteria) this;
        }

        public Criteria andUpdUsrNotIn(List<String> values) {
            addCriterion("upd_usr not in", values, "updUsr");
            return (Criteria) this;
        }

        public Criteria andUpdUsrBetween(String value1, String value2) {
            addCriterion("upd_usr between", value1, value2, "updUsr");
            return (Criteria) this;
        }

        public Criteria andUpdUsrNotBetween(String value1, String value2) {
            addCriterion("upd_usr not between", value1, value2, "updUsr");
            return (Criteria) this;
        }

        public Criteria andKindIsNull() {
            addCriterion("kind is null");
            return (Criteria) this;
        }

        public Criteria andKindIsNotNull() {
            addCriterion("kind is not null");
            return (Criteria) this;
        }

        public Criteria andKindEqualTo(String value) {
            addCriterion("kind =", value, "kind");
            return (Criteria) this;
        }

        public Criteria andKindNotEqualTo(String value) {
            addCriterion("kind <>", value, "kind");
            return (Criteria) this;
        }

        public Criteria andKindGreaterThan(String value) {
            addCriterion("kind >", value, "kind");
            return (Criteria) this;
        }

        public Criteria andKindGreaterThanOrEqualTo(String value) {
            addCriterion("kind >=", value, "kind");
            return (Criteria) this;
        }

        public Criteria andKindLessThan(String value) {
            addCriterion("kind <", value, "kind");
            return (Criteria) this;
        }

        public Criteria andKindLessThanOrEqualTo(String value) {
            addCriterion("kind <=", value, "kind");
            return (Criteria) this;
        }

        public Criteria andKindLike(String value) {
            addCriterion("kind like", value, "kind");
            return (Criteria) this;
        }

        public Criteria andKindNotLike(String value) {
            addCriterion("kind not like", value, "kind");
            return (Criteria) this;
        }

        public Criteria andKindIn(List<String> values) {
            addCriterion("kind in", values, "kind");
            return (Criteria) this;
        }

        public Criteria andKindNotIn(List<String> values) {
            addCriterion("kind not in", values, "kind");
            return (Criteria) this;
        }

        public Criteria andKindBetween(String value1, String value2) {
            addCriterion("kind between", value1, value2, "kind");
            return (Criteria) this;
        }

        public Criteria andKindNotBetween(String value1, String value2) {
            addCriterion("kind not between", value1, value2, "kind");
            return (Criteria) this;
        }

        public Criteria andCodeIsNull() {
            addCriterion("code is null");
            return (Criteria) this;
        }

        public Criteria andCodeIsNotNull() {
            addCriterion("code is not null");
            return (Criteria) this;
        }

        public Criteria andCodeEqualTo(String value) {
            addCriterion("code =", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeNotEqualTo(String value) {
            addCriterion("code <>", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeGreaterThan(String value) {
            addCriterion("code >", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeGreaterThanOrEqualTo(String value) {
            addCriterion("code >=", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeLessThan(String value) {
            addCriterion("code <", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeLessThanOrEqualTo(String value) {
            addCriterion("code <=", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeLike(String value) {
            addCriterion("code like", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeNotLike(String value) {
            addCriterion("code not like", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeIn(List<String> values) {
            addCriterion("code in", values, "code");
            return (Criteria) this;
        }

        public Criteria andCodeNotIn(List<String> values) {
            addCriterion("code not in", values, "code");
            return (Criteria) this;
        }

        public Criteria andCodeBetween(String value1, String value2) {
            addCriterion("code between", value1, value2, "code");
            return (Criteria) this;
        }

        public Criteria andCodeNotBetween(String value1, String value2) {
            addCriterion("code not between", value1, value2, "code");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andIsEnabledIsNull() {
            addCriterion("is_enabled is null");
            return (Criteria) this;
        }

        public Criteria andIsEnabledIsNotNull() {
            addCriterion("is_enabled is not null");
            return (Criteria) this;
        }

        public Criteria andIsEnabledEqualTo(Boolean value) {
            addCriterion("is_enabled =", value, "isEnabled");
            return (Criteria) this;
        }

        public Criteria andIsEnabledNotEqualTo(Boolean value) {
            addCriterion("is_enabled <>", value, "isEnabled");
            return (Criteria) this;
        }

        public Criteria andIsEnabledGreaterThan(Boolean value) {
            addCriterion("is_enabled >", value, "isEnabled");
            return (Criteria) this;
        }

        public Criteria andIsEnabledGreaterThanOrEqualTo(Boolean value) {
            addCriterion("is_enabled >=", value, "isEnabled");
            return (Criteria) this;
        }

        public Criteria andIsEnabledLessThan(Boolean value) {
            addCriterion("is_enabled <", value, "isEnabled");
            return (Criteria) this;
        }

        public Criteria andIsEnabledLessThanOrEqualTo(Boolean value) {
            addCriterion("is_enabled <=", value, "isEnabled");
            return (Criteria) this;
        }

        public Criteria andIsEnabledIn(List<Boolean> values) {
            addCriterion("is_enabled in", values, "isEnabled");
            return (Criteria) this;
        }

        public Criteria andIsEnabledNotIn(List<Boolean> values) {
            addCriterion("is_enabled not in", values, "isEnabled");
            return (Criteria) this;
        }

        public Criteria andIsEnabledBetween(Boolean value1, Boolean value2) {
            addCriterion("is_enabled between", value1, value2, "isEnabled");
            return (Criteria) this;
        }

        public Criteria andIsEnabledNotBetween(Boolean value1, Boolean value2) {
            addCriterion("is_enabled not between", value1, value2, "isEnabled");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNull() {
            addCriterion("description is null");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNotNull() {
            addCriterion("description is not null");
            return (Criteria) this;
        }

        public Criteria andDescriptionEqualTo(String value) {
            addCriterion("description =", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotEqualTo(String value) {
            addCriterion("description <>", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThan(String value) {
            addCriterion("description >", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("description >=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThan(String value) {
            addCriterion("description <", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThanOrEqualTo(String value) {
            addCriterion("description <=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLike(String value) {
            addCriterion("description like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotLike(String value) {
            addCriterion("description not like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionIn(List<String> values) {
            addCriterion("description in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotIn(List<String> values) {
            addCriterion("description not in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionBetween(String value1, String value2) {
            addCriterion("description between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotBetween(String value1, String value2) {
            addCriterion("description not between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andSortCodeIsNull() {
            addCriterion("sort_code is null");
            return (Criteria) this;
        }

        public Criteria andSortCodeIsNotNull() {
            addCriterion("sort_code is not null");
            return (Criteria) this;
        }

        public Criteria andSortCodeEqualTo(String value) {
            addCriterion("sort_code =", value, "sortCode");
            return (Criteria) this;
        }

        public Criteria andSortCodeNotEqualTo(String value) {
            addCriterion("sort_code <>", value, "sortCode");
            return (Criteria) this;
        }

        public Criteria andSortCodeGreaterThan(String value) {
            addCriterion("sort_code >", value, "sortCode");
            return (Criteria) this;
        }

        public Criteria andSortCodeGreaterThanOrEqualTo(String value) {
            addCriterion("sort_code >=", value, "sortCode");
            return (Criteria) this;
        }

        public Criteria andSortCodeLessThan(String value) {
            addCriterion("sort_code <", value, "sortCode");
            return (Criteria) this;
        }

        public Criteria andSortCodeLessThanOrEqualTo(String value) {
            addCriterion("sort_code <=", value, "sortCode");
            return (Criteria) this;
        }

        public Criteria andSortCodeLike(String value) {
            addCriterion("sort_code like", value, "sortCode");
            return (Criteria) this;
        }

        public Criteria andSortCodeNotLike(String value) {
            addCriterion("sort_code not like", value, "sortCode");
            return (Criteria) this;
        }

        public Criteria andSortCodeIn(List<String> values) {
            addCriterion("sort_code in", values, "sortCode");
            return (Criteria) this;
        }

        public Criteria andSortCodeNotIn(List<String> values) {
            addCriterion("sort_code not in", values, "sortCode");
            return (Criteria) this;
        }

        public Criteria andSortCodeBetween(String value1, String value2) {
            addCriterion("sort_code between", value1, value2, "sortCode");
            return (Criteria) this;
        }

        public Criteria andSortCodeNotBetween(String value1, String value2) {
            addCriterion("sort_code not between", value1, value2, "sortCode");
            return (Criteria) this;
        }

        public Criteria andProperty1IsNull() {
            addCriterion("property1 is null");
            return (Criteria) this;
        }

        public Criteria andProperty1IsNotNull() {
            addCriterion("property1 is not null");
            return (Criteria) this;
        }

        public Criteria andProperty1EqualTo(String value) {
            addCriterion("property1 =", value, "property1");
            return (Criteria) this;
        }

        public Criteria andProperty1NotEqualTo(String value) {
            addCriterion("property1 <>", value, "property1");
            return (Criteria) this;
        }

        public Criteria andProperty1GreaterThan(String value) {
            addCriterion("property1 >", value, "property1");
            return (Criteria) this;
        }

        public Criteria andProperty1GreaterThanOrEqualTo(String value) {
            addCriterion("property1 >=", value, "property1");
            return (Criteria) this;
        }

        public Criteria andProperty1LessThan(String value) {
            addCriterion("property1 <", value, "property1");
            return (Criteria) this;
        }

        public Criteria andProperty1LessThanOrEqualTo(String value) {
            addCriterion("property1 <=", value, "property1");
            return (Criteria) this;
        }

        public Criteria andProperty1Like(String value) {
            addCriterion("property1 like", value, "property1");
            return (Criteria) this;
        }

        public Criteria andProperty1NotLike(String value) {
            addCriterion("property1 not like", value, "property1");
            return (Criteria) this;
        }

        public Criteria andProperty1In(List<String> values) {
            addCriterion("property1 in", values, "property1");
            return (Criteria) this;
        }

        public Criteria andProperty1NotIn(List<String> values) {
            addCriterion("property1 not in", values, "property1");
            return (Criteria) this;
        }

        public Criteria andProperty1Between(String value1, String value2) {
            addCriterion("property1 between", value1, value2, "property1");
            return (Criteria) this;
        }

        public Criteria andProperty1NotBetween(String value1, String value2) {
            addCriterion("property1 not between", value1, value2, "property1");
            return (Criteria) this;
        }

        public Criteria andProperty2IsNull() {
            addCriterion("property2 is null");
            return (Criteria) this;
        }

        public Criteria andProperty2IsNotNull() {
            addCriterion("property2 is not null");
            return (Criteria) this;
        }

        public Criteria andProperty2EqualTo(String value) {
            addCriterion("property2 =", value, "property2");
            return (Criteria) this;
        }

        public Criteria andProperty2NotEqualTo(String value) {
            addCriterion("property2 <>", value, "property2");
            return (Criteria) this;
        }

        public Criteria andProperty2GreaterThan(String value) {
            addCriterion("property2 >", value, "property2");
            return (Criteria) this;
        }

        public Criteria andProperty2GreaterThanOrEqualTo(String value) {
            addCriterion("property2 >=", value, "property2");
            return (Criteria) this;
        }

        public Criteria andProperty2LessThan(String value) {
            addCriterion("property2 <", value, "property2");
            return (Criteria) this;
        }

        public Criteria andProperty2LessThanOrEqualTo(String value) {
            addCriterion("property2 <=", value, "property2");
            return (Criteria) this;
        }

        public Criteria andProperty2Like(String value) {
            addCriterion("property2 like", value, "property2");
            return (Criteria) this;
        }

        public Criteria andProperty2NotLike(String value) {
            addCriterion("property2 not like", value, "property2");
            return (Criteria) this;
        }

        public Criteria andProperty2In(List<String> values) {
            addCriterion("property2 in", values, "property2");
            return (Criteria) this;
        }

        public Criteria andProperty2NotIn(List<String> values) {
            addCriterion("property2 not in", values, "property2");
            return (Criteria) this;
        }

        public Criteria andProperty2Between(String value1, String value2) {
            addCriterion("property2 between", value1, value2, "property2");
            return (Criteria) this;
        }

        public Criteria andProperty2NotBetween(String value1, String value2) {
            addCriterion("property2 not between", value1, value2, "property2");
            return (Criteria) this;
        }

        public Criteria andProperty3IsNull() {
            addCriterion("property3 is null");
            return (Criteria) this;
        }

        public Criteria andProperty3IsNotNull() {
            addCriterion("property3 is not null");
            return (Criteria) this;
        }

        public Criteria andProperty3EqualTo(String value) {
            addCriterion("property3 =", value, "property3");
            return (Criteria) this;
        }

        public Criteria andProperty3NotEqualTo(String value) {
            addCriterion("property3 <>", value, "property3");
            return (Criteria) this;
        }

        public Criteria andProperty3GreaterThan(String value) {
            addCriterion("property3 >", value, "property3");
            return (Criteria) this;
        }

        public Criteria andProperty3GreaterThanOrEqualTo(String value) {
            addCriterion("property3 >=", value, "property3");
            return (Criteria) this;
        }

        public Criteria andProperty3LessThan(String value) {
            addCriterion("property3 <", value, "property3");
            return (Criteria) this;
        }

        public Criteria andProperty3LessThanOrEqualTo(String value) {
            addCriterion("property3 <=", value, "property3");
            return (Criteria) this;
        }

        public Criteria andProperty3Like(String value) {
            addCriterion("property3 like", value, "property3");
            return (Criteria) this;
        }

        public Criteria andProperty3NotLike(String value) {
            addCriterion("property3 not like", value, "property3");
            return (Criteria) this;
        }

        public Criteria andProperty3In(List<String> values) {
            addCriterion("property3 in", values, "property3");
            return (Criteria) this;
        }

        public Criteria andProperty3NotIn(List<String> values) {
            addCriterion("property3 not in", values, "property3");
            return (Criteria) this;
        }

        public Criteria andProperty3Between(String value1, String value2) {
            addCriterion("property3 between", value1, value2, "property3");
            return (Criteria) this;
        }

        public Criteria andProperty3NotBetween(String value1, String value2) {
            addCriterion("property3 not between", value1, value2, "property3");
            return (Criteria) this;
        }

        public Criteria andProperty4IsNull() {
            addCriterion("property4 is null");
            return (Criteria) this;
        }

        public Criteria andProperty4IsNotNull() {
            addCriterion("property4 is not null");
            return (Criteria) this;
        }

        public Criteria andProperty4EqualTo(String value) {
            addCriterion("property4 =", value, "property4");
            return (Criteria) this;
        }

        public Criteria andProperty4NotEqualTo(String value) {
            addCriterion("property4 <>", value, "property4");
            return (Criteria) this;
        }

        public Criteria andProperty4GreaterThan(String value) {
            addCriterion("property4 >", value, "property4");
            return (Criteria) this;
        }

        public Criteria andProperty4GreaterThanOrEqualTo(String value) {
            addCriterion("property4 >=", value, "property4");
            return (Criteria) this;
        }

        public Criteria andProperty4LessThan(String value) {
            addCriterion("property4 <", value, "property4");
            return (Criteria) this;
        }

        public Criteria andProperty4LessThanOrEqualTo(String value) {
            addCriterion("property4 <=", value, "property4");
            return (Criteria) this;
        }

        public Criteria andProperty4Like(String value) {
            addCriterion("property4 like", value, "property4");
            return (Criteria) this;
        }

        public Criteria andProperty4NotLike(String value) {
            addCriterion("property4 not like", value, "property4");
            return (Criteria) this;
        }

        public Criteria andProperty4In(List<String> values) {
            addCriterion("property4 in", values, "property4");
            return (Criteria) this;
        }

        public Criteria andProperty4NotIn(List<String> values) {
            addCriterion("property4 not in", values, "property4");
            return (Criteria) this;
        }

        public Criteria andProperty4Between(String value1, String value2) {
            addCriterion("property4 between", value1, value2, "property4");
            return (Criteria) this;
        }

        public Criteria andProperty4NotBetween(String value1, String value2) {
            addCriterion("property4 not between", value1, value2, "property4");
            return (Criteria) this;
        }

        public Criteria andProperty5IsNull() {
            addCriterion("property5 is null");
            return (Criteria) this;
        }

        public Criteria andProperty5IsNotNull() {
            addCriterion("property5 is not null");
            return (Criteria) this;
        }

        public Criteria andProperty5EqualTo(String value) {
            addCriterion("property5 =", value, "property5");
            return (Criteria) this;
        }

        public Criteria andProperty5NotEqualTo(String value) {
            addCriterion("property5 <>", value, "property5");
            return (Criteria) this;
        }

        public Criteria andProperty5GreaterThan(String value) {
            addCriterion("property5 >", value, "property5");
            return (Criteria) this;
        }

        public Criteria andProperty5GreaterThanOrEqualTo(String value) {
            addCriterion("property5 >=", value, "property5");
            return (Criteria) this;
        }

        public Criteria andProperty5LessThan(String value) {
            addCriterion("property5 <", value, "property5");
            return (Criteria) this;
        }

        public Criteria andProperty5LessThanOrEqualTo(String value) {
            addCriterion("property5 <=", value, "property5");
            return (Criteria) this;
        }

        public Criteria andProperty5Like(String value) {
            addCriterion("property5 like", value, "property5");
            return (Criteria) this;
        }

        public Criteria andProperty5NotLike(String value) {
            addCriterion("property5 not like", value, "property5");
            return (Criteria) this;
        }

        public Criteria andProperty5In(List<String> values) {
            addCriterion("property5 in", values, "property5");
            return (Criteria) this;
        }

        public Criteria andProperty5NotIn(List<String> values) {
            addCriterion("property5 not in", values, "property5");
            return (Criteria) this;
        }

        public Criteria andProperty5Between(String value1, String value2) {
            addCriterion("property5 between", value1, value2, "property5");
            return (Criteria) this;
        }

        public Criteria andProperty5NotBetween(String value1, String value2) {
            addCriterion("property5 not between", value1, value2, "property5");
            return (Criteria) this;
        }

        public Criteria andProperty6IsNull() {
            addCriterion("property6 is null");
            return (Criteria) this;
        }

        public Criteria andProperty6IsNotNull() {
            addCriterion("property6 is not null");
            return (Criteria) this;
        }

        public Criteria andProperty6EqualTo(String value) {
            addCriterion("property6 =", value, "property6");
            return (Criteria) this;
        }

        public Criteria andProperty6NotEqualTo(String value) {
            addCriterion("property6 <>", value, "property6");
            return (Criteria) this;
        }

        public Criteria andProperty6GreaterThan(String value) {
            addCriterion("property6 >", value, "property6");
            return (Criteria) this;
        }

        public Criteria andProperty6GreaterThanOrEqualTo(String value) {
            addCriterion("property6 >=", value, "property6");
            return (Criteria) this;
        }

        public Criteria andProperty6LessThan(String value) {
            addCriterion("property6 <", value, "property6");
            return (Criteria) this;
        }

        public Criteria andProperty6LessThanOrEqualTo(String value) {
            addCriterion("property6 <=", value, "property6");
            return (Criteria) this;
        }

        public Criteria andProperty6Like(String value) {
            addCriterion("property6 like", value, "property6");
            return (Criteria) this;
        }

        public Criteria andProperty6NotLike(String value) {
            addCriterion("property6 not like", value, "property6");
            return (Criteria) this;
        }

        public Criteria andProperty6In(List<String> values) {
            addCriterion("property6 in", values, "property6");
            return (Criteria) this;
        }

        public Criteria andProperty6NotIn(List<String> values) {
            addCriterion("property6 not in", values, "property6");
            return (Criteria) this;
        }

        public Criteria andProperty6Between(String value1, String value2) {
            addCriterion("property6 between", value1, value2, "property6");
            return (Criteria) this;
        }

        public Criteria andProperty6NotBetween(String value1, String value2) {
            addCriterion("property6 not between", value1, value2, "property6");
            return (Criteria) this;
        }

        public Criteria andProperty7IsNull() {
            addCriterion("property7 is null");
            return (Criteria) this;
        }

        public Criteria andProperty7IsNotNull() {
            addCriterion("property7 is not null");
            return (Criteria) this;
        }

        public Criteria andProperty7EqualTo(String value) {
            addCriterion("property7 =", value, "property7");
            return (Criteria) this;
        }

        public Criteria andProperty7NotEqualTo(String value) {
            addCriterion("property7 <>", value, "property7");
            return (Criteria) this;
        }

        public Criteria andProperty7GreaterThan(String value) {
            addCriterion("property7 >", value, "property7");
            return (Criteria) this;
        }

        public Criteria andProperty7GreaterThanOrEqualTo(String value) {
            addCriterion("property7 >=", value, "property7");
            return (Criteria) this;
        }

        public Criteria andProperty7LessThan(String value) {
            addCriterion("property7 <", value, "property7");
            return (Criteria) this;
        }

        public Criteria andProperty7LessThanOrEqualTo(String value) {
            addCriterion("property7 <=", value, "property7");
            return (Criteria) this;
        }

        public Criteria andProperty7Like(String value) {
            addCriterion("property7 like", value, "property7");
            return (Criteria) this;
        }

        public Criteria andProperty7NotLike(String value) {
            addCriterion("property7 not like", value, "property7");
            return (Criteria) this;
        }

        public Criteria andProperty7In(List<String> values) {
            addCriterion("property7 in", values, "property7");
            return (Criteria) this;
        }

        public Criteria andProperty7NotIn(List<String> values) {
            addCriterion("property7 not in", values, "property7");
            return (Criteria) this;
        }

        public Criteria andProperty7Between(String value1, String value2) {
            addCriterion("property7 between", value1, value2, "property7");
            return (Criteria) this;
        }

        public Criteria andProperty7NotBetween(String value1, String value2) {
            addCriterion("property7 not between", value1, value2, "property7");
            return (Criteria) this;
        }

        public Criteria andProperty8IsNull() {
            addCriterion("property8 is null");
            return (Criteria) this;
        }

        public Criteria andProperty8IsNotNull() {
            addCriterion("property8 is not null");
            return (Criteria) this;
        }

        public Criteria andProperty8EqualTo(String value) {
            addCriterion("property8 =", value, "property8");
            return (Criteria) this;
        }

        public Criteria andProperty8NotEqualTo(String value) {
            addCriterion("property8 <>", value, "property8");
            return (Criteria) this;
        }

        public Criteria andProperty8GreaterThan(String value) {
            addCriterion("property8 >", value, "property8");
            return (Criteria) this;
        }

        public Criteria andProperty8GreaterThanOrEqualTo(String value) {
            addCriterion("property8 >=", value, "property8");
            return (Criteria) this;
        }

        public Criteria andProperty8LessThan(String value) {
            addCriterion("property8 <", value, "property8");
            return (Criteria) this;
        }

        public Criteria andProperty8LessThanOrEqualTo(String value) {
            addCriterion("property8 <=", value, "property8");
            return (Criteria) this;
        }

        public Criteria andProperty8Like(String value) {
            addCriterion("property8 like", value, "property8");
            return (Criteria) this;
        }

        public Criteria andProperty8NotLike(String value) {
            addCriterion("property8 not like", value, "property8");
            return (Criteria) this;
        }

        public Criteria andProperty8In(List<String> values) {
            addCriterion("property8 in", values, "property8");
            return (Criteria) this;
        }

        public Criteria andProperty8NotIn(List<String> values) {
            addCriterion("property8 not in", values, "property8");
            return (Criteria) this;
        }

        public Criteria andProperty8Between(String value1, String value2) {
            addCriterion("property8 between", value1, value2, "property8");
            return (Criteria) this;
        }

        public Criteria andProperty8NotBetween(String value1, String value2) {
            addCriterion("property8 not between", value1, value2, "property8");
            return (Criteria) this;
        }

        public Criteria andProperty9IsNull() {
            addCriterion("property9 is null");
            return (Criteria) this;
        }

        public Criteria andProperty9IsNotNull() {
            addCriterion("property9 is not null");
            return (Criteria) this;
        }

        public Criteria andProperty9EqualTo(String value) {
            addCriterion("property9 =", value, "property9");
            return (Criteria) this;
        }

        public Criteria andProperty9NotEqualTo(String value) {
            addCriterion("property9 <>", value, "property9");
            return (Criteria) this;
        }

        public Criteria andProperty9GreaterThan(String value) {
            addCriterion("property9 >", value, "property9");
            return (Criteria) this;
        }

        public Criteria andProperty9GreaterThanOrEqualTo(String value) {
            addCriterion("property9 >=", value, "property9");
            return (Criteria) this;
        }

        public Criteria andProperty9LessThan(String value) {
            addCriterion("property9 <", value, "property9");
            return (Criteria) this;
        }

        public Criteria andProperty9LessThanOrEqualTo(String value) {
            addCriterion("property9 <=", value, "property9");
            return (Criteria) this;
        }

        public Criteria andProperty9Like(String value) {
            addCriterion("property9 like", value, "property9");
            return (Criteria) this;
        }

        public Criteria andProperty9NotLike(String value) {
            addCriterion("property9 not like", value, "property9");
            return (Criteria) this;
        }

        public Criteria andProperty9In(List<String> values) {
            addCriterion("property9 in", values, "property9");
            return (Criteria) this;
        }

        public Criteria andProperty9NotIn(List<String> values) {
            addCriterion("property9 not in", values, "property9");
            return (Criteria) this;
        }

        public Criteria andProperty9Between(String value1, String value2) {
            addCriterion("property9 between", value1, value2, "property9");
            return (Criteria) this;
        }

        public Criteria andProperty9NotBetween(String value1, String value2) {
            addCriterion("property9 not between", value1, value2, "property9");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}