package org.lanqiao.bean;

import java.sql.Date;

public class Orders {
private int	orderId;//����id
private int	userId ;//�û�id�������
private int	productId;//��Ʒid�������
private String orderTell;//������
private Date orderDate;//��������
private String	orderComments;//��������
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
