package com.briup.crm.dao;

import java.util.List;

import com.briup.crm.common.bean.SysRole;


public interface SysRoleMapper {
	List<SysRole> selectSysRoles();
	void sysAddRole(SysRole role);
	void sysUpdateRole(SysRole role);
	SysRole selectRoleById(Long id);
	void sysDeleteRole(Integer id);
}
