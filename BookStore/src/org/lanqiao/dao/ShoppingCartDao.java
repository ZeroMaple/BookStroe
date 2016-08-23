package org.lanqiao.dao;

import java.util.List;

import org.lanqiao.bean.Products;
import org.lanqiao.bean.Seller;
import org.lanqiao.bean.ShoppingCart;

public interface ShoppingCartDao {
	public List<ShoppingCart> getShoppingCartByUserId(ShoppingCart shoppingCart);
    //鍟嗗鐧诲綍
	public Seller getSellerLogin(Seller seller);
	//查看店铺商品
	public List<Products> getProduct(Seller seller);
}
