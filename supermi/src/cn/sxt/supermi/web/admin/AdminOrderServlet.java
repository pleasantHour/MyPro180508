package cn.sxt.supermi.web.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

import cn.sxt.supermi.entity.Order;
import cn.sxt.supermi.entity.User;
import cn.sxt.supermi.service.order.OrderService;
import cn.sxt.supermi.service.order.impl.OrderServiceImpl;
import cn.sxt.supermi.web.base.BaseServlet;

public class AdminOrderServlet extends BaseServlet{
	
	private OrderService orderSer = new OrderServiceImpl();
	/**
	 * 跳转 订单列表页面
	 */
	public Object showOrderList(HttpServletRequest request, HttpServletResponse response){
		//获得所有订单列表集合
		List<Order> orderList = orderSer.getAll();
		System.out.println("所有订单list大小"+orderList.size());
		//List<User> userList = 
		request.getSession().setAttribute("orderList", orderList);
		return "/view/admin/order_list.jsp";
	}
	
	/**
	 * 跳转 待发货订单页面
	 */
	public Object showOrderUnSendDList(HttpServletRequest request, HttpServletResponse response){
		
		return "/view/admin/order_list_unsend.jsp";
	}
	
	/**
	 * 跳转 已发货订单页面
	 */
	public Object showOrderSentList(HttpServletRequest request, HttpServletResponse response){
		
		return "/view/admin/order_sent_list.jsp";
	}
	
	/**
	 * 跳转 已完成订单页面
	 */
	public Object showOrderFinishedList(HttpServletRequest request, HttpServletResponse response){
		
		return "/view/admin/order_finished_list.jsp";
	}
}
