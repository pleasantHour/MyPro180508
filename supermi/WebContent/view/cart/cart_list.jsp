<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>我的购物车</title>
	<!-- 引入 css样式-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/view/cart/css/cart.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/view/cart/css/orange.css" />
	<!-- 引入  bootstrap-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/bootstrap-3.3.7-dist/css/bootstrap.css"/>
	<!-- 引入  jquery-->
    <script src="${pageContext.request.contextPath}/style/bootstrap-3.3.7-dist/js/jquery-2.1.1.js" type="text/javascript" charset="utf-8"></script>
    <!-- 引入  js-->
    <script src="${pageContext.request.contextPath}/style/bootstrap-3.3.7-dist/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
	 
		<!-- 我的购物车begin -->

  <div class="container">

      <table class="table">
        <thead>
          <tr>
            <th>选择商品</th>
            <th>商品名称</th>
            <th>单价</th>
            <th>数量</th>
            <th>小计</th>
            <th>操作</th>
          </tr>
        </thead>
        <tbody>
        </tbody>
      </table>
      <div > <a >继续购物</a> <span class="cart-total">共 <span id="shopKindCount"></span> 类商品，已选择 <span id="count"></span> 件</span></div>
      <div style="position:relative;float:right;">
      <span > 合计（不含运费）：<span id="priceTotal"></span>元 </span> <a href="javascript:void(0);" class="btn btn-a btn btn-primary" id="toSettleAcount">去结算</a>
      </div>
    </div>


<!-- 我的购物车end -->
	
</body>
</html>

<script>
/**
 * 加载购物车中的数据，页面打开时
 */
 $(function(){
	    //所有商品的种类
	    var shopKindCount = 0;
	    //选中商品的个数
	    var count = 0;
	    //含计
	    var priceTotal = 0;
	  <c:forEach items="${requestScope.list}" var="shopCart">
		shopKindCount++;
		$tr = $("<tr></tr>");
		$td1 = $("<td><input type='checkbox' class='selected'></td>");
		$td2 = $("<td class='goods'>${shopCart.u_id} ${shopCart.sh_spec}</td>");
		$td3 = $("<td><span class='price'>${shopCart.sh_price}</span></td>");
		$td4 = $("<td><span class='glyphicon glyphicon-minus'></span><span class='shopNumber'>1</span><span class='glyphicon glyphicon-plus'></td>");
		$td5 = $("<td><span class='subTotal'>${shopCart.sh_price}</span></td>");
		$td6 = $("<td class='operation'>X</td>");
		$tr.append($td1).append($td2).append($td3).append($td4).append($td5).append($td6);
		$("table").append($tr);
    </c:forEach>
    
    //设置商品种类的数量
    $("#shopKindCount").html(shopKindCount);

    /**
    * 绑定checkbox
    */
    $(".selected").bind("click",function(){
    	var ischecked = this.checked;
    	if(ischecked){
    		count = count + parseInt($(this).parent().parent().find("td:eq(3) span:eq(1)").html());
    		//含计
    		priceTotal = priceTotal + parseInt($(this).parent().parent().find("td:eq(4) ").text());
    	}
    	else{
    		count = count - parseInt($(this).parent().parent().find("td:eq(3) span:eq(1)").html());
    		//含计
    		priceTotal = priceTotal - parseInt($(this).parent().parent().find("td:eq(4) ").text());
    	}
    	 $("#count").html(count);
    	 $("#priceTotal").html(priceTotal);
    });
    
    /**
     * 绑定减号
     */
    $(".glyphicon-minus").bind("click",function(){
    	var checked = $(this).parent().parent().find("td:eq(0)").children()[0];
		var number = parseInt($(this).next().html());
		if(number == 1){
		}
		else{
			number--;
			//单价
	    	var unitPrice = parseInt($(this).parent().parent().find("td:eq(2)").text());
			//小计
	    	var subtotal = 0;
	    	var subtotal = number*unitPrice;
			if(checked.checked){
				if(count != 1){
					count--;
		    		//含计
		    		priceTotal = priceTotal - parseInt($(this).parent().parent().find("td:eq(2) ").text());
				}
				
			}
		}
		

		$(this).next().html(number);
	    $("#count").html(count);
	    $(this).parent().parent().find("td:eq(4)").html(subtotal);
	    $("#priceTotal").html(priceTotal);
    });
    
    /**
     * 绑定加号
     */
    $(".glyphicon-plus").bind("click",function(){
    	
    	//获得checkbox
    	var checked = $(this).parent().parent().find("td:eq(0)").children()[0];
    	//商品数量
    	var number = parseInt($(this).prev().html());
    	number++;
    	//单价
    	var unitPrice = parseInt($(this).parent().parent().find("td:eq(2)").text());
    	var subtotal = 0;
    	var subtotal = number*unitPrice;
    	//如果选中了，则选中商品个数增加
    	if(checked.checked){
    		count++;
    		//含计
    		priceTotal = priceTotal + parseInt($(this).parent().parent().find("td:eq(2) ").text());
    	}
        $(this).prev().html(number);
        $("#count").html(count);
        $(this).parent().parent().find("td:eq(4)").html(subtotal);
        $("#priceTotal").html(priceTotal);
    });
	
    /**
     * 去结算
     * 传商品名称和规格，单价，数量， 总价传一个
     */
    $("#toSettleAcount").bind("click",function(){
    	
    });
 });
</script>