<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> - 数据表格</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <!-- Data Tables -->
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
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">4598897</td>
                                    <td style="text-align: center;">order1059129631511243004812</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=103">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="103"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">41654654</td>
                                    <td style="text-align: center;">order1092111591511242875479</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=102">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="102"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">5646545646</td>
                                    <td style="text-align: center;">order10171968771511242751819</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=101">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="101"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">12</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">154654654</td>
                                    <td style="text-align: center;">order10161109501511242523411</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=100">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="100"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">13</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15753803830</td>
                                    <td style="text-align: center;">order1042234871511242405916</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=99">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="99"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">14</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">15</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">16</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15753803830</td>
                                    <td style="text-align: center;">order1042234871511242405916</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=99">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="99"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15753803830</td>
                                    <td style="text-align: center;">order1042234871511242405916</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=99">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="99"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15753803830</td>
                                    <td style="text-align: center;">order1042234871511242405916</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=99">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="99"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15753803830</td>
                                    <td style="text-align: center;">order1042234871511242405916</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=99">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="99"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                            	
                            	<tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
                        				<a class="btn btn-white btn-bitbucket delete" title="删除"  href="javascript:;">
                           					 <i class="fa fa-trash-o" aria-hidden="true"></i>
                        				</a>
                        			</td>
                                </tr>
                                <tr class="gradeX">
                                    <td style="text-align: center;">10</td>
                                    <td style="text-align: center;">赵s</td>
                                    <td style="text-align: center;">山东省泰安市</td>
                                    <td style="text-align: center;">15700000000</td>
                                    <td style="text-align: center;">order10133406991511242128700</td>
                                    <td style="text-align: center;">
                                    	
                                    		<span class="label label-primary">已支付</span>
                                    	
                                    	
									</td>
                                    <td  style="text-align: center;" >2017-11-21</td>
                                	 <td style="text-align: center;">
                                    	<a class="btn btn-white btn-bitbucket" title="查看" href="admin_dingdan_edit.action?dingdan.id=98">
                           					<i class="fa fa-th-list" aria-hidden="true"></i>
                        				</a>
                        				<input type="hidden" value="98"/>
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
        $(document).ready(function () {
        	$(".delete").click(function () {
        		var id=$(this).prev().val();
        		if(confirm("确定删除吗？删除后将无法恢复！")){
        			window.location.href="admin_dingdan_del.action?dingdan.id="+id;
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
</body>
</html>