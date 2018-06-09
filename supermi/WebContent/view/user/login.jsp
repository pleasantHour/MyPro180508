<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员登录</title>
<link rel="stylesheet" type="text/css" href="./css/login.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/style/bootstrap-3.3.7-dist/js/jquery-2.1.1.js"></script>
</head>
<body>
<!-- login -->
		<div class="top center">
			<div class="logo center">
				<a href="./index.html" target="_blank"><img src="../user/img/mistore_logo.png" alt=""></a>
			</div>
		</div>
		<form  method="post" action="./login.php" class="form center">
		<div class="login">
			<div class="login_center">
				<div class="login_top">
					<div class="left fl">会员登录</div>
					<div class="right fr">您还不是我们的会员？<a href="../user/register.jsp" target="_self">立即注册</a></div>
					<div class="clear"></div>
					<div class="xian center"></div>
				</div>
				<div class="login_main center">
					<div class="username">用户名:&nbsp;<input class="shurukuang" type="text" name="username" placeholder="请输入你的用户/手机号码"/></div>
					<div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;<input class="shurukuang" type="password" name="password" placeholder="请输入你的密码"/></div>
					<div class="username">
					<!-- 	<div class="left fl">验证码:&nbsp;<input class="yanzhengma" type="text" name="username" placeholder="请输入验证码"/></div>
						<div class="right fl"><img src="./image/yanzhengma.jpg"></div> -->
						<div class="clear"></div>
					</div>
				</div>
				<div class="login_submit">
					<input class="submit" type="submit" name="submit" value="立即登录" >
				</div>
				<div class="login_top">
				<div class="right fr"><a href="./register.html" target="_self">找回密码</a></div>
				<div class="right f1"><a href="./register.html" target="_self">返回首页</a></div>
				</div>
			</div>
		</div>
		</form>
		<footer>
			<div class="copyright">简体 | 繁体 | English | 常见问题</div>
			<div class="copyright">小米公司版权所有-京ICP备10046444-<img src="./image/ghs.png" alt="">京公网安备11010802020134号-京ICP证110507号</div>

		</footer>

</body>
</html>