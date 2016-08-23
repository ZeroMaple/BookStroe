package org.lanqiao.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.lanqiao.bean.Products;
import org.lanqiao.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ProductsController {
private ProductService productService;
@RequestMapping("product")
public String getIndexImage(HttpServletRequest request){
	List<Products> products=productService.getIndexBookImage();
	request.setAttribute("products", products);
	return "Index";
}
public ProductService getProductService() {
	return productService;
}
@Autowired
public void setProductService(ProductService productService) {
	this.productService = productService;
}
//selectProduct
@RequestMapping("selectProduct")
public String selectProduct(Products products,HttpServletRequest request){
	List<Products>products2=productService.getSelectBookImage(products);
	request.setAttribute("selectProduct",products2 );
	return"SelectProduct";
}
//查看商品的详细信息
@RequestMapping("goshopping")
public String productInformation(Products products,HttpServletRequest request){
	Products products2= productService.getProductsInformation(products);
	System.out.println(products2);
	request.setAttribute("productInformation",products2);
	return"GoShopping";
}
}
