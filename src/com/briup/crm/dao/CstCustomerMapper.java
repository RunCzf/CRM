package com.briup.crm.dao;

import java.util.List;

import com.briup.crm.common.bean.CstCustomer;

public interface CstCustomerMapper {
	List<CstCustomer> findAllCstCustomer();

	List<CstCustomer> findAllCustomer(CstCustomer cstCustomer);

	CstCustomer findCustByCstNo(String cstId);
	CstCustomer selectCustomerByNo(Long csutNo);

	void cstAddCustomer(CstCustomer customer);

	void updateOneCustomer(CstCustomer customer);

	String findCustomerName(Long custId);
	List<CstCustomer> selectBycustName(String custName);

	List<CstCustomer> selectBylevelLable(String custLevelLable);

	List<CstCustomer> selectByCredit(int custCredit);

	List<CstCustomer> selectBySatisfy(int custSatisfy);

}
