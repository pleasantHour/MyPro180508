package cn.sxt.supermi.web;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sxt.supermi.entity.Order;
import cn.sxt.supermi.entity.OrderPageRule;
import cn.sxt.supermi.entity.PageBean;
import cn.sxt.supermi.entity.ShopCart;
import cn.sxt.supermi.service.detail.DetailService;
import cn.sxt.supermi.service.detail.impl.DetailServiceImpl;
import cn.sxt.supermi.service.order.OrderService;
import cn.sxt.supermi.service.order.impl.OrderServiceImpl;
import cn.sxt.supermi.web.base.BaseServlet;

public class OrderServlet extends BaseServlet{
	//用户ID
	private int u_id = -1;
	//页面实体 
	private PageBean<Order> pb = new PageBean<Order>();
	//订单状态  默认查所有状态
	private int type = 4;
	//当前页
	private String page;
	//查询内容
	private String serch;
	//订单和订单详情的服务类
	private OrderService oService = new OrderServiceImpl();
	private DetailService dService = new DetailServiceImpl();
	
	/**
	 * 列出所有当前用户的订单
	 * @param request
	 * @param response
	 * @return 转发对象，交给BaseServlet判断
	 */
	public Object list(HttpServletRequest request, HttpServletResponse response){
		//查询订单中用户id所有订单
		//List<Order> list = oService.getAllList(u_id);
		
		//订单表集合
		List<Order> list = pb.getTableList();
		//遍历订单集合 将每个订单的订单详情、每个未发货订单的提醒发货按钮标志 存入实体里  
		if(list != null){
			for(Order o : list){
				int o_id = o.getO_Id();
				o.setDtList(dService.getAllList(o_id));
				if(o.getO_State() == 0){
					o.setFlag(oService.outTimeFlag(o));
				}
			}
		}
		
		//把查询到的数据存入request域中
		//request.setAttribute("orderList", list);
		request.setAttribute("pageBean", pb);
		//传查询内容
		request.setAttribute("serch", serch);
		serch = null;
		//将查询类型设置为 全部订单
		request.setAttribute("type", type);
		// 返回一个转发对象，交给BaseServlet判断
		return request.getRequestDispatcher("/view/order/user_order.jsp");
	}

	
//	
	
	/**
	 * 取消当前用户订单 用户取消
	 * 取得页面传的 订单ID 订单类型
	 * @param request
	 * @param response
	 * @return 转发对象，交给BaseServlet判断
	 */
	public Object cancelList(HttpServletRequest request, HttpServletResponse response){
		//取得页面传的 订单ID  当前订单类型
		int oid = Integer.parseInt(request.getParameter("oid"));
		//修改当前用户订单状态为取消 取消原因  用户取消
		oService.updateState(oid, 2, 1);
		// 返回一个转发对象，交给BaseServlet判断
		return this.orderPageSet(request, response);
	}
	
	/**
	 * 提醒发货功能  优先级升级
	 * 取得页面传的 订单ID  订单等级  订单类型
	 * @param request
	 * @param response
	 * @return 转发对象，交给BaseServlet判断
	 */
	public Object remindSend(HttpServletRequest request, HttpServletResponse response){
		//等级
		String ol = null;
		ol = request.getParameter("olevel");
		if(ol != null){
			//取得页面传的 订单ID  订单等级  订单类型
			int o_id = Integer.parseInt(request.getParameter("oid"));
			int o_level = Integer.parseInt(ol);
			//修改当前用户订单提醒发货时间为系统时间  并将优先级提升一级
			o_level++;
			oService.updateBtnTime(o_id, o_level);
		}
		
		//判断刷新页面时查看的订单状态   返回一个转发对象，交给BaseServlet判断
		return this.orderPageSet(request, response);
	}
	
	/**
	 * 取消当前用户订单 用户取消
	 * 取得页面传的 订单ID 订单类型
	 * @param request
	 * @param response
	 * @return 转发对象，交给BaseServlet判断
	 */
	public Object pay(HttpServletRequest request, HttpServletResponse response){
		//取得页面传的 订单ID  当前订单类型
		int oid = Integer.parseInt(request.getParameter("oid"));
		//修改当前用户订单状态为取消 取消原因  用户取消
		oService.updateState(oid, 0, 1);
		// 返回一个转发对象，交给BaseServlet判断
		return this.orderPageSet(request, response);
	}
	
	/**
	 *对页面传来的数据传给成员 并设置页面实体 决定查询哪种状态的订单
	 *page type serch   没有数据就不传
	 */
	public Object orderPageSet(HttpServletRequest request, HttpServletResponse response) {
		//获取Session传来的用户ID  并存在成员u_id中
		//this.u_id = (int)request.getSession().getAttribute("uid");
		try {
			//解决中文乱码
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//假设用户id是1
		this.u_id = 1;
		//当前页
		page = request.getParameter("page");
		//订单状态
		String t = request.getParameter("type");
		if(t != null){
			type = Integer.parseInt(t);
		}
		//查询内容
		try {
			String s = request.getParameter("serch");
			if(s != null){
				serch = new String(s.getBytes("iso-8859-1"),"utf-8");
			}
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if("".equals(page) || page == null){
			//默认0  第一页
			page = "0";
		}
		if(serch == null){
			//默认传空串
			serch = "";
		}
		//订单查询参数实体  用户ID 空串查所有 订单状态查所有传4
		OrderPageRule opr = new OrderPageRule(u_id,serch,type);
		//设置页面实体
		oService.setPageBean(pb, opr, page);
		//返回页面  字符串重定向 分发器派发
		Object o = new Object();
		o = this.list(request, response);
		return o;
	}
}
