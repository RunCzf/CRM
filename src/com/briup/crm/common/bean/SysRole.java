package com.briup.crm.common.bean;

import java.io.Serializable;

/**
 * SysRole 系统角色 bean
 * 
 * @author wangzh@briup.com
 *
 */
public class SysRole implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 * 角色id
	 */
	private Integer roleId;
	/**
	 * 角色名字
	 */
	private String roleName;
	/**
	 * 角色描述
	 */
	private String roleDesc;
	/**
	 * 角色状态
	 */
	private Integer roleFlag;

	public SysRole() {
	}

	public SysRole(Integer roleId, String roleName, String roleDesc, Integer roleFlag) {
		this.roleId = roleId;
		this.roleName = roleName;
		this.roleDesc = roleDesc;
		this.roleFlag = roleFlag;
	}

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRoleDesc() {
		return roleDesc;
	}

	public void setRoleDesc(String roleDesc) {
		this.roleDesc = roleDesc;
	}

	public Integer getRoleFlag() {
		return roleFlag;
	}

	public void setRoleFlag(Integer roleFlag) {
		this.roleFlag = roleFlag;
	}

	@Override
	public String toString() {
		return "SysRole [roleId=" + roleId + ", roleName=" + roleName + ", roleDesc=" + roleDesc + ", roleFlag="
				+ roleFlag + "]";
	}

}
