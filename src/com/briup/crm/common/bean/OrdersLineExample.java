package com.briup.crm.common.bean;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class OrdersLineExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public OrdersLineExample() {
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
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andOddIdIsNull() {
            addCriterion("ODD_ID is null");
            return (Criteria) this;
        }

        public Criteria andOddIdIsNotNull() {
            addCriterion("ODD_ID is not null");
            return (Criteria) this;
        }

        public Criteria andOddIdEqualTo(BigDecimal value) {
            addCriterion("ODD_ID =", value, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdNotEqualTo(BigDecimal value) {
            addCriterion("ODD_ID <>", value, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdGreaterThan(BigDecimal value) {
            addCriterion("ODD_ID >", value, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("ODD_ID >=", value, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdLessThan(BigDecimal value) {
            addCriterion("ODD_ID <", value, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdLessThanOrEqualTo(BigDecimal value) {
            addCriterion("ODD_ID <=", value, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdIn(List<BigDecimal> values) {
            addCriterion("ODD_ID in", values, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdNotIn(List<BigDecimal> values) {
            addCriterion("ODD_ID not in", values, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("ODD_ID between", value1, value2, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("ODD_ID not between", value1, value2, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddOrderIdIsNull() {
            addCriterion("ODD_ORDER_ID is null");
            return (Criteria) this;
        }

        public Criteria andOddOrderIdIsNotNull() {
            addCriterion("ODD_ORDER_ID is not null");
            return (Criteria) this;
        }

        public Criteria andOddOrderIdEqualTo(BigDecimal value) {
            addCriterion("ODD_ORDER_ID =", value, "oddOrderId");
            return (Criteria) this;
        }

        public Criteria andOddOrderIdNotEqualTo(BigDecimal value) {
            addCriterion("ODD_ORDER_ID <>", value, "oddOrderId");
            return (Criteria) this;
        }

        public Criteria andOddOrderIdGreaterThan(BigDecimal value) {
            addCriterion("ODD_ORDER_ID >", value, "oddOrderId");
            return (Criteria) this;
        }

        public Criteria andOddOrderIdGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("ODD_ORDER_ID >=", value, "oddOrderId");
            return (Criteria) this;
        }

        public Criteria andOddOrderIdLessThan(BigDecimal value) {
            addCriterion("ODD_ORDER_ID <", value, "oddOrderId");
            return (Criteria) this;
        }

        public Criteria andOddOrderIdLessThanOrEqualTo(BigDecimal value) {
            addCriterion("ODD_ORDER_ID <=", value, "oddOrderId");
            return (Criteria) this;
        }

        public Criteria andOddOrderIdIn(List<BigDecimal> values) {
            addCriterion("ODD_ORDER_ID in", values, "oddOrderId");
            return (Criteria) this;
        }

        public Criteria andOddOrderIdNotIn(List<BigDecimal> values) {
            addCriterion("ODD_ORDER_ID not in", values, "oddOrderId");
            return (Criteria) this;
        }

        public Criteria andOddOrderIdBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("ODD_ORDER_ID between", value1, value2, "oddOrderId");
            return (Criteria) this;
        }

        public Criteria andOddOrderIdNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("ODD_ORDER_ID not between", value1, value2, "oddOrderId");
            return (Criteria) this;
        }

        public Criteria andOddCountIsNull() {
            addCriterion("ODD_COUNT is null");
            return (Criteria) this;
        }

        public Criteria andOddCountIsNotNull() {
            addCriterion("ODD_COUNT is not null");
            return (Criteria) this;
        }

        public Criteria andOddCountEqualTo(BigDecimal value) {
            addCriterion("ODD_COUNT =", value, "oddCount");
            return (Criteria) this;
        }

        public Criteria andOddCountNotEqualTo(BigDecimal value) {
            addCriterion("ODD_COUNT <>", value, "oddCount");
            return (Criteria) this;
        }

        public Criteria andOddCountGreaterThan(BigDecimal value) {
            addCriterion("ODD_COUNT >", value, "oddCount");
            return (Criteria) this;
        }

        public Criteria andOddCountGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("ODD_COUNT >=", value, "oddCount");
            return (Criteria) this;
        }

        public Criteria andOddCountLessThan(BigDecimal value) {
            addCriterion("ODD_COUNT <", value, "oddCount");
            return (Criteria) this;
        }

        public Criteria andOddCountLessThanOrEqualTo(BigDecimal value) {
            addCriterion("ODD_COUNT <=", value, "oddCount");
            return (Criteria) this;
        }

        public Criteria andOddCountIn(List<BigDecimal> values) {
            addCriterion("ODD_COUNT in", values, "oddCount");
            return (Criteria) this;
        }

        public Criteria andOddCountNotIn(List<BigDecimal> values) {
            addCriterion("ODD_COUNT not in", values, "oddCount");
            return (Criteria) this;
        }

        public Criteria andOddCountBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("ODD_COUNT between", value1, value2, "oddCount");
            return (Criteria) this;
        }

        public Criteria andOddCountNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("ODD_COUNT not between", value1, value2, "oddCount");
            return (Criteria) this;
        }

        public Criteria andOddUnitIsNull() {
            addCriterion("ODD_UNIT is null");
            return (Criteria) this;
        }

        public Criteria andOddUnitIsNotNull() {
            addCriterion("ODD_UNIT is not null");
            return (Criteria) this;
        }

        public Criteria andOddUnitEqualTo(String value) {
            addCriterion("ODD_UNIT =", value, "oddUnit");
            return (Criteria) this;
        }

        public Criteria andOddUnitNotEqualTo(String value) {
            addCriterion("ODD_UNIT <>", value, "oddUnit");
            return (Criteria) this;
        }

        public Criteria andOddUnitGreaterThan(String value) {
            addCriterion("ODD_UNIT >", value, "oddUnit");
            return (Criteria) this;
        }

        public Criteria andOddUnitGreaterThanOrEqualTo(String value) {
            addCriterion("ODD_UNIT >=", value, "oddUnit");
            return (Criteria) this;
        }

        public Criteria andOddUnitLessThan(String value) {
            addCriterion("ODD_UNIT <", value, "oddUnit");
            return (Criteria) this;
        }

        public Criteria andOddUnitLessThanOrEqualTo(String value) {
            addCriterion("ODD_UNIT <=", value, "oddUnit");
            return (Criteria) this;
        }

        public Criteria andOddUnitLike(String value) {
            addCriterion("ODD_UNIT like", value, "oddUnit");
            return (Criteria) this;
        }

        public Criteria andOddUnitNotLike(String value) {
            addCriterion("ODD_UNIT not like", value, "oddUnit");
            return (Criteria) this;
        }

        public Criteria andOddUnitIn(List<String> values) {
            addCriterion("ODD_UNIT in", values, "oddUnit");
            return (Criteria) this;
        }

        public Criteria andOddUnitNotIn(List<String> values) {
            addCriterion("ODD_UNIT not in", values, "oddUnit");
            return (Criteria) this;
        }

        public Criteria andOddUnitBetween(String value1, String value2) {
            addCriterion("ODD_UNIT between", value1, value2, "oddUnit");
            return (Criteria) this;
        }

        public Criteria andOddUnitNotBetween(String value1, String value2) {
            addCriterion("ODD_UNIT not between", value1, value2, "oddUnit");
            return (Criteria) this;
        }

        public Criteria andOddPriceIsNull() {
            addCriterion("ODD_PRICE is null");
            return (Criteria) this;
        }

        public Criteria andOddPriceIsNotNull() {
            addCriterion("ODD_PRICE is not null");
            return (Criteria) this;
        }

        public Criteria andOddPriceEqualTo(BigDecimal value) {
            addCriterion("ODD_PRICE =", value, "oddPrice");
            return (Criteria) this;
        }

        public Criteria andOddPriceNotEqualTo(BigDecimal value) {
            addCriterion("ODD_PRICE <>", value, "oddPrice");
            return (Criteria) this;
        }

        public Criteria andOddPriceGreaterThan(BigDecimal value) {
            addCriterion("ODD_PRICE >", value, "oddPrice");
            return (Criteria) this;
        }

        public Criteria andOddPriceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("ODD_PRICE >=", value, "oddPrice");
            return (Criteria) this;
        }

        public Criteria andOddPriceLessThan(BigDecimal value) {
            addCriterion("ODD_PRICE <", value, "oddPrice");
            return (Criteria) this;
        }

        public Criteria andOddPriceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("ODD_PRICE <=", value, "oddPrice");
            return (Criteria) this;
        }

        public Criteria andOddPriceIn(List<BigDecimal> values) {
            addCriterion("ODD_PRICE in", values, "oddPrice");
            return (Criteria) this;
        }

        public Criteria andOddPriceNotIn(List<BigDecimal> values) {
            addCriterion("ODD_PRICE not in", values, "oddPrice");
            return (Criteria) this;
        }

        public Criteria andOddPriceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("ODD_PRICE between", value1, value2, "oddPrice");
            return (Criteria) this;
        }

        public Criteria andOddPriceNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("ODD_PRICE not between", value1, value2, "oddPrice");
            return (Criteria) this;
        }

        public Criteria andProdIdIsNull() {
            addCriterion("PROD_ID is null");
            return (Criteria) this;
        }

        public Criteria andProdIdIsNotNull() {
            addCriterion("PROD_ID is not null");
            return (Criteria) this;
        }

        public Criteria andProdIdEqualTo(BigDecimal value) {
            addCriterion("PROD_ID =", value, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdNotEqualTo(BigDecimal value) {
            addCriterion("PROD_ID <>", value, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdGreaterThan(BigDecimal value) {
            addCriterion("PROD_ID >", value, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("PROD_ID >=", value, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdLessThan(BigDecimal value) {
            addCriterion("PROD_ID <", value, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdLessThanOrEqualTo(BigDecimal value) {
            addCriterion("PROD_ID <=", value, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdIn(List<BigDecimal> values) {
            addCriterion("PROD_ID in", values, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdNotIn(List<BigDecimal> values) {
            addCriterion("PROD_ID not in", values, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("PROD_ID between", value1, value2, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("PROD_ID not between", value1, value2, "prodId");
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