package cn.sxt.supermi.web.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sxt.supermi.web.base.BaseServlet;

public class AdminOrderServlet extends BaseServlet{
	/**
	 * 跳转 订单列表页面
	 */
	public Object showOrderList(HttpServletRequest request, HttpServletResponse response){
		
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
