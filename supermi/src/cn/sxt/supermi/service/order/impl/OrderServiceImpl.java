package cn.sxt.supermi.service.order.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import cn.sxt.supermi.dao.order.OrderDAO;
import cn.sxt.supermi.dao.order.impl.OrderDAOImpl;
import cn.sxt.supermi.entity.Order;
import cn.sxt.supermi.entity.OrderPageRule;
import cn.sxt.supermi.service.order.OrderService;

public class OrderServiceImpl implements OrderService {
	OrderDAO dao = new OrderDAOImpl();
	@Override
	public List<Order> getAllList(int u_id) {
		// TODO Auto-generated method stub
		return dao.getAllList(u_id);
	}

	@Override
	public List<Order> getStateList(Integer u_id, Integer o_State) {
		// TODO Auto-generated method stub
		return dao.getStateList(u_id, o_State);
	}

	@Override
	public int add(Order t) {
		// TODO Auto-generated method stub
		return dao.add(t);
	}

	@Override
	public int updateState(Integer o_id, Integer o_State,Integer num) {
		// TODO Auto-generated method stub
		return dao.updateState(o_id, o_State,num);
	}

	@Override
	public int getMaxId() {
		// TODO Auto-generated method stub
		return dao.getMaxId();
	}

	@Override
	public List<Order> getAll() {
		// TODO Auto-generated method stub
		return dao.getAll();
	}

	@Override
	public List<Order> getAllStateList(Integer o_State) {
		// TODO Auto-generated method stub
		return dao.getAllStateList(o_State);
	}

	@Override
	public int updateAddr(Order o) {
		// TODO Auto-generated method stub
		return dao.updateAddr(o);
	}

	@Override
	public boolean outTimeFlag(Order o) {
		// TODO Auto-generated method stub
		//标志
		boolean flag = false;
		//按钮时间不为空
		if(o.getO_btnTime() !=null ||  !"".equals(o.getO_btnTime())){
			//设置日期格式
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			try {
				//获取现在时间的毫秒  long型
				long now = df.parse(df.format(new Date())).getTime();
				//获取按钮时间的毫秒  long型
				Date date = o.getO_btnTime();
				long ago = df.parse(df.format(date)).getTime();
				int hours = (int) ((now - ago)/(1000 * 60 * 60));

				if(hours >= 24){
					flag = true;
				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return flag;
	}

	@Override
	public int updateBtnTime(Integer o_id,Integer o_level) {
		// TODO Auto-generated method stub
		return dao.updateBtnTime(o_id,o_level);
	}
	
	public void setPageBean(cn.sxt.supermi.entity.PageBean<Order> pb,OrderPageRule opr,String page) {
		// TODO Auto-generated method stub
		
		
		//算出总页数
		Integer count = dao.getTotalCount(opr);//总条数		
		Integer totalPage = count%pb.getMaxResult()==0 ? count/pb.getMaxResult() : count/pb.getMaxResult() + 1;
		pb.setTotalPage(totalPage);
		
		
		if(page!=null){
			pb.setCurrentPage(Integer.parseInt(page));//设置当前页
		}
		
		//当前页小于1页
		if(pb.getCurrentPage() < 0){
			pb.setCurrentPage(0);//默认第一页
		}
		
		//如果当前页大于总页数， 默认最后一页
		if(pb.getCurrentPage() >= totalPage) pb.setCurrentPage(totalPage-1);
		//查询指定用户指定订单号指定状态的订单信息
		pb.setTableList(dao.getAllByPage(opr, pb.getCurrentPage()*pb.getMaxResult(), pb.getMaxResult()));
	}

	@Override
	public int getTotalCount(OrderPageRule opr) {
		// TODO Auto-generated method stub
		return dao.getTotalCount(opr);
	}

	@Override
	public List<Order> getAllByPage(OrderPageRule opr, Integer currentPage, Integer maxResult) {
		// TODO Auto-generated method stub
		return dao.getAllByPage(opr, currentPage, maxResult);
	}
	
	@Override
	public Order getOrderByID(Integer o_id) {
		return dao.getOrderByID(o_id);
	}

	@Override
	public List<Order> getListByTimeRange(String startTime, String endTime) {
		return dao.getListByTimeRange(startTime, endTime);
	}

}
