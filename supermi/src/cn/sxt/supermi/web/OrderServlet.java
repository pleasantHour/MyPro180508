package cn.sxt.supermi.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sxt.supermi.entity.Order;
import cn.sxt.supermi.entity.ShopCart;
import cn.sxt.supermi.service.detail.DetailService;
import cn.sxt.supermi.service.detail.impl.DetailServiceImpl;
import cn.sxt.supermi.service.order.OrderService;
import cn.sxt.supermi.service.order.impl.OrderServiceImpl;
import cn.sxt.supermi.web.base.BaseServlet;

public class OrderServlet extends BaseServlet{
	//用户ID
	public int u_id = -1;
	//订单和订单详情的服务类
	public OrderService oService = new OrderServiceImpl();
	public DetailService dService = new DetailServiceImpl();
	
	/**
	 * 列出所有当前用户的订单
	 * @param request
	 * @param response
	 * @return 转发对象，交给BaseServlet判断
	 */
	public Object list(HttpServletRequest request, HttpServletResponse response){
		//获取url传来的用户ID  并存在成员u_id中
//		if(this.u_id == -1){
//			this.u_id = Integer.parseInt(request.getParameter("uid"));
//		}
		//假设用户id是1
		this.u_id = 1;
		//查询订单中用户id所有订单
		List<Order> list = oService.getAllList(u_id);
		//遍历订单集合 将每个订单的订单详情再存入实体里
		for(Order o : list){
			int o_id = o.getO_Id();
			o.setDtList(dService.getAllList(o_id));
		}
		//把查询到的数据存入request域中
		request.setAttribute("orderList", list);
		//将查询类型设置为 全部订单
		request.setAttribute("type", 0);
		// 返回一个转发对象，交给BaseServlet判断
		return request.getRequestDispatcher("/view/order/user_order.jsp");
	}
	
	/**
	 * 列出所有当前用户的未支付订单
	 * @param request
	 * @param response
	 * @return 转发对象，交给BaseServlet判断
	 */
	public Object listNotPay(HttpServletRequest request, HttpServletResponse response){
		
		//查询订单中未支付的订单
		List<Order> list = oService.getStateList(u_id, 3);
		//遍历订单集合 将每个订单的订单详情再存入实体里
		for(Order o : list){
			int o_id = o.getO_Id();
			o.setDtList(dService.getAllList(o_id));
		}
		//把查询到的数据存入request域中
		request.setAttribute("orderList", list);
		//将查询类型设置为 待支付
		request.setAttribute("type", 1);
		// 返回一个转发对象，交给BaseServlet判断
		return request.getRequestDispatcher("/view/order/user_order.jsp");
	}
	
	/**
	 * 列出所有当前用户的未发货订单
	 * @param request
	 * @param response
	 * @return 转发对象，交给BaseServlet判断
	 */
	public Object listNotSend(HttpServletRequest request, HttpServletResponse response){
		
		//查询订单中未发货的订单
		List<Order> list = oService.getStateList(u_id, 0);
		//遍历订单集合 将每个订单的订单详情再存入实体里
		for(Order o : list){
			int o_id = o.getO_Id();
			o.setDtList(dService.getAllList(o_id));
		}
		//把查询到的数据存入request域中
		request.setAttribute("orderList", list);
		//将查询类型设置为 待收货
		request.setAttribute("type", 2);
		// 返回一个转发对象，交给BaseServlet判断
		return request.getRequestDispatcher("/view/order/user_order.jsp");
	}
	
	/**
	 * 列出所有当前用户的收货订单
	 * @param request
	 * @param response
	 * @return 转发对象，交给BaseServlet判断
	 */
	public Object listReceive(HttpServletRequest request, HttpServletResponse response){
		
		//查询订单中未发货的订单
		List<Order> list = oService.getStateList(u_id, 1);
		//遍历订单集合 将每个订单的订单详情再存入实体里
		for(Order o : list){
			int o_id = o.getO_Id();
			o.setDtList(dService.getAllList(o_id));
		}
		//把查询到的数据存入request域中
		request.setAttribute("orderList", list);
		//将查询类型设置为 待收货
		request.setAttribute("type", 3);
		// 返回一个转发对象，交给BaseServlet判断
		return request.getRequestDispatcher("/view/order/user_order.jsp");
	}
	
	/**
	 * 列出所有当前用户的关闭订单
	 * @param request
	 * @param response
	 * @return 转发对象，交给BaseServlet判断
	 */
	public Object listClose(HttpServletRequest request, HttpServletResponse response){
		
		//查询订单中关闭的订单
		List<Order> list = oService.getStateList(u_id, 2);
		//遍历订单集合 将每个订单的订单详情再存入实体里
		for(Order o : list){
			int o_id = o.getO_Id();
			o.setDtList(dService.getAllList(o_id));
		}
		//把查询到的数据存入request域中
		request.setAttribute("orderList", list);
		//将查询类型设置为 已取消
		request.setAttribute("type", 4);
		// 返回一个转发对象，交给BaseServlet判断
		return request.getRequestDispatcher("/view/order/user_order.jsp");
	}
}
