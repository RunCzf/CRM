package com.briup.crm.service.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.crm.common.bean.CstActivity;
import com.briup.crm.common.bean.CstCustomer;
import com.briup.crm.common.bean.CstLinkman;
import com.briup.crm.common.exception.CrmCommonException;
import com.briup.crm.common.utils.CustomerUtil;
import com.briup.crm.dao.CstActivityMapper;
import com.briup.crm.dao.CstCustomerMapper;
import com.briup.crm.dao.CstLinkmanMapper;
import com.briup.crm.service.interfaces.ICustomerService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class CustomerServiceImpl implements ICustomerService {
	
	@Autowired
	private CstCustomerMapper cstCustomerMapper;
	@Autowired
	private CstLinkmanMapper cstLinkmanMapper;
	@Autowired
	private CstActivityMapper cstActivityMapper;
	
	
	@Override
	public List<CstCustomer> findAllCustomer() throws CrmCommonException {
		// TODO Auto-generated method stub
		return cstCustomerMapper.findAllCstCustomer();
	}
	@Override
	public PageInfo<CstCustomer> findAllCstCustomer(int curpage, int row) throws CrmCommonException {
		// TODO Auto-generated method stub
		PageHelper.startPage(curpage, row);
		return new PageInfo<>(cstCustomerMapper.findAllCstCustomer());
	}
	@Override
	public PageInfo<CstCustomer> findCustomerPageByCon(int curpage, int row, CstCustomer cstCustomer)
			throws CrmCommonException {
		// TODO Auto-generated method stub
		PageHelper.startPage(curpage, row);
		if (cstCustomer==null) {
			throw CrmCommonException.getException(406);
		}
		return new PageInfo<>(cstCustomerMapper.findAllCustomer(cstCustomer));
	}
	@Override
	public CstCustomer findCustomerByCstNo(String cstNo) throws CrmCommonException {
		// TODO Auto-generated method stub
		if (cstNo==null) {
			throw CrmCommonException.getException(401);
		}
		return cstCustomerMapper.findCustByCstNo(cstNo);
	}
	@Override
	public void addCustomer(CstCustomer customer) throws CrmCommonException {
		// TODO Auto-generated method stub
		if (StringUtils.isBlank(customer.getCustBankAccount())||StringUtils.isBlank(customer.getCustName())||StringUtils.isBlank(customer.getCustManagerName())||customer.getCustId()==null) {
			throw CrmCommonException.getException(401);
		}else {
		 /*CstCustomer byNo = cstCustomerMapper.selectCustomerByNo(customer.getCustId());
			if (byNo!=null) {
				throw CrmCommonException.getException(405);
			}*/
				cstCustomerMapper.cstAddCustomer(customer);
				System.out.println(customer);
			}
		
	}
	@Override
	public void updateCustomer(CstCustomer cstCustomer) throws CrmCommonException {
		// TODO Auto-generated method stub
		if (cstCustomer==null) {
			throw CrmCommonException.getException(403);
		}
		Integer level = CustomerUtil.getLevel(cstCustomer.getCustLevelLabel());
		cstCustomer.setCustLevel(level);
		cstCustomerMapper.updateOneCustomer(cstCustomer);
	}
	@Override
	public List<CstLinkman> findAllLinkManByCstId(Long cstId) throws CrmCommonException {
		if (cstId==null) {
			throw CrmCommonException.getException(401);
		}
		return cstLinkmanMapper.findAllLinkMan(cstId);
	}
	@Override
	public void updateLinkman(CstLinkman lkm) throws CrmCommonException {
		// TODO Auto-generated method stub
		if (lkm==null) {
			throw CrmCommonException.getException(401);
		}
		cstLinkmanMapper.updateByPrimaryKey(lkm);
	}
	@Override
	public void addLinkman(CstLinkman record) throws CrmCommonException {
		// TODO Auto-generated method stub
		if (record==null) {
			throw CrmCommonException.getException(403);
		}
		//通过ID查找CustomerName
		String findCustomerName = cstCustomerMapper.findCustomerName(record.getLkmCustId());
		record.setLkmCustName(findCustomerName);
		cstLinkmanMapper.insert(record);
	}
	@Override
	public String findCustomerNameById(Long custId) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public CstLinkman findLinkManById(long id) throws CrmCommonException {
		// TODO Auto-generated method stub
		return cstLinkmanMapper.findLinkMan(id);
	}
	@Override
	public List<CstActivity> findAllCstActivityByCstNo(String cstNo) throws CrmCommonException {
		// TODO Auto-generated method stub
		if (cstNo==null) {
			throw CrmCommonException.getException(401);
		}
		return cstActivityMapper.selectByPrimaryKey(cstNo);
	}
	@Override
	public void saveCstActivity(CstActivity cstActivity) throws CrmCommonException {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void updateAtv(CstActivity cstActivity) throws CrmCommonException {
		// TODO Auto-generated method stub
		
	}
	@Override
	public CstCustomer findCustomerByCstName(String custName) throws CrmCommonException {
		if (StringUtils.isBlank(custName)) {
			throw CrmCommonException.getException(403);
		}
		List<CstCustomer> list = cstCustomerMapper.selectBycustName(custName); // 得到查询结果
		if (list == null || list.size() <= 0) {
			throw CrmCommonException.getException(404);
		}
		return list.get(0);
	}
	@Override
	public Set<String> findAllCustomerLevelLable() throws CrmCommonException {
		// TODO Auto-generated method stub
		List<CstCustomer> customers = findAllCustomer();
		Set<String> set = new HashSet<>();
		for (CstCustomer cstCustomer : customers) {
			set.add(cstCustomer.getCustLevelLabel());
		}
		return set;
	}
	@Override
	public List<CstCustomer> findCstCustomerByLevelLable(String levelLable) throws CrmCommonException {
		// TODO Auto-generated method stub
		if (StringUtils.isBlank(levelLable)) {
			throw CrmCommonException.getException(403);
		}
		return cstCustomerMapper.selectBylevelLable(levelLable);
	}
	@Override
	public Set<Integer> findAllCustomerCredit() throws CrmCommonException {
		// TODO Auto-generated method stub
		List<CstCustomer> customers = findAllCustomer();
		Set<Integer> set = new HashSet<>();
		for (CstCustomer cstCustomer : customers) {
			set.add(cstCustomer.getCustCredit());
		}
		return set;
	}
	@Override
	public List<CstCustomer> findCstCustomerByCredit(int credit) throws CrmCommonException {
		// TODO Auto-generated method stub
		return cstCustomerMapper.selectByCredit(credit);
	}
	@Override
	public Set<Integer> findAllCustomerSatisfy() throws CrmCommonException {
		// TODO Auto-generated method stub
		List<CstCustomer> customers = findAllCustomer();
		Set<Integer> set = new HashSet<>();
		for (CstCustomer cstCustomer : customers) {
			set.add(cstCustomer.getCustSatisfy());
		}
		return set;
	}
	@Override
	public List<CstCustomer> findCstCustomerBySatisfy(int satisfy) throws CrmCommonException {
		// TODO Auto-generated method stub
		return cstCustomerMapper.selectBySatisfy(satisfy);
	}
	@Override
	public void deleteLinkMan(Long lkmId) throws CrmCommonException{
		// TODO Auto-generated method stub
		if(lkmId == null){
			throw CrmCommonException.getException(401);
		}
		cstLinkmanMapper.deleteLinkman(lkmId);
	}
	
}

