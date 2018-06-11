package cn.sxt.supermi.web.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sxt.supermi.entity.Detail;
import cn.sxt.supermi.entity.Order;
import cn.sxt.supermi.entity.User;
import cn.sxt.supermi.service.detail.DetailService;
import cn.sxt.supermi.service.detail.impl.DetailServiceImpl;
import cn.sxt.supermi.service.goods.GoodsService;
import cn.sxt.supermi.service.goods.impl.GoodsServiceImpl;
import cn.sxt.supermi.service.order.OrderService;
import cn.sxt.supermi.service.order.impl.OrderServiceImpl;
import cn.sxt.supermi.service.user.UserService;
import cn.sxt.supermi.service.user.impl.UserServiceImpl;
import cn.sxt.supermi.web.base.BaseServlet;

public class AdminOrderServlet extends BaseServlet{
	//业务层实体
	private GoodsService goodsSer = new GoodsServiceImpl();
	private OrderService orderSer = new OrderServiceImpl();
	private DetailService detailSer = new DetailServiceImpl();
	private UserService userSer = new UserServiceImpl();
	/**
	 * 跳转 订单列表页面
	 */
	public Object showOrderList(HttpServletRequest request, HttpServletResponse response){
		//获得所有订单列表集合
		List<Order> orderList = orderSer.getAll();
		//存放用户及订单的 Map
		Map<User,Order> maps = new HashMap<User,Order>();
		//用户对象
		User u = new User();
		int i = 0;
		for (Order order : orderList) {
			i++;
			//u = userSer.getUserByID();
			u = new User("jack"+i,"jackNiCk","jackpwd","15074452008","男","null"+i);
			maps.put(u, order);
		}
		request.getSession().setAttribute("orderMap", maps);
		return "/view/admin/order_list.jsp";
	}
	
	/**
	 * 跳转 待发货订单页面
	 */
	public Object showOrderUnSendDList(HttpServletRequest request, HttpServletResponse response){
		//获得所有未发货状态的订单列表集合（o_State= 0 ）
		List<Order> orderList = orderSer.getAllStateList(0);
		//存放用户及订单的 Map
		Map<User,Order> maps = new HashMap<User,Order>();
		//用户对象
		User u = new User();
		int i = 0;
		for (Order order : orderList) {
			i++;
			//u = userSer.getUserByID();
			u = new User("jack"+i,"jackNiCk","jackpwd","15074452008","男","null"+i);
			maps.put(u, order);
		}
		request.getSession().setAttribute("orderMap", maps);
		return "/view/admin/order_list_unsend.jsp";
	}
	
	/**
	 * 跳转 已发货订单页面
	 */
	public Object showOrderSentList(HttpServletRequest request, HttpServletResponse response){
		//获得所有已发货状态的订单列表集合（o_State= 1 ）
		List<Order> orderList = orderSer.getAllStateList(1);
		//存放用户及订单的 Map
		Map<User,Order> maps = new HashMap<User,Order>();
		//用户对象
		User u = new User();
		int i = 0;
		for (Order order : orderList) {
			i++;
			//u = userSer.getUserByID();
			u = new User("jack"+i,"jackNiCk","jackpwd","15074452008","男","null"+i);
			maps.put(u, order);
		}
		request.getSession().setAttribute("orderMap", maps);
		return "/view/admin/order_sent_list.jsp";
	}
	
	/**
	 * 跳转 已完成订单页面
	 */
	public Object showOrderFinishedList(HttpServletRequest request, HttpServletResponse response){
		//获得所有已发货状态的订单列表集合（o_State= 1 ）
		List<Order> orderList = orderSer.getAllStateList(1);
		//存放用户及订单的 Map
		Map<User,Order> maps = new HashMap<User,Order>();
		//用户对象
		User u = new User();
		int i = 0;
		for (Order order : orderList) {
			i++;
			//u = userSer.getUserByID();
			u = new User("jack"+i,"jackNiCk","jackpwd","15074452008","男","null"+i);
			maps.put(u, order);
		}
		request.getSession().setAttribute("orderMap", maps);
		return "/view/admin/order_finished_list.jsp";
	}
	
	/**
	 * 查看订单详情
	 */
	public Object showDetail(HttpServletRequest request, HttpServletResponse response){
		System.out.println("oid为"+request.getParameter("oid"));
		int orderId = Integer.parseInt(request.getParameter("oid"));
		List<Detail> detailList = detailSer.getAllList(orderId);
		System.out.println(detailList.size());
		request.getSession().setAttribute("detailList", detailList);
		return "/view/admin/order_detail_list.jsp";
	}
	
	/**
	 * 订单发货
	 */
	public Object orderSend(HttpServletRequest request, HttpServletResponse response){
		System.out.println("oid为"+request.getParameter("oid"));
		int orderId = Integer.parseInt(request.getParameter("oid"));
		//修改订单状态为1[收货] 取消原因为0[没有取消原因，没有被取消，所以为0]
		if(orderSer.updateState(orderId, 1, 0) > 0){
			//判断订单发货后要跳转到的界面
			if("l".equalsIgnoreCase(request.getParameter("u"))){
				return showOrderList(request, response);
			}else if("us".equalsIgnoreCase(request.getParameter("u"))){
				return showOrderUnSendDList(request, response);
			}
		}
		return null;
	}
	
	/**
	 * 取消订单
	 */
	public Object orderCancle(HttpServletRequest request, HttpServletResponse response){
		System.out.println("oid为"+request.getParameter("oid"));
		int orderId = Integer.parseInt(request.getParameter("oid"));
		//修改订单状态为2[取消订单状态] 取消原因为2[后台取消]
		if(orderSer.updateState(orderId, 2, 2) > 0){
			//判断取消订单后要跳转到的界面
			if("l".equalsIgnoreCase(request.getParameter("u"))){
				return showOrderList(request, response);
			}else if("us".equalsIgnoreCase(request.getParameter("u"))){
				return showOrderUnSendDList(request, response);
			}
		}
		return null;
	}
}
