package org.lanqiao.bean;

import java.sql.Date;

public class Orders {
private int	orderId;//订单id
private int	userId ;//用户id（外键）
private int	productId;//商品id（外键）
private String orderTell;//订单号
private Date orderDate;//订单日期
private String	orderComments;//订单评论
public int getOrderId() {
	return orderId;
}
public void setOrderId(int orderId) {
	this.orderId = orderId;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public int getProductId() {
	return productId;
}
public void setProductId(int productId) {
	this.productId = productId;
}
public String getOrderTell() {
	return orderTell;
}
public void setOrderTell(String orderTell) {
	this.orderTell = orderTell;
}
public Date getOrderDate() {
	return orderDate;
}
public void setOrderDate(Date orderDate) {
	this.orderDate = orderDate;
}
public String getOrderComments() {
	return orderComments;
}
public void setOrderComments(String orderComments) {
	this.orderComments = orderComments;
}
public Orders(int orderId, int userId, int productId, String orderTell, Date orderDate, String orderComments) {
	super();
	this.orderId = orderId;
	this.userId = userId;
	this.productId = productId;
	this.orderTell = orderTell;
	this.orderDate = orderDate;
	this.orderComments = orderComments;
}
@Override
public String toString() {
	return "Orders [orderId=" + orderId + ", userId=" + userId + ", productId=" + productId + ", orderTell=" + orderTell
			+ ", orderDate=" + orderDate + ", orderComments=" + orderComments + "]";
}
public Orders() {
	super();
}

}
