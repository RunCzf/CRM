package com.briup.crm.common.bean;

import java.math.BigDecimal;

public class Orders {
    private BigDecimal odrId;

    private String odrCustomer;

    private String odrAddr;

    private String odrStatus;

    private BigDecimal odrCustId;

    public BigDecimal getOdrId() {
        return odrId;
    }

    public void setOdrId(BigDecimal odrId) {
        this.odrId = odrId;
    }

    public String getOdrCustomer() {
        return odrCustomer;
    }

    public void setOdrCustomer(String odrCustomer) {
        this.odrCustomer = odrCustomer == null ? null : odrCustomer.trim();
    }

    public String getOdrAddr() {
        return odrAddr;
    }

    public void setOdrAddr(String odrAddr) {
        this.odrAddr = odrAddr == null ? null : odrAddr.trim();
    }

    public String getOdrStatus() {
        return odrStatus;
    }

    public void setOdrStatus(String odrStatus) {
        this.odrStatus = odrStatus == null ? null : odrStatus.trim();
    }

    public BigDecimal getOdrCustId() {
        return odrCustId;
    }

    public void setOdrCustId(BigDecimal odrCustId) {
        this.odrCustId = odrCustId;
    }
}