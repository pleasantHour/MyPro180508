<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>- 数据表格</title>
<meta name="keywords" content="">
<meta name="description" content="">

<link rel="shortcut icon" href="favicon.ico">
<link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="css/dataTables.bootstrap.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>订单详情</h5>
					</div>
					<div class="ibox-content">
						<table
							class="table table-striped table-bordered table-hover dataTables-example">
							<thead>
								<tr>
									<th style="text-align: center;">序号</th>
									<th style="text-align: center;">订单ID</th>
									<th style="text-align: center;">商品ID</th>
									<th style="text-align: center;">商品</th>
									<th style="text-align: center;">数量</th>
									<th style="text-align: center;">价格</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${detailList}" var="detail" varStatus="status">	
									<tr class="gradeX">
										 <td style="text-align: center;">${status.index + 1}</td>
			                             <td style="text-align: center;">${detail.o_Id }</td>
			                             <td style="text-align: center;">${detail.g_Id }</td>
			                             <td style="text-align: center;">${detail.d_Spes }</td>
			                             <td style="text-align: center;">${detail.d_Num }</td>
			                             <td style="text-align: center;">${detail.d_Price }</td>
<!-- 			                             <td style="text-align: center;"> -->
<%-- 			                             	<img alt="图片有误" src="${pageContext.request.contextPath}/${detail.d_Addr}"> --%>
<!-- 			                             </td> -->
			                         </tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js?v=2.1.4"></script>
	<script src="js/bootstrap.min.js?v=3.3.6"></script>
	<script src="js/jquery.jeditable.js"></script>
	<!-- Data Tables -->
	<script src="js/jquery.dataTables.js"></script>
	<script src="js/dataTables.bootstrap.js"></script>
	<!-- 自定义js -->
	<script src="js/content.js?v=1.0.0"></script>

	<!-- Page-Level Scripts -->
	<script>
		$(document).ready(
						function() {
							$(".delete").click(
									function() {
										var id = $(this).prev().val();
										if (confirm("确定删除吗？删除后将无法恢复！")) {
											window.location.href = "admin_dingdan_del.action?dingdan.id="
													+ id;
											return true;
										} else {
											return false;
										}
									});

							$('.dataTables-example').dataTable();

							/* Init DataTables */
							var oTable = $('#editable').dataTable();

							/* Apply the jEditable handlers to the table */
							oTable
									.$('td')
									.editable(
											'../example_ajax.php',
											{
												"callback" : function(sValue, y) {
													var aPos = oTable
															.fnGetPosition(this);
													oTable.fnUpdate(sValue,
															aPos[0], aPos[1]);
												},
												"submitdata" : function(value,
														settings) {
													return {
														"row_id" : this.parentNode
																.getAttribute('id'),
														"column" : oTable
																.fnGetPosition(this)[2]
													};
												},

												"width" : "90%",
												"height" : "100%"
											});

						});
		function fnClickAddRow() {
			$('#editable').dataTable()
					.fnAddData(
							[ "Custom row", "New row", "New row", "New row",
									"New row" ]);

		}
	</script>
</body>
</html>