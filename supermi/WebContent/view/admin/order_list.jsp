<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> - 数据表格</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- Data Tables -->
    <link href="css/dataTables.bootstrap.css" rel="stylesheet">
    <!-- Sweet Alert -->
    <link href="css/sweetalert.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css?v=4.1.0" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/laydate.css">
    <link type="text/css" rel="stylesheet" href="css/laydate1.css">
</head>

<body class="gray-bg" style="overflow-x:scroll">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12" style="width:2000px;">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>订单管理</h5>
                    </div>
                    <div class="ibox-tools" style="margin-top: 0px;float: left;">
                          <form action="admin_huiyuanmeirishouzhilog_list.action" method="post" role="form" class="form-inline">
                           <input type="hidden" name="" value=""/>
                           <div class="form-group" style="padding-right: 5px;padding-left: 5px;">
                               <div class="col-sm-10" style="margin-bottom: 5px; margin-top:5px;padding-right: 0px;padding-left: 0px;">
                                   <input name="huiyuanmeirishouzhilog.huiyuanusername" placeholder="订单编号" style="height: 29px;width: 120px;" class="form-control">
                               </div>
                           </div>
                           <div class="form-group" style="padding-right: 5px;padding-left: 5px;">
                               <div class="col-sm-10" style="margin-bottom: 5px; margin-top:5px;padding-right: 0px;padding-left: 0px;">
                                   <input name="huiyuanmeirishouzhilog.huiyuanxingming" placeholder="产品名称" style="height: 29px;width: 120px;padding: 6px 5px;" class="form-control">
                               </div>
                           </div>
                            <div class="form-group" style="padding-right: 5px;padding-left: 5px;">
                               <div class="col-sm-10" style="margin-bottom: 5px; margin-top:5px;padding-right: 0px;padding-left: 0px;">
                                   <input name="huiyuanmeirishouzhilog.huiyuanxingming" placeholder="订单状态" style="height: 29px;width: 120px;padding: 6px 5px;" class="form-control">
                               </div>
                           </div>
                           <div class="form-group" style="padding-right: 5px;padding-left: 5px;">
                               <div class="col-sm-10" style="margin-bottom: 5px; margin-top:5px;padding-right: 0px;padding-left: 0px;">
                                   <input name="kaishishijian" placeholder="开始时间" id="hello" style="height: 29px;width: 150px;padding: 6px 5px;" class="form-control">
                               </div>
                           </div>
                           <div class="form-group" style="padding-right: 5px;padding-left: 5px;">
                               <div class="col-sm-10" style="margin-bottom: 5px; margin-top:5px;padding-right: 0px;padding-left: 0px;">
                                   <input name="jieshushijian" placeholder="结束时间" id="hello2" style="height: 29px;width: 150px;padding: 6px 5px;" class="form-control">
                               </div>
                           </div>
                           <div class="checkbox m-l m-r-xs" style="margin-left: 0px; margin-top:5px;">
                               <button class="btn btn-white"type="submit">查询</button>
                           </div>
                            
                      	</form>
                        </div>
                    <div class="ibox-content">

                        <table class="table table-striped table-bordered table-hover dataTables-example">
                            <thead>
                                <tr>
                                	<th style="text-align: center;width:50px;" >序号</th>
                                	<th style="text-align: center;width:90px;" >订单编号</th>
                                    <th style="text-align: center;width:90px;" >商品名称</th>
                                    <th style="text-align: center;width:70px;" >商品数量</th>
                                    <th style="text-align: center;width:90px;" >总价</th>
                                    <th style="text-align: center;width:110px;" >购买用户</th>
                                    <th style="text-align: center;width:110px;" >收货人</th>
                                    <th style="text-align: center;width:100px;">联系方式</th>
                                    <th style="text-align: center;width:270px;">收货地址</th>
                                    <th style="text-align: center;width:70px;">订单状态</th>
                                    <th style="text-align: center;width:120px;">订单时间</th>
                                    <th style="text-align: center;width:150px;">操作</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<tr class="gradeX">
                                    <td style="text-align: center;">1</td>
                                    <td style="text-align: center;">1234</td>
                                    <td style="text-align: center;">华为 P20</td>
                                    <td style="text-align: center;">1</td>
                                    <td style="text-align: center;">5000.00</td>
                                    <td style="text-align: center;">朱宏苍</td>
                                    <td style="text-align: center;">朱宏苍</td>
                                    <td style="text-align: center;">15074452001</td>
                                    <td style="text-align: center;">湖南省长沙市岳麓区麓谷街道湖南涉外经济学院</td>
                                    <td style="text-align: center;">
                                    	已完成
									</td>
                                    <td  style="text-align: center;" >2017-11-26</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=105">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=105">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="105"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">1</td>
                                    <td style="text-align: center;">1234</td>
                                    <td style="text-align: center;">华为 P20</td>
                                    <td style="text-align: center;">1</td>
                                    <td style="text-align: center;">5000.00</td>
                                    <td style="text-align: center;">朱宏苍</td>
                                    <td style="text-align: center;">朱宏苍</td>
                                    <td style="text-align: center;">15074452001</td>
                                    <td style="text-align: center;">湖南省长沙市岳麓区麓谷街道湖南涉外经济学院</td>
                                    <td style="text-align: center;">
                                    	已完成
									</td>
                                    <td  style="text-align: center;" >2017-11-26</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=105">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="105"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
								
                                <tr class="gradeX">
                                    <td style="text-align: center;">1</td>
                                    <td style="text-align: center;">1234</td>
                                    <td style="text-align: center;">华为 P20</td>
                                    <td style="text-align: center;">1</td>
                                    <td style="text-align: center;">5000.00</td>
                                    <td style="text-align: center;">朱宏苍</td>
                                    <td style="text-align: center;">朱宏苍</td>
                                    <td style="text-align: center;">15074452001</td>
                                    <td style="text-align: center;">湖南省长沙市岳麓区麓谷街道湖南涉外经济学院</td>
                                    <td style="text-align: center;">
                                    	已完成
									</td>
                                    <td  style="text-align: center;" >2017-11-26</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=105">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="105"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                
                                <tr class="gradeX">
                                    <td style="text-align: center;">1</td>
                                    <td style="text-align: center;">1234</td>
                                    <td style="text-align: center;">华为 P20</td>
                                    <td style="text-align: center;">1</td>
                                    <td style="text-align: center;">5000.00</td>
                                    <td style="text-align: center;">朱宏苍</td>
                                    <td style="text-align: center;">朱宏苍</td>
                                    <td style="text-align: center;">15074452001</td>
                                    <td style="text-align: center;">湖南省长沙市岳麓区麓谷街道湖南涉外经济学院</td>
                                    <td style="text-align: center;">
                                    	已完成
									</td>
                                    <td  style="text-align: center;" >2017-11-26</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=105">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="105"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                                          	
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 全局js -->
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/jquery.jeditable.js"></script>
    <!-- Data Tables -->
    <!-- 页面 分页 -->
    
    <script src="js/dataTables.bootstrap.js"></script>
    <!-- 自定义js -->
    <script src="js/content.js?v=1.0.0"></script>
    <!-- Page-Level Scripts -->
    
    <!-- Sweet alert -->
    <script src="js/sweetalert.min.js"></script>
    <script>
        $(document).ready(function () {
        	$(".delete").click(function () {
        		var id=$(this).prev().val();
        		if(confirm("确定删除吗？删除后将无法恢复！")){
        			window.location.href="admin_guanlilyuan_del.action?guanlilyuan.id="+id;
        			return true;
        		}else{
        			return false;
        		}
            });
        	
            $('.dataTables-example').dataTable();
            /* Init DataTables */
            var oTable = $('#editable').dataTable();

            /* Apply the jEditable handlers to the table */
            oTable.$('td').editable('../example_ajax.php', {
                "callback": function (sValue, y) {
                    var aPos = oTable.fnGetPosition(this);
                    oTable.fnUpdate(sValue, aPos[0], aPos[1]);
                },
                "submitdata": function (value, settings) {
                    return {
                        "row_id": this.parentNode.getAttribute('id'),
                        "column": oTable.fnGetPosition(this)[2]
                    };
                },

                "width": "90%",
                "height": "100%"
            });


        });

        function fnClickAddRow() {
            $('#editable').dataTable().fnAddData([
                "Custom row",
                "New row",
                "New row",
                "New row",
                "New row"]);

        }
    </script>
    <script src="js/laydate.js"></script>
    <script>
        //外部js调用
        laydate({
            elem: '#hello', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
            event: 'focus', //响应事件。如果没有传入event，则按照默认的click
           	format: 'YYYY-MM-DD hh:mm:ss', //日期格式
           	istime: true, //是否开启时间选择
           	isclear: true, //是否显示清空
           	istoday: true, //是否显示今天
           	issure: true, //是否显示确认
           	festival: true, //是否显示节日
           	min: '', //最小日期
           	max: '2099-12-31 23:59:59', //最大日期
           	start: '',    //开始日期
        });
      //外部js调用
        laydate({
            elem: '#hello2', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
            event: 'focus', //响应事件。如果没有传入event，则按照默认的click
           	format: 'YYYY-MM-DD hh:mm:ss', //日期格式
           	istime: true, //是否开启时间选择
           	isclear: true, //是否显示清空
           	istoday: true, //是否显示今天
           	issure: true, //是否显示确认
           	festival: true, //是否显示节日
           	min: '', //最小日期
           	max: '2099-12-31 23:59:59', //最大日期
           	start: '',    //开始日期
        });
        //日期范围限制
        var start = {
            elem: '#start',
            format: 'YYYY/MM/DD hh:mm:ss',
            min: laydate.now(), //设定最小日期为当前日期
            max: '2099-06-16 23:59:59', //最大日期
            istime: true,
            istoday: false,
            choose: function (datas) {
                end.min = datas; //开始日选好后，重置结束日的最小日期
                end.start = datas   //将结束日的初始值设定为开始日
            }
        };
        var end = {
            elem: '#end',
            format: 'YYYY/MM/DD hh:mm:ss',
            min: laydate.now(),
            max: '2099-06-16 23:59:59',
            istime: true,
            istoday: false,
            choose: function (datas) {
                start.max = datas; //结束日选好后，重置开始日的最大日期
            }
        };
        laydate(start);
        laydate(end);
    </script>
</body>
</html>