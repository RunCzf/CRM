package com.briup.crm.dao;

import com.briup.crm.common.bean.SalPlan;
import java.math.BigDecimal;
import java.util.List;

public interface SalPlanMapper {

    int deleteByPrimaryKey(BigDecimal plaId);

    int insert(SalPlan record);

    int insertSelective(SalPlan record);

    List<SalPlan> selectByExample(SalPlan example);

    SalPlan selectByPrimaryKey(BigDecimal plaId);


    int updateByPrimaryKeySelective(SalPlan record);

    int updateByPrimaryKey(SalPlan record);

	void saveOnePlan(SalPlan sp);
	SalPlan findSalPlanByChcId(long chcId);

	void updatePlan(SalPlan sp);
}