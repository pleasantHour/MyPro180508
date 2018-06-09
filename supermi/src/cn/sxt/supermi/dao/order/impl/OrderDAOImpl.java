package cn.sxt.supermi.dao.order.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.sxt.supermi.dao.order.OrderDAO;
import cn.sxt.supermi.entity.Order;
import cn.sxt.supermi.entity.ShopCart;
import cn.sxt.supermi.util.ComPoolUtil;

/**
 * 订单DAO接口实现类
 * @author C
 *
 */
public class OrderDAOImpl implements OrderDAO {
	

	@Override
	public List<Order> getAllList(int u_id) {
		// TODO Auto-generated method stub
		List<Order> list = null;
		try {
			list = ComPoolUtil.getQueryRunner().query("select * from t_order where u_id = ? ORDER BY o_time desc",
					new BeanListHandler<Order>(Order.class),u_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Order> getStateList(Integer u_id, Integer o_State) {
		// TODO Auto-generated method stub
		List<Order> list = null;
		try {
			list = ComPoolUtil.getQueryRunner().query("select * from t_order where u_id = ? and o_State = ?",
					new BeanListHandler<Order>(Order.class),u_id,o_State);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int add(Order t) {
		// TODO Auto-generated method stub
		//受影响的行
		int count = 0;
		try {
			count = ComPoolUtil.getQueryRunner().update("INSERT INTO t_order (u_Id,o_State,o_addr,o_price,o_time) VALUES(?,?,?,?,NOW())", 
					t.getU_Id(),t.getO_State(),t.getO_Addr(),t.getO_Price());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public int updateState(Integer o_id, Integer o_State) {
		// TODO Auto-generated method stub
		//受影响的行
		int count = 0;
		try {
			count = ComPoolUtil.getQueryRunner().update("UPDATE t_order set o_State = ? where o_Id = ?", 
					o_State,o_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public int getMaxId() {
		// TODO Auto-generated method stub
		//订单ID
		int rowID = 0;
		try {
			rowID = ComPoolUtil.getQueryRunner().query("SELECT MAX(o_id) from t_order",
					new ScalarHandler<Integer>());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowID;
	}

	@Override
	public int updateAddr(Order o) {
		// TODO Auto-generated method stub
		//受影响的行
		int count = 0;
		try {
			count = ComPoolUtil.getQueryRunner().update("UPDATE t_order set o_addr= ? where o_Id = ?", 
					o.getO_Addr(),o.getO_Id());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	

}
