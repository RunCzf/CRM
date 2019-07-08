package com.briup.crm.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.briup.crm.common.bean.SysUser;
import com.briup.crm.common.exception.CrmCommonException;
import com.briup.crm.service.interfaces.ICstService;
import com.briup.crm.service.interfaces.ISysUserService;
import com.github.pagehelper.PageInfo;

/**
 * sysuser 页面交互Controller
 */
@Controller
@RequestMapping(value="/sysuser")
public class SysUserController {
	
	@Autowired
	private ISysUserService sysUserService;
	@Autowired
	private ICstService cstServices;
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(String username,String password,HttpSession session) {
		try {
			SysUser sysUser = sysUserService.login(username, password);
			List<SysUser> mngName = cstServices.findAllManagerName();
			session.setAttribute("mngName", mngName);
			session.setAttribute("sysUser", sysUser);
			return "main";
		} catch (CrmCommonException e) {
			e.printStackTrace();
			session.setAttribute("msg", "登录失败:"+e.getMessage());
			return "index";
		}
	}
	@RequestMapping(value="/{page}/findAllUser",method=RequestMethod.GET)
	public String findAllUser(@PathVariable Integer page,HttpSession session) {
		//错误报了一个400是因为我的jsp页面中/1/写成/{page}/
		try {
			PageInfo<SysUser> pageInfo = sysUserService.findAllSysUser(page, 3);
			session.setAttribute("pageInfo", pageInfo);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "登陆失败:"+e.getMessage());
		}
		return "systemset/user_manage";
	}
	@RequestMapping(value="/addSysUser" ,method=RequestMethod.POST)
	public String addSysUser(SysUser sysUser ,HttpSession session) {
		try {
			sysUserService.addUser(sysUser);
		} catch (CrmCommonException e) {
			e.printStackTrace();
			session.setAttribute("msg", "系统错误"+e.getMessage());
		}
		return "redirect:1/findAllUser.action";
	}
	@RequestMapping(value="/addSysUser" ,method=RequestMethod.GET)
	public String addSysUser2() {
		return "systemset/add";
	}
	@RequestMapping(value="/userUpdate",method=RequestMethod.POST)
	public String userUpdate(SysUser user,String usrName,HttpSession session) {
		try {
			sysUserService.updateUser(user);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误"+e.getMessage());
		}
		return"redirect:1/findAllUser.action";
	}
	@RequestMapping(value="/userUpdate",method=RequestMethod.GET)
	public String userUpdate1(Long usrId,HttpSession session) {
		try {
			SysUser findOneUser = sysUserService.findOneUser(usrId);
			System.out.println(findOneUser.getUsrFlag());
			session.setAttribute("oneUser", findOneUser);
		} catch (CrmCommonException e) {
			e.printStackTrace();
			session.setAttribute("msg", "系统错误"+e.getMessage());
		}
		return"systemset/user_update";
	}
	@RequestMapping(value="/userDelete",method=RequestMethod.GET)
	public String userDelete(Integer usrId,HttpSession session) {
		try {
			sysUserService.deleteUser(usrId);
		} catch (CrmCommonException e) {
			e.printStackTrace();
			session.setAttribute("msg", "系统错误"+e.getMessage());
		}
		return "redirect:1/findAllUser.action";
	}
}
