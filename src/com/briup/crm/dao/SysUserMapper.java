package com.briup.crm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.briup.crm.common.bean.SysUser;

public interface SysUserMapper {
	SysUser selectSysUser(@Param("name")String usrName,@Param("pwd")String usrPassword);
	List<SysUser> findAllUsers();
	void addOneUser(SysUser sysUser);
	void sysUpdateUser(SysUser sysuser);
	void sysDeleteOneUser(Integer usrId);
	SysUser sysfindOneUser(long usrId);
	List<SysUser> findMName();
}
