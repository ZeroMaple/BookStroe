package org.lanqiao.controller;

import org.lanqiao.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class OrdersController {
private OrdersService ordersService;

public OrdersService getOrdersService() {
	return ordersService;
}
@Autowired
public void setOrdersService(OrdersService ordersService) {
	this.ordersService = ordersService;
}
}
