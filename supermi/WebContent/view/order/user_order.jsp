<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//List<User> us = //(List<User>)request.getAttribute("userList");


%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>订单列表</title>
    <%--引入ajax框架--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/view/order/js/ajax.js" ></script>
    <!-- 引入  jquery-->
    <script src="${pageContext.request.contextPath}/style/bootstrap-3.3.7-dist/js/jquery-2.1.1.js" type="text/javascript" charset="utf-8"></script>
    <!-- 引入  bootstrap-->
    <script src="${pageContext.request.contextPath}/style/bootstrap-3.3.7-dist/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/bootstrap-3.3.7-dist/css/bootstrap.css" />
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/order/css/base.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/order/css/main.css" />
 
  </head>
  
  <script type="text/javascript"> 
  		
  </script> 
	
  
  <body>
  
   <div class="span16">
  <div class="uc-box uc-main-box">
    <div class="uc-content-box order-list-box">
      <div class="box-hd">
        <h1 class="title">我的订单<small>请谨防钓鱼链接或诈骗电话</small></h1>
        <div class="more clearfix">
          <ul class="filter-list J_orderType">
            <li class="first ${type eq 4 ? 'active':''}"><a href="${pageContext.request.contextPath}/OrderServlet?method=orderPageSet&type=4" data-type="0">全部订单</a></li>
            <li class="${type eq 3 ? 'active':''}"><a id="J_unpaidTab" href="${pageContext.request.contextPath}/OrderServlet?method=orderPageSet&type=3" data-type="1">待支付</a></li>
            <li class="${type eq 0 ? 'active':''}"><a id="J_sendTab" href="${pageContext.request.contextPath}/OrderServlet?method=orderPageSet&type=0" data-type="2">待收货</a></li>
            <li class="${type eq 1 ? 'active':''}"><a href="${pageContext.request.contextPath}/OrderServlet?method=orderPageSet&type=1" data-type="3">已收货</a></li>
            <li class="${type eq 2 ? 'active':''}"><a href="${pageContext.request.contextPath}/OrderServlet?method=orderPageSet&type=2" data-type="4">已取消</a></li>
          </ul>
          <form id="J_orderSearchForm" class="search-form clearfix" action="" method="get">
            <label for="search" class="hide">站内搜索</label>
            <input class="search-text" type="search" id="J_orderSearchKeywords" name="search" value="${search}" autocomplete="off" placeholder="输入商品名称、商品编号、订单号" />
            <input type="hidden" name="type" value="4" />
            <input type="submit" class="search-btn iconfont" value="搜索" />
          </form>
        </div>
      </div>
      <div class="box-bd">
        <div id="J_orderList" >
          <div class="loading hide">
            <div class="loader"></div>
          </div>
        </div>
        <div id="J_orderList">
          <ul class="order-list">
            <c:forEach items="${pageBean.tableList}" var="o">
              <c:if test="${o.o_State eq 3}">
                <li class="uc-order-item uc-order-item-pay">
                  <div class="order-detail">
                    <div class="order-summary">
                      <div class="order-status">待支付</div>
                      <p class="order-desc J_deliverDesc"> 请付款，我们将尽快为您发货 </p>
                    </div>
                    <table class="order-detail-table">
                      <thead>
                        <tr>
                          <th class="col-main"> <p class="caption-info">
                          <!--拆分用户信息  姓名;手机号;收货地址  -->
                          	<c:set value="${fn:split(o.o_Addr,';') }" var="them"></c:set>
							<c:set value="${them[0]}" var="name"></c:set>
							<c:set value="${them[1]}" var="phone"></c:set>
							<c:set value="${them[2]}" var="addr"></c:set>
                          	  <fmt:parseDate value="${o.o_Time}" pattern="yyyy-MM-dd HH:mm:ss" var="receiveDate"></fmt:parseDate>
                              <fmt:formatDate value="${receiveDate}" pattern="yyyy-MM-dd HH:mm:ss" />
                              <span class="sep">|</span>姓名：${name}<span class="sep">|</span>订单号：${o.o_Id} <span class="sep">|</span>在线支付</p>
                              <p class="caption-info">收货地址:	${addr}	<span class="sep">|</span>${phone}</p>
                          </th>
                          <th class="col-sub"> <p class="caption-price">订单金额：<span class="num">${o.o_Price}</span>元</p>
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td class="order-items"><ul class="goods-list">
                              <c:forEach items="${o.dtList}" var="d">
                                <li>
                                  <div class="figure figure-thumb"> <a href="#" target="_blank"> <img src="${pageContext.request.contextPath}/${d.d_Addr}" width="80" height="80" alt="测试一&nbsp;&nbsp;测试类别一" title="测试一&nbsp;&nbsp;测试类别一"> </a> </div>
                                  <p class="name"> <a target="_blank" href="#">
                                      ${d.d_Spes}</a> </p>
                                  <p class="price">${d.d_Price}&nbsp;&nbsp;元 × &nbsp;&nbsp;${d.d_Num} </p>
                                </li>
                              </c:forEach>
                            </ul></td>
                          <td class="order-actions">
                          <a class="btn btn-small btn-primary" href="#" target="_blank">立即支付</a>
                          <a class="btn btn-small btn-primary" href="${pageContext.request.contextPath}/OrderServlet?method=cancelList&oid=${o.o_Id}&type=${type}">取消订单</a>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </li>
              </c:if>
              <c:if test="${o.o_State eq 0}">
                <li class="uc-order-item uc-order-item-shipping">
                  <div class="order-detail">
                    <div class="order-summary">
                      <div class="order-status">待出库</div>
                      <p class="order-desc J_deliverDesc"> 我们将尽快为您发货 </p>
                    </div>
                    <table class="order-detail-table">
                      <thead>
                        <tr>
                          <th class="col-main"> <p class="caption-info">
                          <!--拆分用户信息  姓名;手机号;收货地址  -->
                          	<c:set value="${fn:split(o.o_Addr,';') }" var="them"></c:set>
							<c:set value="${them[0]}" var="name"></c:set>
							<c:set value="${them[1]}" var="phone"></c:set>
							<c:set value="${them[2]}" var="addr"></c:set>
                              <fmt:parseDate value="${o.o_Time}" pattern="yyyy-MM-dd HH:mm:ss" var="receiveDate"></fmt:parseDate>
                              <fmt:formatDate value="${receiveDate}" pattern="yyyy-MM-dd HH:mm:ss" />
                              <span class="sep">|</span>姓名：${name}<span class="sep">|</span>订单号：${o.o_Id} <span class="sep">|</span>在线支付</p>
                              <p class="caption-info">收货地址:	${addr}	<span class="sep">|</span>${phone}</p>
                          </th>
                          <th class="col-sub"> <p class="caption-price">订单金额：<span class="num">${o.o_Price}</span>元</p>
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td class="order-items"><ul class="goods-list">
                              <c:forEach items="${o.dtList}" var="d">
                                <li>
                                  <div class="figure figure-thumb"> <a href="#" target="_blank"> <img src="${pageContext.request.contextPath}/${d.d_Addr}"" width="80" height="80" alt="测试一&nbsp;&nbsp;测试类别一" title="测试一&nbsp;&nbsp;测试类别一"> </a> </div>
                                  <p class="name"> <a target="_blank" href="#">${d.d_Spes}</a> </p>
                                  <p class="price">${d.d_Price}元 × ${d.d_Num}</p>
                                </li>
                              </c:forEach>
                            </ul></td>
                           
                          <td class="order-actions">
                          
                  		<c:choose>
	    					<c:when test="${o.flag}">
	    						<a  class="btn btn-small btn-primary" href="${pageContext.request.contextPath}/OrderServlet?method=remindSend&oid=${o.o_Id}&olevel=${o.o_level}&type=${type}">提醒发货</a> 
							</c:when>
							<c:otherwise>
								<a  disabled="disabled" class="btn btn-small btn-primary" href="javascript::"><span style="color:red;font-size:8px">24小时后提醒发货</span></a> 
							</c:otherwise> 
						</c:choose>
                          <a class="btn btn-small btn-primary" href="${pageContext.request.contextPath}/OrderServlet?method=cancelList&oid=${o.o_Id}&type=${type}">取消订单</a>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </li>
              </c:if>
              <c:if test="${o.o_State eq 1}">
                <li class="uc-order-item uc-order-item-finish">
                  <div class="order-detail">
                    <div class="order-summary">
                      <div class="order-status">已收货</div>
                    </div>
                    <table class="order-detail-table">
                      <thead>
                        <tr>
                          <th class="col-main"> <p class="caption-info">
                          <!--拆分用户信息  姓名;手机号;收货地址  -->
                          	<c:set value="${fn:split(o.o_Addr,';') }" var="them"></c:set>
							<c:set value="${them[0]}" var="name"></c:set>
							<c:set value="${them[1]}" var="phone"></c:set>
							<c:set value="${them[2]}" var="addr"></c:set>
                             <fmt:parseDate value="${o.o_Time}" pattern="yyyy-MM-dd HH:mm:ss" var="receiveDate"></fmt:parseDate>
                              <fmt:formatDate value="${receiveDate}" pattern="yyyy-MM-dd HH:mm:ss" />
                              <span class="sep">|</span>姓名：${name}<span class="sep">|</span>订单号：${o.o_Id} <span class="sep">|</span>在线支付</p>
                              <p class="caption-info">收货地址:	${addr}	<span class="sep">|</span>${phone}</p>
                          </th>
                          <th class="col-sub"> <p class="caption-price">订单金额：<span class="num">${o.o_Price}</span>元</p>
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td class="order-items"><ul class="goods-list">
                              <c:forEach items="${o.dtList}" var="d">
                                <li>
                                  <div class="figure figure-thumb"> <a href="#" target="_blank"> <img src="${pageContext.request.contextPath}/${d.d_Addr}" width="80" height="80" alt="测试一&nbsp;&nbsp;测试类别一" title="测试一&nbsp;&nbsp;测试类别一"> </a> </div>
                                  <p class="name"> <a target="_blank" href="#">${d.d_Spes}</a> </p>
                                  <p class="price">${d.d_Price}元 × ${d.d_Num}</p>
                                </li>
                              </c:forEach>
                            </ul></td>
                           
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </li>
              </c:if>
              <c:if test="${o.o_State eq 2}">
                <li class="uc-order-item uc-order-item-finish">
                  <div class="order-detail">
                    <div class="order-summary">
                      <div class="order-status">已关闭&nbsp&nbsp&nbsp<span style="color:red;font-size:25px">${o.o_Num eq 1 ? "用户关闭":"后台关闭"}</span></div>
                    </div>
                    <table class="order-detail-table">
                      <thead>
                        <tr>
                          <th class="col-main"> <p class="caption-info">
                          <!--拆分用户信息  姓名;手机号;收货地址  -->
                          	<c:set value="${fn:split(o.o_Addr,';') }" var="them"></c:set>
							<c:set value="${them[0]}" var="name"></c:set>
							<c:set value="${them[1]}" var="phone"></c:set>
							<c:set value="${them[2]}" var="addr"></c:set>
                              <fmt:parseDate value="${o.o_Time}" pattern="yyyy-MM-dd HH:mm:ss" var="receiveDate"></fmt:parseDate>
                              <fmt:formatDate value="${receiveDate}" pattern="yyyy-MM-dd HH:mm:ss" />
                              <span class="sep">|</span>姓名：${name}<span class="sep">|</span>订单号：${o.o_Id} <span class="sep">|</span>在线支付</p>
                              <p class="caption-info">收货地址:	${addr}	<span class="sep">|</span>${phone}</p>
                          </th>
                          <th class="col-sub"> <p class="caption-price">订单金额：<span class="num">${o.o_Price}</span>元</p>
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td class="order-items"><ul class="goods-list">
                              <c:forEach items="${o.dtList}" var="d">
                                <li>
                                 <div class="figure figure-thumb"> <a href="#" target="_blank"> <img src="${pageContext.request.contextPath}/${d.d_Addr}" width="80" height="80" alt="测试一&nbsp;&nbsp;测试类别一" title="测试一&nbsp;&nbsp;测试类别一"> </a> </div>
                                  <p class="name"> <a target="_blank" href="#">${d.d_Spes}</a> </p>
                                  <p class="price">${d.d_Price}元 × ${d.d_Num}</p>
                                </li>
                              </c:forEach>
                            </ul></td>
     
                          <td class="order-actions"><button class="btn btn-small btn-primary"  href="javascript:void(0)" >关闭原因: ${o.o_Num eq 1 ? "用户取消":"后台取消"}</button></td>
                          
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </li>
              </c:if>
            </c:forEach>
          </ul>
        </div>
        
        <!-- 分页按钮样式  -->
        <style type="text/css">
        	.pagination{ text-align: center;font-size: 12px;padding: 10px 0;display:inline-block}
