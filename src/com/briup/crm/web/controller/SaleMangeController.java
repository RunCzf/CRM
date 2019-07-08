package com.briup.crm.web.controller;

import java.math.BigDecimal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.briup.crm.common.bean.SalChance;
import com.briup.crm.common.bean.SalPlan;
import com.briup.crm.common.exception.CrmCommonException;
import com.briup.crm.service.interfaces.ISalChanceService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping(value="sale")
public class SaleMangeController {
	@Autowired 
	private ISalChanceService salChanceService;
	
	/**
	 * 查找所有的销售机会，带分页
	 * <SalChance> findSalChanceByPage(int curpage, int row)
	 */
	@RequestMapping(value="/{page}/saleChance")
	public String saleChance(@PathVariable int page,HttpSession session) {
		//不移除会出现上次查询的页面
		if(session.getAttribute("sc")!=null) {
					session.removeAttribute("sc");
		}
		try {
			PageInfo<SalChance> findSalChanceByPage = salChanceService.findSalChanceByPage(page, 3);
			session.setAttribute("findSalChance", findSalChanceByPage);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误："+e.getMessage());
		}
		return "sale/list";
	}
	/**
	 * 根据条件查找所有的销售机会
	 *<SalChance> findSalPageByCon(int curpage, int row, SalChance sc)
	 */
	@RequestMapping(value="/{page}/findSaleChance", method=RequestMethod.POST)
	public String findSaleChance(SalChance sc,@PathVariable int page,HttpSession session) {
		session.setAttribute("sc", sc);
		try {
			PageInfo<SalChance> findSalPageByCon = salChanceService.findSalPageByCon(page, 3, sc);
			session.setAttribute("findSalChance", findSalPageByCon);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "sale/list";
	}
	/**
	 * 点击下一页的时候进行数据的处理
	 */
	@RequestMapping(value="/{page}/findSaleChanceOne" ,method=RequestMethod.GET)
		public String findSaleChanceOne(@PathVariable int page,HttpSession session) {
			try {
				if (session.getAttribute("sc")==null) {
					return "redirect:saleChance.action";
				}
				SalChance sc = (SalChance)session.getAttribute("sc");
				PageInfo<SalChance> findSalPageByCon = salChanceService.findSalPageByCon(page, 3, sc);
				session.setAttribute("findSalChance", findSalPageByCon);
			} catch (CrmCommonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute("msg", "登陆失败:"+e.getMessage());
			}
			return "sale/list";
		}
		@RequestMapping(value="/addSaleChance" ,method=RequestMethod.GET)
		public String addSaleChance(String chcDueTo,HttpSession session) {
			return "sale/add_salchance";
		}
		
		/**
		 *新建销售机会
		 *saveChance(SalChance sc) throws CrmCommonException;
		 *分配人chcDueTo怎么加入
		 *状态chcStatus success develop开发
		 */
		@RequestMapping(value="/addSaleChance" ,method=RequestMethod.POST)
		public String addSaleChance(SalChance sc,HttpSession session ) {
			try {
				salChanceService.saveChance(sc);
			} catch (CrmCommonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute("msg","错误 "+e.getMessage() );
			}
			return "redirect:1/saleChance.action";
		
		}
		
		/** 指派
		 * 
		 * 根据销售机会id查找销售机会
		 * SalChance findOneSalChance(long chcId) 
		 */
		@RequestMapping(value="/dispatchSale" ,method=RequestMethod.GET)
		public String dispatchSale(Long chcId,HttpSession session) {
			try {
				SalChance oneSalChance = salChanceService.findOneSalChance(chcId);
				session.setAttribute("oneSalChance", oneSalChance);
			} catch (CrmCommonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			session.setAttribute("chcId", chcId);
			return "sale/dispatch";
			
		}
		/**
		 * 更新开发计划信息
		 * @param sc
		 * @throws CrmCommonException
		 *void updateChance(SalChance sc)
		 */
		@RequestMapping(value="/dispatchSale" ,method=RequestMethod.POST)
		public String dispatchSale(BigDecimal chcId,SalChance salChance,HttpSession session) {
			try {
				salChance.setChcId(chcId);
				salChance.setChcStatus("develop");
				salChanceService.updateChance(salChance);
			} catch (CrmCommonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "sale/dispatch";
		}
		/**
		 * 根据编号 编辑开发机会
		 */
		@RequestMapping(value="/saleEdit" ,method=RequestMethod.GET)
		public String saleEdit(Long chcId,HttpSession session) {
			try {
				SalChance oneSalChance = salChanceService.findOneSalChance(chcId);
				session.setAttribute("oneSalChance", oneSalChance);
			} catch (CrmCommonException e) {
				e.printStackTrace();
				session.setAttribute("msg","错误 "+e.getMessage() );
			}
			return "sale/edit";
		} 
		@RequestMapping(value="/saleEdit" ,method=RequestMethod.POST)
		public String saleEdit(SalChance salChance,HttpSession session) {
			try {
				salChanceService.updateSalChance(salChance);
			} catch (CrmCommonException e) {
				e.printStackTrace();
				session.setAttribute("msg","错误 "+e.getMessage() );
			}
			return "redirect:1/saleChance.action";
			
		}
		/**
		 * 根据编号 删除开发机会
		 */
		@RequestMapping(value="/delete",method=RequestMethod.GET)
		public String delete(Long chcId,HttpSession session){
			try {
				salChanceService.deleteSalChance(chcId);
			} catch (CrmCommonException e) {
				e.printStackTrace();
				session.setAttribute("msg","错误 "+e.getMessage() );
			}
			
			return "redirect:1/saleChance.action";
		}
		/**
		 * 开发计划plan 查找开发计划模糊查询
		 */
		@RequestMapping(value="/{page}/saleDev" ,method=RequestMethod.GET)
		public String saleDev(@PathVariable Integer page,HttpSession session) {
			try {
				if(session.getAttribute("salChance")!=null){
					session.removeAttribute("salChance");
				}
				PageInfo<SalChance> findSalChanceByPage = 
						salChanceService.findSalChanceByPage(page, 3);
				session.setAttribute("findSalChanceByPage", findSalChanceByPage);
			} catch (CrmCommonException e) {
				session.setAttribute("msg","错误 "+e.getMessage() );			
			}
			return "sale/dev";
		} 
		@RequestMapping(value="/{page}/saleDev" ,method=RequestMethod.POST)
		public String saleDev(@PathVariable Integer page,SalChance salChance,HttpSession session) {
			try {
				PageInfo<SalChance> findSalChanceByPage = 
						salChanceService.findSalPageByCon(page, 3, salChance);
				session.setAttribute("findSalChanceByPage", findSalChanceByPage);
				session.setAttribute("salChance", salChance);
			} catch (CrmCommonException e) {
				session.setAttribute("msg","错误 "+e.getMessage() );
			}
			return "sale/dev";
		}
		@RequestMapping(value="/{page}/saleDevOne" ,method=RequestMethod.GET)
		public String saleDevOne(@PathVariable Integer page,HttpSession session) {
			try {
				SalChance salChance = (SalChance) session.getAttribute("salChance");
				if (salChance==null) {
					return "redirect:saleDev.action";
				}else{
					PageInfo<SalChance> findSalChanceByPage = 
							salChanceService.findSalPageByCon(page, 3, salChance);
					session.setAttribute("findSalChanceByPage", findSalChanceByPage);
				}
			} catch (CrmCommonException e) {
				session.setAttribute("msg","错误 "+e.getMessage() );
			}
			return "sale/dev";
		}
		/**
		 * 开发计划plan 制定开发计划dev_plan
		 */
		@RequestMapping(value="/saleDevPlan" ,method=RequestMethod.GET)
		public String saleDevPlan(Long chcId,HttpSession session) {
			try {
				SalChance oneSalChance = salChanceService.findOneSalChance(chcId);
				session.setAttribute("oneSalChance", oneSalChance);
			} catch (CrmCommonException e) {
				e.printStackTrace();
			}
			return "sale/dev_plan";
		} 
		@RequestMapping(value="/saleDevExecute" ,method=RequestMethod.GET)
		public String saleDevExecute(Long chcId,HttpSession session) {
			try {
				SalPlan findSalPlan = salChanceService.findSalPlan(chcId);
				session.setAttribute("findSalPlan", findSalPlan);
			} catch (CrmCommonException e) {
				e.printStackTrace();
			}
			
			return "sale/dev_execute";
		} 
		@RequestMapping(value="/saleDevExecute" ,method=RequestMethod.POST)
		public String saleDevExecute(SalPlan salPlan,HttpSession session) {
			try {
				if(salPlan.getPlaId() == null){
					salChanceService.savePlan(salPlan);
				}else 
				salChanceService.updateSalPlan(salPlan);
			} catch (CrmCommonException e) {
				e.printStackTrace();
			}
			return "redirect:1/saleDev.action";
		}
		/**
		 * 开发计划成功 查看
		 */
		@RequestMapping(value="/saleDevExecuteSu" ,method=RequestMethod.GET)
		public String saleDevExecuteSu(Long chcId,HttpSession session) {
			try {
				SalChance oneSalChance = salChanceService.findOneSalChance(chcId);
				oneSalChance.setChcStatus("success");
				salChanceService.updateChance(oneSalChance);
			} catch (CrmCommonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "redirect:1/saleDev.action";
		}
		/*
		 * 终止开发计划 查看
		 */
		@RequestMapping(value="/saleDevExecuteFa" ,method=RequestMethod.GET)
		public String saleDevExecuteFa(Long chcId,HttpSession session) {
			try {
				SalChance oneSalChance = salChanceService.findOneSalChance(chcId);
				oneSalChance.setChcStatus("defeat");
				salChanceService.updateChance(oneSalChance);
			} catch (CrmCommonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "redirect:1/saleDev.action";
		}
		/*
		 * 开发计划plan 查看 通过ID查找出这个计划的所有信息
		 */
		@RequestMapping(value="/saleDevDetail" ,method=RequestMethod.GET)
		public String saleDevDetail(Long chcId,HttpSession session) {
			try {
				//查找出这个机会
				SalChance oneSalChance = salChanceService.findOneSalChance(chcId);
				//放到session中 在页面上显示
				session.setAttribute("oneSalChanceByChcId", oneSalChance);
				//查找计划按照chcId
				SalPlan findSalPlan = salChanceService.findSalPlan(chcId);
				//放到session中 在页面上显示
				System.out.println(findSalPlan);
				session.setAttribute("findSalPlan", findSalPlan);
			} catch (CrmCommonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "sale/dev_detail";
		} 
		/*@RequestMapping(value="/saleDevDetail" ,method=RequestMethod.POST)
		public String saleDevDetail(SalChance salChance,HttpSession session) {
			return "sale/dev_detail";
		} */
}
