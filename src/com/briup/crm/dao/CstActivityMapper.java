package com.briup.crm.dao;

import com.briup.crm.common.bean.CstActivity;
import java.math.BigDecimal;
import java.util.List;
public interface CstActivityMapper {
   
    int deleteByPrimaryKey(BigDecimal atvId);

    int insert(CstActivity record);
    int insertSelective(CstActivity record);
    List<CstActivity> selectByPrimaryKey(String atvId);
    int updateByPrimaryKeySelective(CstActivity record);

    int updateByPrimaryKey(CstActivity record);
}