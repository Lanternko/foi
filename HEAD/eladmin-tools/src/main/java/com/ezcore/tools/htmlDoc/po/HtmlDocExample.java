package com.ezcore.tools.htmlDoc.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class HtmlDocExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public HtmlDocExample() {
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
                throw new IllegalArgumentException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new IllegalArgumentException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new IllegalArgumentException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Long value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andTitleIsNull() {
            addCriterion("title is null");
            return (Criteria) this;
        }

        public Criteria andTitleIsNotNull() {
            addCriterion("title is not null");
            return (Criteria) this;
        }

        public Criteria andTitleEqualTo(String value) {
            addCriterion("title =", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotEqualTo(String value) {
            addCriterion("title <>", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThan(String value) {
            addCriterion("title >", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThanOrEqualTo(String value) {
            addCriterion("title >=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThan(String value) {
            addCriterion("title <", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThanOrEqualTo(String value) {
            addCriterion("title <=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLike(String value) {
            addCriterion("title like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotLike(String value) {
            addCriterion("title not like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleIn(List<String> values) {
            addCriterion("title in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotIn(List<String> values) {
            addCriterion("title not in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleBetween(String value1, String value2) {
            addCriterion("title between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotBetween(String value1, String value2) {
            addCriterion("title not between", value1, value2, "title");
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