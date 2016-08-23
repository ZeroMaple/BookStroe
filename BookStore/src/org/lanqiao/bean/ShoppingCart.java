package org.lanqiao.bean;

public class ShoppingCart {
    private Integer shoppingCartID;
    private Integer shoppingCartQuantity;
    private Integer productId;
    private Integer userId;
    private Products products;
    private Seller seller;
    private User user;
	public Integer getShoppingCartID() {
		return shoppingCartID;
	}
	public void setShoppingCartID(Integer shoppingCartID) {
		this.shoppingCartID = shoppingCartID;
	}
	public Integer getShoppingCartQuantity() {
		return shoppingCartQuantity;
	}
	public void setShoppingCartQuantity(Integer shoppingCartQuantity) {
		this.shoppingCartQuantity = shoppingCartQuantity;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Products getProducts() {
		return products;
	}
	public void setProducts(Products products) {
		this.products = products;
	}
	public Seller getSeller() {
		return seller;
	}
	public void setSeller(Seller seller) {
		this.seller = seller;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public ShoppingCart(Integer shoppingCartID, Integer shoppingCartQuantity, Integer productId, Integer userId,
			Products products, Seller seller, User user) {
		super();
		this.shoppingCartID = shoppingCartID;
		this.shoppingCartQuantity = shoppingCartQuantity;
		this.productId = productId;
		this.userId = userId;
		this.products = products;
		this.seller = seller;
		this.user = user;
	}
	public ShoppingCart() {
		super();
	}
	@Override
	public String toString() {
		return "ShoppingCart [shoppingCartID=" + shoppingCartID + ", shoppingCartQuantity=" + shoppingCartQuantity
				+ ", productId=" + productId + ", userId=" + userId + ", products=" + products + ", seller=" + seller
				+ ", user=" + user + "]";
	}
	
}
