package com.briup.crm.common.bean;

import java.io.Serializable;

public class CstService implements Serializable {
	@Override
	public String toString() {
		return "CstService [svrId=" + svrId + ", svrType=" + svrType + ", svrTitle=" + svrTitle + ", svrCustName="
				+ svrCustName + ", svrStatus=" + svrStatus + ", svrRequest=" + svrRequest + ", svrCreateBy="
				+ svrCreateBy + ", svrDueTo=" + svrDueTo + ", svrDeal=" + svrDeal + ", svrResult=" + svrResult
				+ ", svrSatisfy=" + svrSatisfy + "]";
	}

	private static final long serialVersionUID = 1L;
	/**
	 * 服务编号
	 */
	private Integer svrId;

	/**
	 * 服务类型
	 */
	private String svrType;

	/**
	 * 概要
	 */
	private String svrTitle;

	/**
	 * 客户名称
	 */
	private String svrCustName;

	/**
	 * 服务状态
	 */
	private String svrStatus;

	/**
	 * 服务内容
	 */
	private String svrRequest;

	/**
	 * 服务创建人
	 */
	private String svrCreateBy;

	/**
	 * 服务分配人
	 */
	private String svrDueTo;

	/**
	 * 服务处理人
	 */
	private String svrDeal;

	/**
	 * 处理结果
	 */
	private String svrResult;

	/**
	 * 满意度
	 */
	private Integer svrSatisfy;

	public CstService() {
	}

	public CstService(Integer svrId, String svrType, String svrTitle, String svrCustName, String svrStatus,
			String svrRequest, String svrCreateBy, String svrDueTo, String svrDeal, String svrResult,
			Integer svrSatisfy) {
		this.svrId = svrId;
		this.svrType = svrType;
		this.svrTitle = svrTitle;
		this.svrCustName = svrCustName;
		this.svrStatus = svrStatus;
		this.svrRequest = svrRequest;
		this.svrCreateBy = svrCreateBy;
		this.svrDueTo = svrDueTo;
		this.svrDeal = svrDeal;
		this.svrResult = svrResult;
		this.svrSatisfy = svrSatisfy;
	}

	public Integer getSvrId() {
		return svrId;
	}

	public void setSvrId(Integer svrId) {
		this.svrId = svrId;
	}

	public String getSvrType() {
		return svrType;
	}

	public void setSvrType(String svrType) {
		this.svrType = svrType;
	}

	public String getSvrTitle() {
		return svrTitle;
	}

	public void setSvrTitle(String svrTitle) {
		this.svrTitle = svrTitle;
	}

	public String getSvrCustName() {
		return svrCustName;
	}

	public void setSvrCustName(String svrCustName) {
		this.svrCustName = svrCustName;
	}

	public String getSvrStatus() {
		return svrStatus;
	}

	public void setSvrStatus(String svrStatus) {
		this.svrStatus = svrStatus;
	}

	public String getSvrRequest() {
		return svrRequest;
	}

	public void setSvrRequest(String svrRequest) {
		this.svrRequest = svrRequest;
	}

	public String getSvrCreateBy() {
		return svrCreateBy;
	}

	public void setSvrCreateBy(String svrCreateBy) {
		this.svrCreateBy = svrCreateBy;
	}

	
	public String getSvrDueTo() {
		return svrDueTo;
	}

	public void setSvrDueTo(String svrDueTo) {
		this.svrDueTo = svrDueTo;
	}

	public String getSvrDeal() {
		return svrDeal;
	}

	public void setSvrDeal(String svrDeal) {
		this.svrDeal = svrDeal;
	}

	public String getSvrResult() {
		return svrResult;
	}

	public void setSvrResult(String svrResult) {
		this.svrResult = svrResult;
	}

	public Integer getSvrSatisfy() {
		return svrSatisfy;
	}

	public void setSvrSatisfy(Integer svrSatisfy) {
		this.svrSatisfy = svrSatisfy;
	}

}
