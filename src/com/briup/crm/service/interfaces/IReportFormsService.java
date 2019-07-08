package com.briup.crm.service.interfaces;

import org.jfree.data.category.CategoryDataset;
import org.jfree.data.general.PieDataset;

import com.briup.crm.common.exception.CrmCommonException;

public interface IReportFormsService {
	/**
	 * 客户贡献
	 * 
	 * @param cust_name
	 * @return
	 * @throws CrmCommonException
	 */
	CategoryDataset findCstcontribute(String cust_name) throws Exception;
	PieDataset findCstcontribute1(String cust_name) throws Exception;

	/**
	 * 客户构成
	 * 
	 * @param condit
	 * @return
	 * @throws CrmCommonException
	 */
	CategoryDataset findCstMakeup(Integer condit) throws CrmCommonException;
}
