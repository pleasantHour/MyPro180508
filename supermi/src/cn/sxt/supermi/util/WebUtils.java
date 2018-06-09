package cn.sxt.supermi.util;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WebUtils {

	
	//通用的跳转
	public static void goTo(Object url ,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		if(url instanceof RequestDispatcher){
			//转发
			((RequestDispatcher) url).forward(request, response);
		}
		
		if(url instanceof String){
			//重定向
			response.sendRedirect(request.getContextPath() + url );
		}
	}
}
