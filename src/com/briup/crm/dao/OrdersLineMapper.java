package com.briup.crm.dao;

import com.briup.crm.common.bean.OrdersLine;
import com.briup.crm.common.bean.OrdersLineExample;
import java.math.BigDecimal;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrdersLineMapper {
    int countByExample(OrdersLineExample example);

    int deleteByExample(OrdersLineExample example);

    int deleteByPrimaryKey(BigDecimal oddId);

    int insert(OrdersLine record);

    int insertSelective(OrdersLine record);

    List<OrdersLine> selectByExample(OrdersLineExample example);

    OrdersLine selectByPrimaryKey(BigDecimal oddId);

    int updateByExampleSelective(@Param("record") OrdersLine record, @Param("example") OrdersLineExample example);

    int updateByExample(@Param("record") OrdersLine record, @Param("example") OrdersLineExample example);

    int updateByPrimaryKeySelective(OrdersLine record);

    int updateByPrimaryKey(OrdersLine record);

	List<OrdersLine> selectByOdrId(BigDecimal oddOrderId);

}