<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



<script type="text/javascript" src="${pageContext.request.contextPath }/style/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/style/js/page_common.js"></script>
<link href="${pageContext.request.contextPath }/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/style/css/index_1.css" />
</head>



<body>
<!-- 页面标题 -->
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="${pageContext.request.contextPath }/style/images/title_arrow.gif"/> 餐桌列表
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


<!-- 过滤条件 -->
<div id="QueryArea">
<form action="${pageContext.request.contextPath}/BoardTableServlet" method="get">
		<!-- 指定跳转Servlet里面的     list 方法 -->
		<input type="hidden" name="method" value="list">
		
		
		<input type="text" name="keyword" title="${keyword}">
		<input type="submit" value="搜索">
	</form>
</div>


<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
    <table class="MainArea_Content" cellspacing="0" cellpadding="0">
        <!-- 表头-->
        <thead>
            <tr align="center" valign="middle" id="TableTitle">
				<td>编号</td>
				<td>桌名</td>
				<td>状态</td>
				<td>预定时间</td>
				<td>操作</td>
			</tr>
		</thead>	
		<!--显示数据列表 -->
        <tbody id="TableData">
<c:forEach items="${tableList}" var="obj">	
			<tr class="TableDetail1">
				<td align="center">${obj.id }&nbsp;</td>
				<td align="center">${obj.tablename }&nbsp;</td>
				<td align="center">${obj.tablestatus==0 ? '预定' : '空闲' }</td>
				<td align="center">${obj.orderdate }</td>
				<td>
				<c:choose>
					<c:when test="${obj.tablestatus == 0}">
								<a href="${pageContext.request.contextPath}/BoardTableServlet?method=update&id=${obj.id }" class="FunctionButton">退桌</a>
					</c:when>
					<c:otherwise>
								<a href="${pageContext.request.contextPath}/BoardTableServlet?method=update&id=${obj.id }" class="FunctionButton">预定</a>
					</c:otherwise>
				</c:choose>	
					
					<!--<a href="/wirelessplatform/board.html?method=update&id=1&isBook=0" class="FunctionButton">退桌</a>	-->			
					<a href="${pageContext.request.contextPath}/BoardTableServlet?method=delete&id=${obj.id }" onClick="return delConfirm();"class="FunctionButton">删除</a>				
				</td>
			</tr> 
</c:forEach>					      
        </tbody>
        
    </table>
	
   <!-- 其他功能超链接 -->
	<div id="TableTail" align="center">
		<div class="FunctionButton"><a href="${pageContext.request.contextPath}/sys/table/addTable.jsp">添加</a></div>
				当前 ${currentPage} 页    &nbsp;&nbsp; 总页数 ${totalPage} &nbsp;&nbsp;
			<a href="${pageContext.request.contextPath }/BoardTableServlet?method=boardList&page=1">首页</a>
			
		<c:if test="${currentPage== 1}">
			上一页
		</c:if>	
		<c:if test="${currentPage > 1}">
			<a href="${pageContext.request.contextPath }/BoardTableServlet?method=boardList&page=${currentPage-1}">上一页 </a>
		</c:if>	
	
	<c:if test="${currentPage== totalPage}">
		下一页
	</c:if>		
	
	<c:if test="${currentPage!= totalPage}">
			<a href="${pageContext.request.contextPath }/BoardTableServlet?method=boardList&page=${currentPage+1}">下一页 </a>
	</c:if>			
			<a href="${pageContext.request.contextPath }/BoardTableServlet?method=boardList&page=${totalPage}">末页</a>
    </div> 
</div>
</body>
</html>