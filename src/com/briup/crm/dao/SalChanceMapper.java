package com.briup.crm.dao;

import com.briup.crm.common.bean.SalChance;
import com.briup.crm.common.bean.SalChanceExample;
import java.math.BigDecimal;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SalChanceMapper {
    int countByExample(SalChanceExample example);

    int deleteByExample(SalChanceExample example);

    int deleteByPrimaryKey(BigDecimal chcId);

    int insert(SalChance record);

    int insertSelective(SalChance record);

    List<SalChance> selectByExample(SalChanceExample example);

    SalChance selectByPrimaryKey(BigDecimal chcId);

    int updateByExampleSelective(@Param("record") SalChance record, @Param("example") SalChanceExample example);

    int updateByExample(@Param("record") SalChance record, @Param("example") SalChanceExample example);

    int updateByPrimaryKeySelective(SalChance record);

    int updateByPrimaryKey(SalChance record);
    void insertSale(SalChance record);

	void updateByPrimaryKeySu(SalChance sc);
	SalChance selectByPrimaryKeyOne(Long chcId);

	void deleteChanceBychcId(Long chcId);

	void updateSalChance(SalChance salChance);

	List<SalChance> findAllSalChance(SalChance sc);
}