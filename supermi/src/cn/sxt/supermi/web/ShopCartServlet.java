package cn.sxt.supermi.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sxt.supermi.entity.ShopCart;
import cn.sxt.supermi.web.base.BaseServlet;

/**
 * Servlet implementation class ShopCartServlet
 */

public class ShopCartServlet extends BaseServlet {
	/**
	 * 添加一条商品至购物车
	 * @param request
	 * @param response
	 * @return 
	 */
	public Object addToShopCart(HttpServletRequest request, HttpServletResponse response){
		ShopCart sc  = new ShopCart(1,1,1,"白色 32g",0,1,0,1200,"pic");
		shopcartService.add(sc);
		return null;
	}
	
	public Object list(HttpServletRequest request, HttpServletResponse response){
		//假设当前的用户id是1
		Integer u_id = 1;
		//查询购物车中用户id是1的所有商品
		List<ShopCart> list = shopcartService.list( u_id);
		//把查询到的数据存入request域中
		request.setAttribute("list", list);
		// 返回一个转发对象，交给ShopCartBaseServlet判断
		return request.getRequestDispatcher("/view/cart/cart_list.jsp");
	}
}
