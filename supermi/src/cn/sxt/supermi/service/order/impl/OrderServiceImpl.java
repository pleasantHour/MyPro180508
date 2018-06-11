package cn.sxt.supermi.service.order.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import cn.sxt.supermi.dao.order.OrderDAO;
import cn.sxt.supermi.dao.order.impl.OrderDAOImpl;
import cn.sxt.supermi.entity.Order;
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

}
