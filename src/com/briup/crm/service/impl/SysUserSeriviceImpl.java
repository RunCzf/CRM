package com.briup.crm.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.crm.common.bean.SysRole;
import com.briup.crm.common.bean.SysUser;
import com.briup.crm.common.exception.CrmCommonException;
import com.briup.crm.dao.SysRoleMapper;
import com.briup.crm.dao.SysUserMapper;
import com.briup.crm.service.interfaces.ISysUserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class SysUserSeriviceImpl implements ISysUserService {
	
	@Autowired
	private SysUserMapper sysUserMapper;
	@Autowired
	private SysRoleMapper sysRoleMapper;
	
	@Override
	public SysUser login(String username, String password) throws CrmCommonException {
		// 1.判空
		if (StringUtils.isBlank(username) || StringUtils.isBlank(password)) {
			throw CrmCommonException.getException(401);
		}
		SysUser sysUser = sysUserMapper.selectSysUser(username, password);
		if (sysUser == null) {
			throw CrmCommonException.getException(402);
		} else if (sysUser.getUsrFlag() == 0) {
			throw CrmCommonException.getException(406);
		} else if (sysUser.getSysRole().getRoleFlag() == 0) {
			throw CrmCommonException.getException(406);
		}
		return sysUser;
	}

	@Override
	public List<SysUser> findAllMgr() throws CrmCommonException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SysRole> findAllRole() throws CrmCommonException {
		// TODO Auto-generated method stub
		
		/*List<SysRole> sysRoles = sysRoleMapper.selectSysRoles();
		 * 这样写占堆内存
		 * 
		 * */
		System.out.println(3333);
		return sysRoleMapper.selectSysRoles() ;
	}

	@Override
	public SysRole findRoleBySysRoleId(long roleId) throws CrmCommonException {
		// TODO Auto-generated method stub
		
		return sysRoleMapper.selectRoleById(roleId);
	}

	@Override
	public void updateRole(SysRole role) throws CrmCommonException {
		// TODO Auto-generated method stub
		sysRoleMapper.sysUpdateRole(role);
	}

	@Override
	public PageInfo<SysUser> findAllSysUser(int curpage, int row) throws CrmCommonException {
		//分页前先看一下数据库中是否有数据
		PageHelper.startPage(curpage, row);
		//查找所有的用户
		List<SysUser> sysUsers = sysUserMapper.findAllUsers();
		return new PageInfo<>(sysUsers);
	}

	@Override
	public int getAllRows() throws CrmCommonException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public SysUser findOneUser(long usrId) throws CrmCommonException {
		// TODO Auto-generated method stub
		return sysUserMapper.sysfindOneUser(usrId);
	}

	@Override
	public void updateUser(SysUser user) throws CrmCommonException {
		// TODO Auto-generated method stub
		sysUserMapper.sysUpdateUser(user);
	}

	@Override
	public void addUser(SysUser user) throws CrmCommonException {
		// TODO Auto-generated method stub
		sysUserMapper.addOneUser(user);
	}

	@Override
	public void deleteUser(Integer usrId) throws CrmCommonException {
		// TODO Auto-generated method stub
		sysUserMapper.sysDeleteOneUser(usrId);
	}

	@Override
	public void addRole(SysRole role) throws CrmCommonException {
		// TODO Auto-generated method stub
		/*role.getRoleName();*/
		//Long roleId = role.getRoleId().longValue();
		if (StringUtils.isBlank(role.getRoleName())||StringUtils.isBlank(role.getRoleDesc())||role.getRoleId()==null) {
			throw CrmCommonException.getException(401);
		}else {
		SysRole roleById = sysRoleMapper.selectRoleById(role.getRoleId().longValue());
			if (roleById!=null) {
				throw CrmCommonException.getException(405);
			}else {
			sysRoleMapper.sysAddRole(role);
			}
		}
	}

	@Override
	public void deleteRole(Integer roleId) throws CrmCommonException {
		// TODO Auto-generated method stub
		sysRoleMapper.sysDeleteRole(roleId);
	}

}
