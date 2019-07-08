package com.briup.crm.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.briup.crm.common.bean.Product;
import com.briup.crm.common.bean.Storage;
import com.briup.crm.common.exception.CrmCommonException;
import com.briup.crm.service.interfaces.IBasicDataService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping(value="basic")
public class BasicDate {
	
	@Autowired
	private IBasicDataService basicDataService;
	
	/**
	 * 查找所有的产品 带分页
	 * 
	 *   PageInfo<Product> findProductAll(int curPage, int row) throws CrmCommonException;          自定义异常
	 */
	@RequestMapping(value="/{page}/basicProduct")
	public String basicProduct(@PathVariable int page,HttpSession session) {
		if (session.getAttribute("product")!=null) {
			session.removeAttribute("product");
		}
		try {
			PageInfo<Product> findProductAll = basicDataService.findProductAll(page, 1);
			session.setAttribute("findProductAll", findProductAll);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误："+e.getMessage());
		}
		return "basic/product";
	}
	/**
	 *模糊查询产品 /**
	 * 根据条件查找产品 带分页
	 * 
	 *            条件
	 *PageInfo<Product> findProduct(Product product, int curPage, int row) throws CrmCommonException;
	 */
		 
	@RequestMapping(value="/{page}/basicProductFind",method=RequestMethod.POST)
	public String basicProductFind(@PathVariable int page,HttpSession session,Product product) {
		session.setAttribute("product", product);
		try {
			PageInfo<Product> findProduct = basicDataService.findProduct(product, page, 1);
			session.setAttribute("findProductAll", findProduct);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误："+e.getMessage());
		}
		return "basic/product";
	}
	@RequestMapping(value="/{page}/basicProductFindOther",method=RequestMethod.GET)
	public String basicProductFindOther(@PathVariable int page,HttpSession session) {
		if (session.getAttribute("product")==null) {
			return"redirect:basicProduct.action";
		}
		try {
			Product product = (Product) session.getAttribute("product");
			PageInfo<Product> findProduct = basicDataService.findProduct(product, page, 1);
			session.setAttribute("findProductAll", findProduct);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误："+e.getMessage());
		}
		return "basic/product";
	}
	
	/**
	 * 查找所有的库存 带分页
	 * PageInfo<Storage> findStorageAll(int curpage, int row) 
	 */
	@RequestMapping(value="/{page}/basicStorage")
	public String basicStorage(@PathVariable int page,HttpSession session) {
		if (session.getAttribute("storage")!=null) {
			session.removeAttribute("storage");
		}
		try {
			PageInfo<Storage> findStorageAll = basicDataService.findStorageAll(page, 1);
			session.setAttribute("findStorageAll", findStorageAll);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误"+e.getMessage());
		}
		return "basic/storage";
	}
	/**
	 * 根据条件查找所有的库存 带分页
	 * PageInfo<Storage> findStorage(Storage storage, int curPage, int row) 
	 */
	@RequestMapping(value="/{page}/basicStorageFind",method=RequestMethod.POST)
	public String basicStorageFind(@PathVariable int page,HttpSession session,Storage storage) {
		session.setAttribute("storage", storage);
		try {
			PageInfo<Storage> findStorage = basicDataService.findStorage(storage, page, 1);
			session.setAttribute("findStorageAll", findStorage);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误"+e.getMessage());
		}
		return "basic/storage";
	}
	@RequestMapping(value="/{page}/basicStorageFind")
	public String basicStorageFind(@PathVariable int page,HttpSession session) {
		if (session.getAttribute("product")==null) {
			return"redirect:basicStorage.action";
		}
		try {
			Storage storage = (Storage) session.getAttribute("storage");
			PageInfo<Storage> findStorage = basicDataService.findStorage(storage, page, 1);
			session.setAttribute("findStorageAll", findStorage);
		} catch (CrmCommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute("msg", "系统错误"+e.getMessage());
		}
		return "basic/storage";
	}
}
