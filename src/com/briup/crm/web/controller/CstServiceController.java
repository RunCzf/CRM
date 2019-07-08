package com.briup.crm.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.briup.crm.common.bean.CstCustomer;
import com.briup.crm.common.bean.CstService;
import com.briup.crm.common.bean.SysUser;
import com.briup.crm.common.exception.CrmCommonException;
import com.briup.crm.service.interfaces.ICstService;
import com.briup.crm.service.interfaces.ICustomerService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping(value="/cstservice")
public class CstServiceController {
	@Autowired
	private ICustomerService customerService;
	@Autowired
	private ICstService cstServices;
	/**
	 * 服务的创建
	 */
	@RequestMapping(value="/cstServicesCj" ,method=RequestMethod.GET)
	public String cstServicesCj(HttpSession session) {
		try {
			List<CstCustomer> customers = customerService.findAllCustomer();
			session.setAttribute("customers", customers);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误:"+e.getMessage());
		}
		return "cust_service/add";
	}
	@RequestMapping(value="/cstServicesCj" ,method=RequestMethod.POST)
	public String cstServicesCj1(CstService cstService,HttpSession session) {
		try {
			cstServices.save(cstService);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误："+e.getMessage());
		}
		return "cust_service/add";
	}
	
	/**
	 * 按条件查询数
	 */
	@RequestMapping(value="/{page}/findByCon" ,method=RequestMethod.POST)
	public String findByCon(CstService con, @PathVariable Integer page,HttpSession session) {
		
			session.setAttribute("con", con);
		try {
			//PageInfo<CstService> pageInfoByfp = cstServices.findByfp(page, 4);
			PageInfo<CstService> pageInfoByfp = cstServices.findCstServiceByCondition(con, page, 4);
			session.setAttribute("pageInfoByfp", pageInfoByfp);
			
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "登陆失败:"+e.getMessage());
		}
		return "cust_service/dispatch";
		//return "redirct:cstServicesFp.action";
	}
	/**
	 * 点击下一页的时候进行数据的处理
	 */
	@RequestMapping(value="/{page}/findByCon1" ,method=RequestMethod.GET)
	public String findByCon1(@PathVariable Integer page,HttpSession session) {
		
		try {
			if (session.getAttribute("con")==null) {
				return "redirect:cstServicesFp.action";
			}
			CstService con = (CstService)session.getAttribute("con");
			PageInfo<CstService> pageInfoByfp = cstServices.findCstServiceByCondition(con, page, 4);
			session.setAttribute("pageInfoByfp", pageInfoByfp);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "登陆失败:"+e.getMessage());
		}
		return "cust_service/dispatch";
	}
	/**进入服务分配的时候查询所有的数据
	 */
	@RequestMapping(value="/{page}/cstServicesFp",method=RequestMethod.GET)
	public String cstServicesFp(@PathVariable Integer page,HttpSession session) {
		//不移除会出现上次查询的页面
		if(session.getAttribute("con")!=null) {
			session.removeAttribute("con");
		}
		try {
			List<SysUser> mngName = cstServices.findAllManagerName();
			session.setAttribute("mngName", mngName);
			PageInfo<CstService> pageInfoByfp = cstServices.findAllService(page, 4);
			session.setAttribute("pageInfoByfp", pageInfoByfp);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误："+e.getMessage());
		}
		return "cust_service/dispatch";
	}
	/**服务分配更新
	 */ 
	@RequestMapping(value="/fenPei",method=RequestMethod.POST)
	public String fenPei(CstService cstService,HttpSession session) {
		
		try {
			cstServices.updateCstService(cstService);
			session.setAttribute("msg", "分配成功");
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "错误信息:"+e.getMessage());
		}
		return "redirect:1/cstServicesFp.action";
	}
	/**刚进服务处理页面
	 */
	@RequestMapping(value="/{curPage}/serviceChuLi",method=RequestMethod.GET)
	public String serviceChuLi(@PathVariable Integer curPage,HttpSession session) {
		if(session.getAttribute("con")!=null) {
			session.removeAttribute("con");
		}
		try {
			System.out.println(11111);
			PageInfo<CstService> pageInfo = cstServices.findAllService(curPage, 5);
			session.setAttribute("pageInfoCl", pageInfo);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误："+e.getMessage());
		}
		return "cust_service/deal";
	}
	/**按条件查询数
	 */
		@RequestMapping(value="/{page}/findByConChuL" ,method=RequestMethod.POST)
		public String findByConChuL(CstService con, @PathVariable Integer page,HttpSession session) {
			
				session.setAttribute("con", con);
			try {
				//PageInfo<CstService> pageInfoByfp = cstServices.findByfp(page, 4);
				System.out.println(2222);
				PageInfo<CstService> pageInfoByfp = cstServices.findCstServiceByCondition(con, page, 5);
				session.setAttribute("pageInfoCl", pageInfoByfp);
				
			} catch (CrmCommonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute("msg", "登陆失败:"+e.getMessage());
			}
			return "cust_service/deal";
			//return "redirct:cstServicesFp.action";
		}
		/**
		 * 点击下一页的时候进行数据的处理
		 */
		@RequestMapping(value="/{page}/findByConChuL1" ,method=RequestMethod.GET)
		public String findByConChuL1(@PathVariable Integer page,HttpSession session,HttpServletRequest request) {
			try {
				if (session.getAttribute("con")==null) {
					return "redirect:serviceChuLi.action";
				}
				CstService con = (CstService)session.getAttribute("con");
				PageInfo<CstService> pageInfoByfp = cstServices.findServiceOnDealed(con, page, 5);
				session.setAttribute("pageInfoCl", pageInfoByfp);
			} catch (CrmCommonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute("msg", "登陆失败:"+e.getMessage());
			}
			return "cust_service/deal";
		}
		/**
		 * 服务处理里面的操作
		 */
		@RequestMapping(value="findChuL")
		public String findChuL(HttpSession session,Long svrId) {
			try {
				//List<CstService> allServices = cstServices.AllServices(svrId);
				List<CstService> allServices = cstServices.AllServices(svrId);
				session.setAttribute("allService", allServices);
			} catch (CrmCommonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute("msg", "系统错误："+e.getMessage());
			}
			return "cust_service/deal_detail";
		}
		@RequestMapping(value="/{curPage}/cstServicesFk",method=RequestMethod.GET)
		public String cstServicesFk(@PathVariable Integer curPage,HttpSession session) {
			if(session.getAttribute("con")!=null) {
				session.removeAttribute("con");
			}
			try {
				System.out.println(11111);
				PageInfo<CstService> pageInfo = cstServices.findAllService(curPage, 6);
				session.setAttribute("pageInfoFk", pageInfo);
			} catch (CrmCommonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute("msg", "系统错误："+e.getMessage());
			}
			return "cust_service/feedback";
		}
		@RequestMapping(value="/{page}/findByConFanK" ,method=RequestMethod.POST)
		public String findByConFanK(CstService con, @PathVariable Integer page,HttpSession session) {
			
				session.setAttribute("con", con);
			try {
				//PageInfo<CstService> pageInfoByfp = cstServices.findByfp(page, 4);
				PageInfo<CstService> pageInfo = cstServices.findCstServiceByCondition(con, page, 6);
				session.setAttribute("pageInfoFk", pageInfo);
				
			} catch (CrmCommonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute("msg", "登陆失败:"+e.getMessage());
			}
			return "cust_service/feedback";
			//return "redirct:cstServicesFp.action";
		}
		@RequestMapping(value="/{page}/findByConFanK1" ,method=RequestMethod.GET)
		public String findByConFanK1(CstService con, @PathVariable Integer page,HttpSession session) {
			
			//session.setAttribute("con", con);
			try {
				if (session.getAttribute("con")==null) {
					return "redirect:cstServicesFk.action";
				}
				//PageInfo<CstService> pageInfoByfp = cstServices.findByfp(page, 4);
				System.out.println(2222);
				PageInfo<CstService> pageInfo = cstServices.findCstServiceByCondition(con, page, 6);
				session.setAttribute("pageInfoFk", pageInfo);
				
			} catch (CrmCommonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute("msg", "登陆失败:"+e.getMessage());
			}
			return "cust_service/feedback";
			//return "redirct:cstServicesFp.action";
		}
		
		@RequestMapping(value="findFanKJg")
		public String findFanKJg(HttpSession session,Long svrId,HttpServletRequest request) {
			System.out.println(svrId);
			try {
				List<CstService> allServices = cstServices.AllServices(svrId);
				session.setAttribute("findFanKJgs", allServices);
				request.setAttribute("allServices", allServices);
			} catch (CrmCommonException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute("msg", "系统错误："+e.getMessage());
			}
			return "cust_service/feedback_detail";
		}
		
		@RequestMapping(value="delete")
		public String delete(Long serviceId,HttpSession session){
			//System.out.println(serviceId);
			try {
				cstServices.delete(serviceId);
			} catch (CrmCommonException e) {
				e.printStackTrace();
				session.setAttribute("msg", "系统错误："+e.getMessage());
			}
			return "redirect:1/cstServicesFp.action";
			
		}
		
		
}
