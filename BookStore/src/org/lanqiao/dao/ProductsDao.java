package org.lanqiao.dao;

import java.util.List;

import org.lanqiao.bean.Products;

public interface ProductsDao {
public List<Products> getIndexBookImage();
public List<Products> getSelectBookImage(Products products);
//查看商品的详细信息
public Products getProductsInformation(Products products);
}
