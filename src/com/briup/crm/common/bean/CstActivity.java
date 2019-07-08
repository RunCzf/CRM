package com.briup.crm.common.bean;

import java.math.BigDecimal;

public class CstActivity {
    private BigDecimal atvId;

    private String atvCustNo;

    private String atvCustName;

    private String atvPlace;

    private String atvTitle;

    private String atvDesc;

    private BigDecimal atvCustId;

    public BigDecimal getAtvId() {
        return atvId;
    }

    public void setAtvId(BigDecimal atvId) {
        this.atvId = atvId;
    }

    public String getAtvCustNo() {
        return atvCustNo;
    }

    public void setAtvCustNo(String atvCustNo) {
        this.atvCustNo = atvCustNo == null ? null : atvCustNo.trim();
    }

    public String getAtvCustName() {
        return atvCustName;
    }

    public void setAtvCustName(String atvCustName) {
        this.atvCustName = atvCustName == null ? null : atvCustName.trim();
    }

    public String getAtvPlace() {
        return atvPlace;
    }

    public void setAtvPlace(String atvPlace) {
        this.atvPlace = atvPlace == null ? null : atvPlace.trim();
    }

    public String getAtvTitle() {
        return atvTitle;
    }

    public void setAtvTitle(String atvTitle) {
        this.atvTitle = atvTitle == null ? null : atvTitle.trim();
    }

    public String getAtvDesc() {
        return atvDesc;
    }

    public void setAtvDesc(String atvDesc) {
        this.atvDesc = atvDesc == null ? null : atvDesc.trim();
    }

    public BigDecimal getAtvCustId() {
        return atvCustId;
    }

    public void setAtvCustId(BigDecimal atvCustId) {
        this.atvCustId = atvCustId;
    }
}