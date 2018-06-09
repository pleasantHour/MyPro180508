package cn.sxt.supermi.service.order.impl;

import java.util.List;

import cn.sxt.supermi.dao.order.OrderDAO;
import cn.sxt.supermi.dao.order.impl.OrderDAOImpl;
import cn.sxt.supermi.entity.Order;
import cn.sxt.supermi.service.order.OrderService;

public class OrderServiceImpl implements OrderService {
	OrderDAO dao = new OrderDAOImpl();
	@Override
	public List<Order> getAllList(int u_id) {
		// TODO Auto-generated method stub
		return dao.getAllList(u_id);
	}

	@Override
	public List<Order> getStateList(Integer u_id, Integer o_State) {
		// TODO Auto-generated method stub
		return dao.getStateList(u_id, o_State);
	}

	@Override
	public int add(Order t) {
		// TODO Auto-generated method stub
		return dao.add(t);
	}

	@Override
	public int updateState(Integer o_id, Integer o_State,Integer num) {
		// TODO Auto-generated method stub
		return dao.updateState(o_id, o_State,num);
	}

	@Override
	public int getMaxId() {
		// TODO Auto-generated method stub
		return dao.getMaxId();
	}

	@Override
	public List<Order> getAll() {
		// TODO Auto-generated method stub
		return dao.getAll();
	}

	@Override
	public List<Order> getAllStateList(Integer o_State) {
		// TODO Auto-generated method stub
		return dao.getAllStateList(o_State);
	}

}
