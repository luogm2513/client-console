package com.philip.client.dao;

import java.util.List;

import com.philip.client.model.Order;
import com.philip.client.model.OrderCond;

public interface OrderDao {

	List<Order> queryAll();
	
	List<Order> queryByCond(OrderCond cond);
	
	Integer countAll();
	
	Integer insert(Order order);
	
	Integer update(Order order);
}
