package com.briup.crm.common.bean;

import java.math.BigDecimal;

public class CstLinkman {
    private BigDecimal lkmId;

    private Long lkmCustId;

    private String lkmCustNo;

    private String lkmCustName;

    private String lkmName;

    private String lkmSex;

    private String lkmPostion;

    private String lkmTel;

    private String lkmMobile;

    private String lkmMemo;

    public BigDecimal getLkmId() {
        return lkmId;
    }

    public void setLkmId(BigDecimal lkmId) {
        this.lkmId = lkmId;
    }

    public Long getLkmCustId() {
        return lkmCustId;
    }

    public void setLkmCustId(Long lkmCustId) {
        this.lkmCustId = lkmCustId;
    }

    public String getLkmCustNo() {
        return lkmCustNo;
    }

    public void setLkmCustNo(String lkmCustNo) {
        this.lkmCustNo = lkmCustNo == null ? null : lkmCustNo.trim();
    }

    public String getLkmCustName() {
        return lkmCustName;
    }

    public void setLkmCustName(String lkmCustName) {
        this.lkmCustName = lkmCustName == null ? null : lkmCustName.trim();
    }

    public String getLkmName() {
        return lkmName;
    }

    public void setLkmName(String lkmName) {
        this.lkmName = lkmName == null ? null : lkmName.trim();
    }

    public String getLkmSex() {
        return lkmSex;
    }

    public void setLkmSex(String lkmSex) {
        this.lkmSex = lkmSex == null ? null : lkmSex.trim();
    }

    public String getLkmPostion() {
        return lkmPostion;
    }

    public void setLkmPostion(String lkmPostion) {
        this.lkmPostion = lkmPostion == null ? null : lkmPostion.trim();
    }

    public String getLkmTel() {
        return lkmTel;
    }

    public void setLkmTel(String lkmTel) {
        this.lkmTel = lkmTel == null ? null : lkmTel.trim();
    }

    public String getLkmMobile() {
        return lkmMobile;
    }

    public void setLkmMobile(String lkmMobile) {
        this.lkmMobile = lkmMobile == null ? null : lkmMobile.trim();
    }

    public String getLkmMemo() {
        return lkmMemo;
    }

    public void setLkmMemo(String lkmMemo) {
        this.lkmMemo = lkmMemo == null ? null : lkmMemo.trim();
    }

	@Override
	public String toString() {
		return "CstLinkman [lkmId=" + lkmId + ", lkmCustId=" + lkmCustId + ", lkmCustNo=" + lkmCustNo + ", lkmCustName="
				+ lkmCustName + ", lkmName=" + lkmName + ", lkmSex=" + lkmSex + ", lkmPostion=" + lkmPostion
				+ ", lkmTel=" + lkmTel + ", lkmMobile=" + lkmMobile + ", lkmMemo=" + lkmMemo + "]";
	}
    
}