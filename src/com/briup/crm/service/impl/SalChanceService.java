package com.briup.crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.crm.common.bean.SalChance;
import com.briup.crm.common.bean.SalChanceExample;
import com.briup.crm.common.bean.SalChanceExample.Criteria;
import com.briup.crm.common.bean.SalPlan;
import com.briup.crm.common.exception.CrmCommonException;
import com.briup.crm.dao.SalChanceMapper;
import com.briup.crm.dao.SalPlanMapper;
import com.briup.crm.service.interfaces.ISalChanceService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class SalChanceService implements ISalChanceService {

	@Autowired
	private SalChanceMapper salChanceMapper;
	@Autowired
	private SalPlanMapper salPlanMapper;
	
	@Override
	public void saveChance(SalChance sc) throws CrmCommonException {
		// TODO Auto-generated method stub
		if (sc==null) {
			throw CrmCommonException.getException(403);
		}
		salChanceMapper.insertSale(sc);
	}

	@Override
	public PageInfo<SalChance> findSalChanceByPage(int curpage, int row) throws CrmCommonException {
		// TODO Auto-generated method stub
		PageHelper.startPage(curpage, row);
		SalChanceExample example = new SalChanceExample();
		List<SalChance> list = salChanceMapper.selectByExample(example);
		if (list.isEmpty()) {
			throw CrmCommonException.getException(403);
		}
		return new PageInfo<>(list);
	}

	@Override
	public List<SalPlan> findAllSalPlan() throws CrmCommonException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SalPlan> findSalPlans(long chcId) throws CrmCommonException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageInfo<SalPlan> findSalPlanByPage(int curpage, int row) throws CrmCommonException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateChance(SalChance sc) throws CrmCommonException {
		if (sc==null) {
			throw CrmCommonException.getException(403);
		}
		salChanceMapper.updateByPrimaryKey(sc);
	}
	@Override
	public void updateChanceSu(SalChance sc) throws CrmCommonException {
		if (sc==null) {
			throw CrmCommonException.getException(403);
		}
		salChanceMapper.updateByPrimaryKeySu(sc);
	}

	@Override
	public SalChance findOneSalChance(long chcId) throws CrmCommonException {
		// TODO Auto-generated method stub
		
		return salChanceMapper.selectByPrimaryKeyOne(chcId);
	}

	@Override
	public SalPlan findSalPlan(long chcId) throws CrmCommonException {
		// TODO Auto-generated method stub
		return salPlanMapper.findSalPlanByChcId(chcId);
	}

	@Override
	public void deleteSalChance(Long chcId) throws CrmCommonException {
		// TODO Auto-generated method stub
		if(chcId == null)
		{
			throw CrmCommonException.getException(404);
		}
		salChanceMapper.deleteChanceBychcId(chcId);
	}

	@Override
	public void savePlan(SalPlan sp) throws CrmCommonException {
		// TODO Auto-generated method stub
		if(sp == null)
		{
			throw CrmCommonException.getException(403);
		}
		salPlanMapper.saveOnePlan(sp);
	}

	@Override
	public void deleteSalPlan(long plaId) throws CrmCommonException {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateSalPlan(SalPlan sp) throws CrmCommonException {
		// TODO Auto-generated method stub
		if(sp == null){
			throw CrmCommonException.getException(403);
		}
		salPlanMapper.updatePlan(sp);
	}

	@Override
	public PageInfo<SalChance> findSalPageByCon(int curpage, int row, SalChance sc) throws CrmCommonException {
		// TODO Auto-generated method stub
		PageHelper.startPage(curpage, row);
		//这是条件
		SalChanceExample example = new SalChanceExample();
		Criteria criteria = example.createCriteria();
		criteria.andChcCustNameLike("%"+sc.getChcCustName()+"%");
		criteria.andChcTitleLike("%"+sc.getChcTitle()+"%");
		criteria.andChcLinkmanLike("%"+sc.getChcLinkman()+"%");
		List<SalChance> list = salChanceMapper.selectByExample(example);
		if (list.isEmpty()) {
			throw CrmCommonException.getException(401);
		}
		return new PageInfo<>(list);
	}

	@Override
	public void updateSalChance(SalChance salChance) throws CrmCommonException {
		// TODO Auto-generated method stub
		if(salChance == null){
			throw CrmCommonException.getException(403);
		}
		salChanceMapper.updateSalChance(salChance);
	}

}
