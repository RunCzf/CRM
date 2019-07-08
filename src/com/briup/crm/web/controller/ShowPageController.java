package com.briup.crm.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 页面跳转Controller
 * 
 * @author wangzh@briup.com
 *
 */
@Controller  // 表明这一个类是一个Controller
public class ShowPageController {
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String showIndexPage() {
		return "index";
	}
	@RequestMapping(value="/showTopPage",method=RequestMethod.GET)
	public String showTopPage() {
		return "top";
	}
	@RequestMapping(value="/showLeftPage",method=RequestMethod.GET)
	public String showLeftPage() {
		return "left";
	}
	@RequestMapping(value="/showSwitchPage",method=RequestMethod.GET)
	public String showSwitchPage() {
		return "switch";
	}

}
