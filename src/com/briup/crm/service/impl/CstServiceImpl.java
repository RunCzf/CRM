package com.briup.crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.crm.common.bean.CstService;
import com.briup.crm.common.bean.SysUser;
import com.briup.crm.common.exception.CrmCommonException;
import com.briup.crm.dao.CstServiceMapper;
import com.briup.crm.dao.SysUserMapper;
import com.briup.crm.service.interfaces.ICstService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class CstServiceImpl implements ICstService {
	@Autowired
	private CstServiceMapper cstServiceMapper;
	@Autowired
	private SysUserMapper sysUserMapper;
	@Override
	public void save(CstService cstService) throws CrmCommonException {
		// TODO Auto-generated method stub
		if (cstService==null) {
			throw CrmCommonException.getException(403);
		}
		cstServiceMapper.insertService(cstService);
	}

	@Override
	public List<SysUser> findAllManagerName() throws CrmCommonException {
		// TODO Auto-generated method stub
		return sysUserMapper.findMName();
	}

	@Override
	public PageInfo<CstService> findCstServiceByCondition(CstService con, int curPage, int row)
			throws CrmCommonException {
		// TODO Auto-generated method stub
		if (con==null) {
			throw CrmCommonException.getException(403);
		}
		PageHelper.startPage(curPage, row);
		List<CstService> cstServices = cstServiceMapper.findAllByFp(con);
		return new PageInfo<>(cstServices);
	}

	@Override
	public PageInfo<CstService> findServiceOnDealed(CstService con, int curPage, int row) throws CrmCommonException {
		// TODO Auto-generated method stub
		PageHelper.startPage(curPage, row);
		if (con==null) {
			throw CrmCommonException.getException(403);
		}
		List<CstService> custServiceOnDealed = cstServiceMapper.findAllByFp(con);
		return new PageInfo<>(custServiceOnDealed);
	}

	@Override
	public PageInfo<CstService> findAllService(int curPage, int row) throws CrmCommonException {
		// TODO Auto-generated method stub
		PageHelper.startPage(curPage, row);
		return new PageInfo<>(cstServiceMapper.findAllServices());
	}

	@Override
	public PageInfo<CstService> findByfp(int curPage, int row) throws CrmCommonException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageInfo<CstService> findBycl(int curPage, int row) throws CrmCommonException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(long svrId) throws CrmCommonException {
		// TODO Auto-generated method stub
		cstServiceMapper.deleteService(svrId);
	}

	@Override
	public void updateCstService(CstService cstService) throws CrmCommonException {
		// TODO Auto-generated method stub
		if (cstService==null) {
			throw CrmCommonException.getException(403);
		}
		cstServiceMapper.updateOneService(cstService);
	}

	@Override
	public CstService queryOneByid(long svrId) throws CrmCommonException {
		// TODO Auto-generated method stub
		
		return null;
	}

	@Override
	public void updateinfo(CstService cstService) throws CrmCommonException {
		// TODO Auto-generated method stub

	}

	@Override
	public void Dealresult(CstService cstService) throws CrmCommonException {
		// TODO Auto-generated method stub

	}

	@Override
	public List<CstService> findAllServices() throws CrmCommonException {
		// TODO Auto-generated method stub
		return cstServiceMapper.findAllCstService();
	}

	@Override
	public List<CstService> AllServices(Long svrId) throws CrmCommonException {
		// TODO Auto-generated method stub
		if (svrId==null) {
			throw CrmCommonException.getException(401);
		}
		return cstServiceMapper.findAllCstServiceById(svrId);
	}

}
