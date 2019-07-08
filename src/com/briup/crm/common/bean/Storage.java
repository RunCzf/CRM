package com.briup.crm.common.bean;

import java.math.BigDecimal;

public class Storage {
    private BigDecimal stkId;

    private String stkWarehourse;

    private BigDecimal stkCount;

    private String stkMemo;

    private String stkWare;

    private String stkName;

    public BigDecimal getStkId() {
        return stkId;
    }

    public void setStkId(BigDecimal stkId) {
        this.stkId = stkId;
    }

    public String getStkWarehourse() {
        return stkWarehourse;
    }

    public void setStkWarehourse(String stkWarehourse) {
        this.stkWarehourse = stkWarehourse == null ? null : stkWarehourse.trim();
    }

    public BigDecimal getStkCount() {
        return stkCount;
    }

    public void setStkCount(BigDecimal stkCount) {
        this.stkCount = stkCount;
    }

    public String getStkMemo() {
        return stkMemo;
    }

    public void setStkMemo(String stkMemo) {
        this.stkMemo = stkMemo == null ? null : stkMemo.trim();
    }

    public String getStkWare() {
        return stkWare;
    }

    public void setStkWare(String stkWare) {
        this.stkWare = stkWare == null ? null : stkWare.trim();
    }

    public String getStkName() {
        return stkName;
    }

    public void setStkName(String stkName) {
        this.stkName = stkName == null ? null : stkName.trim();
    }
}