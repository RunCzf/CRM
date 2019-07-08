package com.briup.crm.common.bean;

import java.io.Serializable;

/**
 * 系统用户 bean
 * 
 * @author wangzh@briup.com
 *
 */
public class SysUser implements Serializable {
	private static final long serialVersionUID = 1L;
	/**
	 * 用户id
	 */
	private Integer usrId;
	/**
	 * 用户名
	 */
	private String usrName;
	/**
	 * 用户密码
	 */
	private String usrPassword;
	/**
	 * 用户状态 1代表正常用户 0代表不正常
	 */
	private Integer usrFlag;
	/**
	 * 一个用户对应一个角色
	 */
	private SysRole sysRole;

	protected SysUser() {
	}

	protected SysUser(Integer usrId, String usrName, String usrPassword, Integer usrFlag, SysRole sysRole) {
		this.usrId = usrId;
		this.usrName = usrName;
		this.usrPassword = usrPassword;
		this.usrFlag = usrFlag;
		this.sysRole = sysRole;
	}

	public Integer getUsrId() {
		return usrId;
	}

	public void setUsrId(Integer usrId) {
		this.usrId = usrId;
	}

	public String getUsrName() {
		return usrName;
	}

	public void setUsrName(String usrName) {
		this.usrName = usrName;
	}

	public String getUsrPassword() {
		return usrPassword;
	}

	public void setUsrPassword(String usrPassword) {
		this.usrPassword = usrPassword;
	}

	public Integer getUsrFlag() {
		return usrFlag;
	}

	public void setUsrFlag(Integer usrFlag) {
		this.usrFlag = usrFlag;
	}

	public SysRole getSysRole() {
		return sysRole;
	}

	public void setSysRole(SysRole sysRole) {
		this.sysRole = sysRole;
	}

	@Override
	public String toString() {
		return "SysUser [usrId=" + usrId + ", usrName=" + usrName + ", usrPassword=" + usrPassword + ", usrFlag="
				+ usrFlag + ", sysRole=" + sysRole + "]";
	}
	
}
