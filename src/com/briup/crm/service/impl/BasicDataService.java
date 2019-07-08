package com.briup.crm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.crm.common.bean.Product;
import com.briup.crm.common.bean.Storage;
import com.briup.crm.common.exception.CrmCommonException;
import com.briup.crm.dao.ProductMapper;
import com.briup.crm.dao.StorageMapper;
import com.briup.crm.service.interfaces.IBasicDataService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class BasicDataService implements IBasicDataService {
	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private StorageMapper storageMapper;
	
	@Override
	public PageInfo<Product> findProduct(Product product, int curPage, int row) throws CrmCommonException {
		// TODO Auto-generated method stub
		PageHelper.startPage(curPage, row);
		if (product==null) {
			throw CrmCommonException.getException(406);
		}
		return new PageInfo<>(productMapper.selectByProduct(product));
	}

	@Override
	public PageInfo<Product> findProductAll(int curPage, int row) throws CrmCommonException {
		// TODO Auto-generated method stub
		PageHelper.startPage(curPage, row);
		return new PageInfo<>(productMapper.selectAllproduct());
	}

	@Override
	public PageInfo<Storage> findStorageAll(int curpage, int row) throws CrmCommonException {
		// TODO Auto-generated method stub
		PageHelper.startPage(curpage, row);
		return new PageInfo<>(storageMapper.selectAllStorage());
	}

	@Override
	public PageInfo<Storage> findStorage(Storage storage, int curPage, int row) throws CrmCommonException {
		// TODO Auto-generated method stub
		PageHelper.startPage(curPage, row);
		if (storage==null) {
			throw CrmCommonException.getException(406);
		}
		return new PageInfo<>(storageMapper.selectAllByStorage(storage));
	}

}
