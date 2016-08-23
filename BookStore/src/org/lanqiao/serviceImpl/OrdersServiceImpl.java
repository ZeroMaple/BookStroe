package org.lanqiao.serviceImpl;

import org.lanqiao.dao.OrdersDao;
import org.lanqiao.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;

public class OrdersServiceImpl implements OrdersService{
private OrdersDao ordersDao;

public OrdersDao getOrdersDao() {
	return ordersDao;
}
@Autowired
public void setOrdersDao(OrdersDao ordersDao) {
	this.ordersDao = ordersDao;
}

}
