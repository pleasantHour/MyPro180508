<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/style/js/page_common.js"></script>
<link href="${pageContext.request.contextPath}/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/index_1.css" />
   
   
	<script type="text/javascript">

		$(function(){
		
				$("form").submit(function(){
				
					var tableName = $("#bName").val();
					
					if($.trim(tableName) == ""){
						alert("请输入餐桌名称");
						$("#bName").focus();
						return false;
					}
					
					return true;
				});
		});
		
	</script>
<title>Insert title here</title>
</head>
<body>
	<!-- 页面标题 -->
	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">
				<img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/>  添加新桌
			</div>
	    </div>
		<div id="TitleArea_End"></div>
	</div>
	
	
	<!-- 主内容区域（数据列表或表单显示） -->
	<div id="MainArea">
		<!-- 表单内容 -->
	<form action="${pageContext.request.contextPath}/BoardTableServlet" method="post" >
	<!-- 隐藏文本域 -->
	<input type="hidden" name="method" value="add"/>	
	
			<!-- 本段标题（分段标题） -->
	<div class="ItemBlock_Title">
	      	<img width="4" height="7" border="0" src="${pageContext.request.contextPath}/style/images/item_point.gif"> 新桌信息&nbsp;
	     </div>
	<!-- 本段表单字段 -->
	     <div class="ItemBlockBorder">
	         <div class="ItemBlock">
		<div class="ItemBlock2">
			<table cellpadding="0" cellspacing="0" class="mainForm">
				<tr>
					<td width="80px">新桌名字</td>
					<td><input id="bName" type="text" name="bName" class="InputStyle"/>*</td>
				</tr>
			</table>
		</div>
	         </div>
	     </div>
	
	<!-- 表单操作 -->
			<div id="InputDetailBar">
	            <input type="submit" value="添加" class="FunctionButtonInput">
	            <a href="javascript:history.go(-1);" class="FunctionButton">返回</a>
	        </div>
		</form>
		
	</div>
</body>
</html>