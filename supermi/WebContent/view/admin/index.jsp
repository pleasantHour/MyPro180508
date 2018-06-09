<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> supermi 后台管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="">
    <meta name="description" content="">
    
    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css?v=4.1.0" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<input style="display: none" id="usersession" value="1">
<input style="display: none" id="dlsession" value="">
    <div id="wrapper">
		<nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html">
                                <span class="clear">
                                    <span class="block m-t-xs" style="font-size:20px;">
                                        
                                        <strong class="font-bold"> supermi 商城</strong>
                                    </span>
                                </span>
                            </a>
                        </div>
                        <div class="logo-element">
                        	admin
                        </div>
                    </li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">主页</span>
                    </li>
                    <li>
                        <a class="J_menuItem" href="welcome.jsp">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">主页</span>
                        </a>
                    </li>
                    
                    <li class="line dk"></li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">商品管理</span>
                    </li>
                    <li>
                    	<a href="">
                        	<i class="fa fa-pencil-square-o"></i>
                            <span class="nav-label">商品管理</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="J_menuItem" href="yijifenlei.html">商品列表</a>
                                <a class="J_menuItem" href="erjifenlei.html">添加商品</a>
                            </li>
                        </ul>
                    </li>
                     <li>
                    	<a href="">
                        	<i class="fa fa-pencil-square-o"></i>
                            <span class="nav-label">商品规格管理</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="J_menuItem" href="yijifenlei.html">规格列表</a>
                                <a class="J_menuItem" href="erjifenlei.html">添加商品规格</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                    	<a href="">
                        	<i class="fa fa-pencil-square-o"></i>
                            <span class="nav-label">商品类型管理</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="J_menuItem" href="yijifenlei.html">商品类型列表</a>
                                <a class="J_menuItem" href="erjifenlei.html">添加商品类型</a>
                            </li>
                        </ul>
                    </li>
                   
                    
                    <li class="line dk"></li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">订单管理</span>
                    </li>
                    <li>
                    <li>
                        <a href="#">
                        	<i class="fa fa-calendar"></i>
                            <span class="nav-label">订单管理</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                    		<li>
                            	<a class="J_menuItem" href="order_list.jsp">订单列表</a>
                            </li>
                            <li>
                            	<a class="J_menuItem" href="order_list.jsp">待发货列表</a>
                            </li>
                            <li>
                            	<a class="J_menuItem" href="order_sent_list.jsp">已发货列表</a>
                            </li>
                             <li>
                            	<a class="J_menuItem" href="order_finished_list.jsp">已完成列表</a>
                            </li>
                            <li>
                            	<a class="J_menuItem" href="order_export.jsp">订单导出</a>
                            </li>
                        </ul>
                    </li>
                    
                    
                    <li class="line dk"></li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">报表管理</span>
                    </li>
                     <li>
                        <a href="#">
                        <i class="fa fa-calendar"></i>
                            <span class="nav-label">报表管理</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                            	<a class="J_menuItem" href="banner.html">销售量报表</a>
                            </li>
                            <li>
                            	<a class="J_menuItem" href="sjbanner.html">销售总计报表</a>
                            </li>
                        </ul>
                    </li>
                    
                    
                    
                    <li class="line dk"></li>
                    <li>&nbsp;&nbsp;</li>
                    <li>&nbsp;&nbsp;</li>
                    <li>&nbsp;&nbsp;</li>
                    <li>&nbsp;&nbsp;</li>
                    <li>&nbsp;&nbsp;</li>
                    <li>&nbsp;&nbsp;</li>
                </ul>
            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-info " href="#"><i class="fa fa-bars"></i> </a>
                    </div>
                    
                    <ul class="nav navbar-top-links navbar-right">
                    	  
                        	  <li class="dropdown">
                           		 <a class="dropdown-toggle count-info" data-toggle="" href="loginout.action" title="退出">
                            	  admin  <i class="fa fa-power-off"></i> <span class="label label-warning"></span>
                           		 </a>
                            	<ul class="dropdown-menu dropdown-messages" style="width: 100px;padding: 0px;">
                            	</ul>
                        	</li>
                    </ul>
                </nav>
            </div>
            <div class="row J_mainContent" id="content-main">
                <iframe id="J_iframe" width="100%" height="100%" src="welcome.jsp" frameborder="0" data-id="welcome.jsp" seamless></iframe>
            </div>
        </div>
        <!--右侧部分结束-->
    </div>

    <!-- 全局js -->
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/jquery.metisMenu.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script src="js/layer.min.js"></script>

    <!-- 自定义js -->
    <script src="js/hAdmin.js?v=4.1.0"></script>
    <script type="text/javascript" src="js/index.js"></script>
	<script type="text/javascript">
    	$(document).ready(function(){
    		var usersession=$("#usersession").val();
    		var dlsession=$("#dlsession").val();
			if(usersession==null|dlsession==null){
				window.location.href="login.jsp";
    		}
    	});
    </script>
    <!-- 第三方插件 -->
    <script src="js/plugins/pace/pace.min.js"></script>
</body>
</html>