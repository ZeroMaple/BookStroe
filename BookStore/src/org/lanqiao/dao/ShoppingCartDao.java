package org.lanqiao.dao;

import java.util.List;

import org.lanqiao.bean.Products;
import org.lanqiao.bean.Seller;
import org.lanqiao.bean.ShoppingCart;

public interface ShoppingCartDao {
	public List<ShoppingCart> getShoppingCartByUserId(ShoppingCart shoppingCart);
    //商家登录
	public Seller getSellerLogin(Seller seller);
	//�鿴������Ʒ
	public List<Products> getProduct(Seller seller);
}
