package com.briup.crm.common.bean;

import java.math.BigDecimal;

public class SalPlan {
    private BigDecimal plaId;

    private BigDecimal plaChcId;

    private String plaTodo;

    private String plaResult;

    public BigDecimal getPlaId() {
        return plaId;
    }

    public void setPlaId(BigDecimal plaId) {
        this.plaId = plaId;
    }

    public BigDecimal getPlaChcId() {
        return plaChcId;
    }

    public void setPlaChcId(BigDecimal plaChcId) {
        this.plaChcId = plaChcId;
    }

    public String getPlaTodo() {
        return plaTodo;
    }

    public void setPlaTodo(String plaTodo) {
        this.plaTodo = plaTodo == null ? null : plaTodo.trim();
    }

    public String getPlaResult() {
        return plaResult;
    }

    public void setPlaResult(String plaResult) {
        this.plaResult = plaResult == null ? null : plaResult.trim();
    }

	@Override
	public String toString() {
		return "SalPlan [plaId=" + plaId + ", plaChcId=" + plaChcId + ", plaTodo=" + plaTodo + ", plaResult="
				+ plaResult + "]";
	}
    
}