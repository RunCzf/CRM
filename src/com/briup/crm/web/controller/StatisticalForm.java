package com.briup.crm.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.jfree.data.category.CategoryDataset;
import org.jfree.data.general.PieDataset;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.briup.crm.common.utils.JFreeChartUtil;
import com.briup.crm.service.interfaces.IReportFormsService;

@Controller
@RequestMapping(value="/chart")
public class StatisticalForm {
	@Autowired
	private IReportFormsService reportFormsService;
	/**
	 * 客户贡献
	 * CategoryDataset findCstcontribute(String cust_name) 
	 */
	@RequestMapping(value="StatisticalContribute")
	public String StatisticalContribute(String cstname, HttpServletRequest request) {
		try {
			CategoryDataset dataset = reportFormsService.findCstcontribute(cstname);

			// 保存图片 返回图片文件名
			String fileName = JFreeChartUtil.createBarChart("客户贡献分析表","客户","金额",dataset, request);
			// 获取图片路径（内存中） 需要在web.xml中配置一下
			String chartURL = request.getContextPath() + "/jfreeChart?filename=" + fileName;
			request.getSession().setAttribute("chartURL", chartURL);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "系统错误："+e.getMessage());
		}
		return "jfreechart/contr";
	}
	@RequestMapping(value="StatisticalContribute1")
	public String StatisticalContribute1(String cstname, HttpServletRequest request) {
		try {
			PieDataset dataset = reportFormsService.findCstcontribute1(cstname);
			// 保存图片 返回图片文件名
			//String fileName = JFreeChartUtil.createBarChart("客户贡献分析表","客户","金额",dataset, request);
			String fileName = JFreeChartUtil.createPieChart("客户贡献分析图", dataset, request);
			// 获取图片路径（内存中） 需要在web.xml中配置一下
			String chartURL = request.getContextPath() + "/jfreeChart?filename=" + fileName;
			request.getSession().setAttribute("chartURL", chartURL);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "系统错误："+e.getMessage());
		}
		return "jfreechart/contr";
	}
	/**
	 * 客户构成
	 * CategoryDataset findCstMakeup(int condit) 
	 */
	@RequestMapping(value="StatisticalMakeup")
	public String StatisticalMakeup(Integer condit, HttpServletRequest request) {
		try {
			CategoryDataset dataset = reportFormsService.findCstMakeup(condit);
			String title = "";
			if (condit == 0) {
				title = "客户级别百分比分析表";
			} else if (condit == 1) {
				title = "客户信誉度分析表";
			} else if (condit == 2) {
				title = "客户满意度分析表";
			}
			// 保存图片 返回图片文件名
			String fileName = JFreeChartUtil.createBarChart(title,"客户类型", "百分比",dataset, request);
			// 获取图片路径（内存中） 需要在web.xml中配置一下
			String chartURL = request.getContextPath() + "/jfreeChart?filename=" + fileName;
			request.getSession().setAttribute("charturl", chartURL);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "系统错误"+e.getMessage());
		}
		return "jfreechart/cons";
	}
}
