package org.lanqiao.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.lanqiao.bean.Seller;
import org.lanqiao.bean.ShoppingCart;
import org.lanqiao.bean.User;
import org.lanqiao.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ShoppingCartController {
	private ShoppingCartService shoppingCartService;

	public ShoppingCartService getShoppingCartService() {
		return shoppingCartService;
	}
	@Autowired
	public void setShoppingCartService(ShoppingCartService shoppingCartService) {
		this.shoppingCartService = shoppingCartService;
	}
	/**
	 * 
	 * @param shoppingCart
	 * @param session
	 * @param request
	 * @return
	 * 
	 * 锟皆硷拷写锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷芗虻サ模锟斤拷锟轿拷锟斤拷录没锟斤拷Session锟斤拷锟斤拷也锟斤拷知锟斤拷要锟斤拷什么去锟叫断碉拷录锟斤拷锟矫伙拷ID锟斤拷So锟斤拷锟斤拷锟斤拷锟叫达拷锟斤拷耍锟斤拷锟斤拷锟斤拷锟斤拷透愣拷恕锟�
	 */
/*	@RequestMapping("shoppingCart")
	public List<ShoppingCart> getShoppingCartByUserIdd(ShoppingCart shoppingCart,HttpSession session,HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		return null;
	}*/
	@ResponseBody
	@RequestMapping("shoppingCart")
	public List<ShoppingCart> getShoppingCartByUserId(ShoppingCart shoppingCart,HttpSession session) {
		// TODO Auto-generated method stub
		User user = new User();
		List<ShoppingCart> shoppingCarts = new ArrayList<ShoppingCart>();
		user=(User) session.getAttribute("login");
		shoppingCarts = shoppingCartService.getShoppingCartByUserId(shoppingCart);
		return shoppingCarts;
	}
	@RequestMapping("getSellerLogin")
	public String getSellerLogin(Seller seller,HttpSession request){
		Seller seller2=shoppingCartService.getSellerLogin(seller);
		if(seller2!=null){
			System.out.println(seller2);
			request.setAttribute("loginseller", seller2);
			}else{
				request.setAttribute("error", "密码错误！");
				return "ProductLogin";
			}
		return"redirect:sellerproduct.do?"+seller.getSellerId();
	}
	@RequestMapping("sellerproduct")
	public String sellerProduct(Seller seller){
		System.out.println(seller);
		//System.out.println(shoppingCartService.getProduct(seller));
		return"Business";
	}
	//商家注销
		@RequestMapping("SellerRelogin")
		public String ReLogin(HttpSession session){
			session.setAttribute("seller2",null);
			session.invalidate();
			return "ProductLogin";
		}
}
