package org.lanqiao.serviceImpl;

import java.util.List;

import org.lanqiao.bean.Products;
import org.lanqiao.dao.ProductsDao;
import org.lanqiao.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;

public class ProductsServiceImpl implements ProductService {
private ProductsDao productsDao;

public ProductsDao getProductsDao() {
	return productsDao;
}
@Autowired
public void setProductsDao(ProductsDao productsDao) {
	this.productsDao = productsDao;
}
@Override
public List <Products> getIndexBookImage() {
	// TODO Auto-generated method stub
	return productsDao.getIndexBookImage();
}
@Override
public List<Products> getSelectBookImage(Products products) {
	// TODO Auto-generated method stub
	return productsDao.getSelectBookImage(products);
}
@Override
public Products getProductsInformation(Products products) {
	// TODO Auto-generated method stub
	return productsDao.getProductsInformation(products);
}



}
