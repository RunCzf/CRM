package com.briup.crm.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.briup.crm.common.bean.CstActivity;
import com.briup.crm.common.bean.CstCustomer;
import com.briup.crm.common.bean.CstLinkman;
import com.briup.crm.common.bean.SysUser;
import com.briup.crm.common.exception.CrmCommonException;
import com.briup.crm.service.interfaces.ICstService;
import com.briup.crm.service.interfaces.ICustomerService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping(value="account")
public class AccountMangeController {
	@Autowired
	private ICustomerService customerService;
	@Autowired
	private ICstService cstServices;
	
	@RequestMapping(value="/{page}/accountM")
	public String accountM(@PathVariable int page,HttpSession session) {
		//400我上面page 下面写出cutpage
		if (session.getAttribute("csto")!=null) {
			session.removeAttribute("csto");
		}
		try {
			PageInfo<CstCustomer> cstCustomer = customerService.findAllCstCustomer(page, 2);
			session.setAttribute("cstCustomers", cstCustomer);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误："+e.getMessage());
		}
		return "cust_info/list";
	}
	@RequestMapping(value="/{page}/accountManGe",method=RequestMethod.POST)
	public String accountManGe(@PathVariable int page,HttpSession session,CstCustomer csto) {
		session.setAttribute("csto", csto);
		try {
			PageInfo<CstCustomer> cst = customerService.findCustomerPageByCon(page, 2, csto);
			session.setAttribute("cstCustomers", cst);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误："+e.getMessage());
		}
		return "cust_info/list";
	}
	@RequestMapping(value="/{page}/accountManGe1",method=RequestMethod.GET)
	public String accountManGe1(@PathVariable int page,HttpSession session) {
		if (session.getAttribute("csto")==null) {
			return"redirect:accountM.action";
		}
		try {
			CstCustomer csto = (CstCustomer) session.getAttribute("csto");
			PageInfo<CstCustomer> cst = customerService.findCustomerPageByCon(page, 2, csto);
			
			session.setAttribute("cstCustomers", cst);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误："+e.getMessage());
		}
		return "cust_info/list";
	}
	@RequestMapping(value="/editAcc")
	public String editAcc(String custId,HttpSession session) {
		//客户的编辑
		try {
			CstCustomer byCstIo = customerService.findCustomerByCstNo(custId);
			List<SysUser> mngName = cstServices.findAllManagerName();
			session.setAttribute("mgNames", mngName);
			session.setAttribute("byCstNo", byCstIo);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误："+e.getMessage());
		}
		return "cust_info/customer_edit";
	}
	@RequestMapping(value="/editAcc",method=RequestMethod.POST)
	public String editAcc1(CstCustomer customer,HttpSession session) {
		
		try {
			customerService.updateCustomer(customer);
			session.setAttribute("msg", "修改成功");
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误" + e.getMessage());
		}
		return "cust_info/customer_edit";
	}
	
	@RequestMapping(value="/newAccount" ,method=RequestMethod.GET)
	public String newAccount(CstCustomer customer,HttpSession session) {
		
		return "cust_info/add_customer";
	}
	@RequestMapping(value="/newAccount" ,method=RequestMethod.POST)
	public String newAccount1(CstCustomer customer,HttpSession session) {
		try {
			customerService.addCustomer(customer);
			session.setAttribute("msg", "新增成功");
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误"+e.getMessage());
		}
		System.out.println(111);
		return "cust_info/add_customer";
	}
	/**contactPerson
	 * linkMan
	 * 联系人
	 */
	@RequestMapping(value="/contactPerson")
	public String contactPerson(Long cstId,HttpSession session) {
		//500java.lang.NumberFormatException: For input string: "list" 遍历分页的时候采用list
		try {
			if (session.getAttribute("cstId")==null) {
				session.setAttribute("cstId",cstId);
			}
				List<CstLinkman> findAllLinkManByCstId = customerService.findAllLinkManByCstId(cstId);
				session.setAttribute("findAllLinkMan", findAllLinkManByCstId);
				session.setAttribute("lkmCstId", cstId);
			
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误"+e.getMessage());
		}
		return "cust_info/linkman";
	}

