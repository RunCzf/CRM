package com.briup.crm.dao;

import com.briup.crm.common.bean.Storage;
import com.briup.crm.common.bean.StorageExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface StorageMapper {
    int countByExample(StorageExample example);

    int deleteByExample(StorageExample example);

    int insert(Storage record);

    int insertSelective(Storage record);

    List<Storage> selectByExample(StorageExample example);

    int updateByExampleSelective(@Param("record") Storage record, @Param("example") StorageExample example);

    int updateByExample(@Param("record") Storage record, @Param("example") StorageExample example);

	List<Storage> selectAllStorage();
	List<Storage> selectAllByStorage(Storage storage);
}