package com.briup.crm.dao;

import com.briup.crm.common.bean.CstLog;
import com.briup.crm.common.bean.CstLogExample;
import java.math.BigDecimal;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CstLogMapper {
    int countByExample(CstLogExample example);

    int deleteByExample(CstLogExample example);

    int deleteByPrimaryKey(BigDecimal logId);

    int insert(CstLog record);

    int insertSelective(CstLog record);

    List<CstLog> selectByExample(CstLogExample example);

    CstLog selectByPrimaryKey(BigDecimal logId);

    int updateByExampleSelective(@Param("record") CstLog record, @Param("example") CstLogExample example);

    int updateByExample(@Param("record") CstLog record, @Param("example") CstLogExample example);

    int updateByPrimaryKeySelective(CstLog record);

    int updateByPrimaryKey(CstLog record);
}