	@RequestMapping(value="/linkManAdd")
	public String linkManAdd() {
		return "cust_info/linkman_add";
		
	}
	/**
	 *客户信息 中 新建联系人 客户Id lkm_cust_id =lkm_cust_no lkm_cust_name 
	 */
	@RequestMapping(value="/linkManAdd" ,method=RequestMethod.POST)
	public String linkManAdd(CstLinkman lkm,HttpSession session) {
		try {
			Long lkmCustId = (Long) session.getAttribute("lkmCstId");
			lkm.setLkmCustId(lkmCustId);
			System.out.println(lkm);
			customerService.addLinkman(lkm);
		} catch (CrmCommonException e) {
			e.printStackTrace();
			session.setAttribute("msg", "系统错误"+e.getMessage());
		}
		//重定向会出现空指针---还要调试
		return "cust_info/linkman_add";
	}
	
	/**
	 * 客户信息 中  联系人删除
	 */
	@RequestMapping(value="/linkmanDelete",method=RequestMethod.GET)
	public String linkmanDelete(Long lkmId,HttpSession session){
		try {
			customerService.deleteLinkMan(lkmId);
		} catch (CrmCommonException e) {
			e.printStackTrace();
			session.setAttribute("msg", "错误"+e.getMessage());
		}
		return "cust_info/linkman";
	}
	
	/**
	 * 客户信息编辑
	 */
	@RequestMapping(value="/linkmanEdit" ,method=RequestMethod.GET)
	public String linkmanEdit(Long lkmId,HttpSession session) {
		
		try {
			//通过lkmId 查找所有联系人用于jsp页面显示
			CstLinkman findLinkManById = customerService.findLinkManById(lkmId);
			session.setAttribute("findLinkManByCstId", findLinkManById);
			session.setAttribute("lkmId",lkmId);
		} catch (CrmCommonException e) {
			/*// TODO Auto-generated catch block
			e.printStackTrace();这个代码不应该出现*/
			session.setAttribute("msg", "错误"+e.getMessage());
		}
		return "cust_info/linkman_edit";
		
	}
	@RequestMapping(value="/linkmanEdit" ,method=RequestMethod.POST)
	public String linkmanEdit(CstLinkman lkm,HttpSession session) {
		try {
			//通过lkmId修改联系人信息
			customerService.updateLinkman(lkm);
		} catch (CrmCommonException e) {
			e.printStackTrace();
			session.setAttribute("msg", "系统错误" + e.getMessage());
		}
		return "cust_info/linkman_edit";
	}
	
	/**	findAllCstActivityByCstNo(String cstNo)
	 * 客户交往记录 
	 * 根据客户编号查找所有的交往记录
	 */
	@RequestMapping(value="/activities" ,method=RequestMethod.GET)
	public String activities(String cstNo,HttpSession session) {
		try {
			List<CstActivity> findAllCstActivityByCstNo = customerService.findAllCstActivityByCstNo(cstNo);
			session.setAttribute("findAllActivities", findAllCstActivityByCstNo);
		} catch (CrmCommonException e) {
			e.printStackTrace();
			session.setAttribute("msg", "系统错误" + e.getMessage());
		}
		return "cust_info/activities";
	}
	
	/**
	 * 新建客户交往  
	 * 保存交往记录 saveCstActivity(CstActivity cstActivity)
	 */
	@RequestMapping(value="/activitiesAdd" ,method=RequestMethod.GET)
	public String activitiesAdd(HttpSession session) {
		return "cust_info/activities_add";
	}
	
	
	@RequestMapping(value="/activitiesAdd" ,method=RequestMethod.POST)
	public String activitiesAdd(CstActivity cstActivity,HttpSession session) {
		return "cust_info/linkman_edit";
	}
	
	/**
	 * 修改客户交往  
	 * 更新交往记录
	 */
	@RequestMapping(value="/activitiesEdit" ,method=RequestMethod.GET)
	public String activitiesEdit(String cstNo,HttpSession session) {
		
		return "cust_info/linkman_edit";
	}
	
	@RequestMapping(value="/activitiesEdit" ,method=RequestMethod.POST)
	public String activitiesEdit(HttpSession session) {
		
		return "cust_info/linkman_edit";
	}
	
}