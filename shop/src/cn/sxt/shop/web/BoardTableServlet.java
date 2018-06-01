package cn.sxt.shop.web;

import java.io.IOException;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sxt.shop.entity.Dinnertable;
import cn.sxt.shop.web.base.BaseServlet;


/**
 * 餐桌的Servlet 控制层
 *
 */
public class BoardTableServlet extends BaseServlet {

	/**
	 * 显示餐桌列表页面
	 */
	public Object boardList(HttpServletRequest request, HttpServletResponse response){
		//数据查询所有餐桌列表的信息
		request.setAttribute("tableList", tableService.getAll());
		return request.getRequestDispatcher("/sys/boardList.jsp");//转发
	}
	
	/**
	 * 根据搜索的条件，显示餐桌列表页面
	 */
	public Object list(HttpServletRequest request, HttpServletResponse response){
		//接收页面传递过来的搜索条件
		String name = request.getParameter("keyword");
		//封装查询参数
		Dinnertable table = new Dinnertable();
		if(name != null && !"".equals(name)){
			//判断字符串是否是数字  是整数返回true,否则返回false
			Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$"); 
	       if(!pattern.matcher(name).matches()){
	    	   //非数字
	    	   table.setTablename(name);
	       }else{
	    	   table.setId(Integer.parseInt(name));
	       }
			
		}
		
		//查询所有餐桌
		List<Dinnertable> tables = tableService.getAllDinnerTable(table);	
		request.setAttribute("tableList", tables);
		
		//页面回显查询条件数据
		request.setAttribute("keyword", name);
		return request.getRequestDispatcher("/sys/boardList.jsp");//转发
	}	
	
	 /**
		 * 添加餐桌
		 */
	public Object add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//获取页面输入的餐桌名称
		String tableName = request.getParameter("bName");
		//封装参数
		Dinnertable table = new Dinnertable();
		table.setTablename(tableName);
		//调用业务添加数据库
		tableService.addDinnerTable(table);
		
		//跳转餐桌列表
		this.list(request,response);
		return request.getRequestDispatcher("/sys/boardList.jsp");//转发
	}
	
	/**
	 * 删除餐桌
	 */
	public Object delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//获取页面输入的餐桌名称
		String id = request.getParameter("id");
		if(id !=null && !"".equals(id)){
			tableService.deleteTableById(Integer.parseInt(id));
		}
		
		//跳转餐桌列表
		this.list(request,response);
		return request.getRequestDispatcher("/sys/boardList.jsp");//转发
	}
	
	/**
	 * 退桌、 预定
	 */
	public Object update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//获取传递过来参数
		String id = request.getParameter("id");
		if(id !=null && !"".equals(id)){
			Dinnertable table = tableService.findTableById(Integer.parseInt(id));
			
			//跟新
			tableService.updateStatus(table);
		}
		
		//跳转餐桌列表
		this.list(request,response);
		return request.getRequestDispatcher("/sys/boardList.jsp");//转发
	}

}
