package cn.sxt.shop.web.base;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.sxt.shop.service.DinnertableService;
import cn.sxt.shop.service.impl.DinnertableServiceImpl;
import cn.sxt.shop.utils.WebUtils;

/**
 * 通用的Servlet   希望每个Servlet 都继承我这个Servlet
 * 
 * @author albin
 *
 */
public class BaseServlet extends HttpServlet {
	
	//餐桌Service
	public DinnertableService tableService = new DinnertableServiceImpl();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Object url = null; //返回url
		try {
			//指定跳转要执行的 方法
			String methodName = request.getParameter("method");   //updateUI
			//System.out.println("返回  当前执行  的Servlet的字节码码："+this.getClass());
			//获取当前执行  的Servlet的字节码码
			Class clazz  =  this.getClass();
			//根据方法名，获取指定的方法
			Method method = clazz.getDeclaredMethod(methodName,HttpServletRequest.class,HttpServletResponse.class);
		
			//System.out.println("----------------------------"+method);
			//方法执行     url  代表的是方法返回 跳转的url地址
			url = method.invoke(this, request,response);  //转发
			
			System.out.println(url);
			
		} catch (Exception e) {
			url="/error/error.jsp";  //重定向
		}

		if(url != null){
			//跳转
			WebUtils.goTo(url, request, response);
		}
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
