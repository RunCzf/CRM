package com.briup.crm.common.bean;

import java.math.BigDecimal;

public class SalChance {
    private BigDecimal chcId;

    private String chcSource;

    private String chcCustName;

    private String chcTitle;

    private BigDecimal chcRate;

    private String chcLinkman;

    private String chcTel;

    private String chcAddr;

    private String chcDesc;

    private String chcCreateBy;

    private String chcDueTo;

    private String chcStatus;

    public BigDecimal getChcId() {
        return chcId;
    }

    public void setChcId(BigDecimal chcId) {
        this.chcId = chcId;
    }

    public String getChcSource() {
        return chcSource;
    }

    public void setChcSource(String chcSource) {
        this.chcSource = chcSource == null ? null : chcSource.trim();
    }

    public String getChcCustName() {
        return chcCustName;
    }

    public void setChcCustName(String chcCustName) {
        this.chcCustName = chcCustName == null ? null : chcCustName.trim();
    }

    public String getChcTitle() {
        return chcTitle;
    }

    public void setChcTitle(String chcTitle) {
        this.chcTitle = chcTitle == null ? null : chcTitle.trim();
    }

    public BigDecimal getChcRate() {
        return chcRate;
    }

    public void setChcRate(BigDecimal chcRate) {
        this.chcRate = chcRate;
    }

    public String getChcLinkman() {
        return chcLinkman;
    }

    public void setChcLinkman(String chcLinkman) {
        this.chcLinkman = chcLinkman == null ? null : chcLinkman.trim();
    }

    public String getChcTel() {
        return chcTel;
    }

    public void setChcTel(String chcTel) {
        this.chcTel = chcTel == null ? null : chcTel.trim();
    }

    public String getChcAddr() {
        return chcAddr;
    }

    public void setChcAddr(String chcAddr) {
        this.chcAddr = chcAddr == null ? null : chcAddr.trim();
    }

    public String getChcDesc() {
        return chcDesc;
    }

    public void setChcDesc(String chcDesc) {
        this.chcDesc = chcDesc == null ? null : chcDesc.trim();
    }

    public String getChcCreateBy() {
        return chcCreateBy;
    }

    public void setChcCreateBy(String chcCreateBy) {
        this.chcCreateBy = chcCreateBy == null ? null : chcCreateBy.trim();
    }

    public String getChcDueTo() {
        return chcDueTo;
    }

    public void setChcDueTo(String chcDueTo) {
        this.chcDueTo = chcDueTo == null ? null : chcDueTo.trim();
    }

    public String getChcStatus() {
        return chcStatus;
    }

    public void setChcStatus(String chcStatus) {
        this.chcStatus = chcStatus == null ? null : chcStatus.trim();
    }
}