package com.briup.crm.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.briup.crm.common.bean.SysRole;
import com.briup.crm.common.exception.CrmCommonException;
import com.briup.crm.service.interfaces.ISysUserService;

@Controller
@RequestMapping(value="/sysrole")
public class SysRoleController {
	/*查找所有的角色*/
	@Autowired
	private ISysUserService sysUserService;
	
	@RequestMapping(value="/selectAllSysRole",method=RequestMethod.GET)
	public String selectAllSysRole(HttpSession session) {
		try {
			List<SysRole> sysRoles = sysUserService.findAllRole();
			session.setAttribute("sysRoles", sysRoles);
		} catch (CrmCommonException e) {
			e.printStackTrace();
			session.setAttribute("msg", "系统错误"+e.getMessage());
		}
		return "systemset/role_manage";
		
	}
	@RequestMapping(value="/addRole",method=RequestMethod.POST)
	public String addRole(SysRole sysRole,HttpSession session) {
		try {
			sysUserService.addRole(sysRole);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误"+e.getMessage());
		}
		return "redirect:selectAllSysRole.action";
		
	}
	@RequestMapping(value="/addRole",method=RequestMethod.GET)
	public String addRole2() {
		return"systemset/addRole";
	}
	@RequestMapping(value="/roleUpdate",method=RequestMethod.POST)
	public String roleUpdate(SysRole role,HttpSession session) {
		try {
			sysUserService.updateRole(role);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误"+e.getMessage());
		}
		return"redirect:selectAllSysRole.action";
	}
	@RequestMapping(value="/roleUpdate",method=RequestMethod.GET)
	public String roleUpdate1(HttpSession session,Long roleId)  {
		try {
			SysRole sysRole = sysUserService.findRoleBySysRoleId(roleId);
			session.setAttribute("sysRoles", sysRole);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return"systemset/role_update";
	}
	@RequestMapping(value="/roleDelect",method=RequestMethod.GET)
	public String roleDelect(Integer roleId,HttpSession session) {
		//500表名无效
		try {
			sysUserService.deleteRole(roleId);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误"+e.getMessage());
		}
		return "redirect:selectAllSysRole.action";
		
	}
}
