package org.lanqiao.serviceImpl;

import java.util.List;

import org.lanqiao.bean.Products;
import org.lanqiao.bean.Seller;
import org.lanqiao.bean.ShoppingCart;
import org.lanqiao.dao.ShoppingCartDao;
import org.lanqiao.service.ShoppingCartService;

public class ShoppingCartServiceImpl implements ShoppingCartService {
	private ShoppingCartDao shoppingCartDao;
	
	public ShoppingCartDao getShoppingCartDao() {
		return shoppingCartDao;
	}

	public void setShoppingCartDao(ShoppingCartDao shoppingCartDao) {
		this.shoppingCartDao = shoppingCartDao;
	}

	@Override
	public List<ShoppingCart> getShoppingCartByUserId(ShoppingCart shoppingCart) {
		// TODO Auto-generated method stub
		return shoppingCartDao.getShoppingCartByUserId(shoppingCart);
	}

	@Override
	public Seller getSellerLogin(Seller seller) {
		// TODO Auto-generated method stub
		return shoppingCartDao.getSellerLogin(seller);
	}

	@Override
	public List<Products> getProduct(Seller seller) {
		// TODO Auto-generated method stub
		return shoppingCartDao.getProduct(seller);
	}

}