.pagination a,.pagination span{display: inline-block;padding: 0 10px;height: 28px;line-height: 28px;border: 1px solid #ddd;border-radius: 4px;text-decoration: none;color: #999;cursor: pointer;  margin-right:5px;}
.pagination a:hover:not(.disabled):not(.current),.pagination span:hover:not(.disabled):not(.current){color:#f04848}
.pagination a.disabled,.pagination span.disabled{color: #bfbfbf;background: #f5f5f5;cursor: no-drop;border: 1px solid #ddd;}
.pagination a.current,.pagination span.current{color: #fff;background: #f04848;border: 1px solid #f04848;}
        </style>
        
        <div >
          <c:if test="${pageBean.totalPage gt pageBean.currentPage and not empty pageBean.tableList}">
            <div class="pagination" align="center" style="padding-left:20%;">
            	<c:choose>
   					<c:when test="${pageBean.currentPage == 0}">
   						 <a href="javascript::"  class="disabled"  title="首页">首页</a>
			    		 <a href="javascript::"  class="disabled"  title="上一页">上一页</a>
					</c:when>
					<c:otherwise>
						 <a href="${pageContext.request.contextPath}/OrderServlet?method=orderPageSet&page=0&type=${type}"  title="首页">首页</a>
			    		 <a href="${pageContext.request.contextPath}/OrderServlet?method=orderPageSet&page=${pageBean.currentPage-1}&type=${type}"  title="上一页">上一页</a>
					</c:otherwise> 
				</c:choose>
				<c:forEach varStatus="idx" begin="1" end="${pageBean.totalPage}">
					<c:choose>
	   					<c:when test="${idx.index == pageBean.currentPage + 1}">
	   						<a href="javascript::" class="current">${idx.index}</a>
						</c:when>
						<c:otherwise>
							 <a href="${pageContext.request.contextPath}/OrderServlet?method=orderPageSet&page=${idx.index-1}&type=${type}" >${idx.index}</a>
						</c:otherwise> 
					</c:choose>
				</c:forEach>    
			   <c:choose>
   					<c:when test="${pageBean.currentPage == pageBean.totalPage - 1}">
   						 <a href="javascript::" class="disabled"  title="下一页">下一页</a>
			    		 <a href="javascript::" class="disabled"  title="尾页">尾页</a>
					</c:when>
					<c:otherwise>
						 <a href="${pageContext.request.contextPath}/OrderServlet?method=orderPageSet&page=${pageBean.currentPage+1}&type=${type}"  title="下一页">下一页</a>
			    		 <a href="${pageContext.request.contextPath}/OrderServlet?method=orderPageSet&page=${pageBean.totalPage-1}&type=${type}"  title="尾页">尾页</a>
					</c:otherwise> 
				</c:choose>
			</div>
          </c:if>
        </div>
      </div>
    </div>
  </div>
</div>
  </body>
</html>
