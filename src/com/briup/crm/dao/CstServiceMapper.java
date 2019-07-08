package com.briup.crm.dao;

import java.util.List;

import com.briup.crm.common.bean.CstService;
import com.briup.crm.common.bean.SysUser;

public interface CstServiceMapper {
	List<CstService> findAllCstServiceById(Long id);

	void insertService(CstService cstService);

	List<CstService> findAllByFp(CstService con);

	List<CstService> findAllCstService();

	List<CstService> findAllServices();

	List<SysUser> findMName();

	void updateOneService(CstService cstService);

	void deleteService(long svrId);
}
