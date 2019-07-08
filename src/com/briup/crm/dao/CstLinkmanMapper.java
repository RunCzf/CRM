package com.briup.crm.dao;

import com.briup.crm.common.bean.CstLinkman;
import java.math.BigDecimal;
import java.util.List;

public interface CstLinkmanMapper {
    //int countByExample(CstLinkmanExample example);

   // int deleteByExample(CstLinkmanExample example);

    int deleteByPrimaryKey(BigDecimal lkmId);

    void insert(CstLinkman record);

    int insertSelective(CstLinkman record);

    //List<CstLinkman> selectByExample(CstLinkmanExample example);

    CstLinkman selectByPrimaryKey(BigDecimal lkmId);

    //int updateByExampleSelective(@Param("record") CstLinkman record, @Param("example") CstLinkmanExample example);

    //int updateByExample(@Param("record") CstLinkman record, @Param("example") CstLinkmanExample example);

    int updateByPrimaryKeySelective(CstLinkman record);

    int updateByPrimaryKey(CstLinkman record);

    List<CstLinkman> findAllLinkMan(long cstId);
    
    CstLinkman findLinkMan(long lkmId);

	void deleteLinkman(Long lkmId);
}