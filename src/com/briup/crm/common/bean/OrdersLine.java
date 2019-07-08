package com.briup.crm.common.bean;

import java.math.BigDecimal;

public class OrdersLine {
    private BigDecimal oddId;

    private BigDecimal oddOrderId;

    private BigDecimal oddCount;

    private String oddUnit;

    private Double oddPrice;

    private BigDecimal prodId;

    public BigDecimal getOddId() {
        return oddId;
    }

    public void setOddId(BigDecimal oddId) {
        this.oddId = oddId;
    }

    public BigDecimal getOddOrderId() {
        return oddOrderId;
    }

    public void setOddOrderId(BigDecimal oddOrderId) {
        this.oddOrderId = oddOrderId;
    }

    public BigDecimal getOddCount() {
        return oddCount;
    }

    public void setOddCount(BigDecimal oddCount) {
        this.oddCount = oddCount;
    }

    public String getOddUnit() {
        return oddUnit;
    }

    public void setOddUnit(String oddUnit) {
        this.oddUnit = oddUnit == null ? null : oddUnit.trim();
    }

    public Double getOddPrice() {
        return oddPrice;
    }

    public void setOddPrice(Double oddPrice) {
        this.oddPrice = oddPrice;
    }

    public BigDecimal getProdId() {
        return prodId;
    }

    public void setProdId(BigDecimal prodId) {
        this.prodId = prodId;
    }
}