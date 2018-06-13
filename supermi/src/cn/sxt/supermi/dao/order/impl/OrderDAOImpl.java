package cn.sxt.supermi.dao.order.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.sxt.supermi.dao.order.OrderDAO;
import cn.sxt.supermi.entity.Order;
import cn.sxt.supermi.entity.OrderPageRule;
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
			list = ComPoolUtil.getQueryRunner().query("select * from t_order where u_id = ? and o_State = ? ORDER BY o_time desc",
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
			count = ComPoolUtil.getQueryRunner().update("INSERT INTO t_order (u_Id,o_State,o_addr,o_price,o_time,o_level) VALUES(?,?,?,?,NOW(),?)", 
					t.getU_Id(),t.getO_State(),t.getO_Addr(),t.getO_Price(),0);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public int updateState(Integer o_id, Integer o_State,Integer num) {
		// TODO Auto-generated method stub
		//受影响的行
		int count = 0;
		try {
			count = ComPoolUtil.getQueryRunner().update("UPDATE t_order set o_State = ? ,o_num = ? where o_Id = ?", 
					o_State,num,o_id);
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

	@Override
	public List<Order> getAll() {
		// TODO Auto-generated method stub
		List<Order> list = null;
		try {
			list = ComPoolUtil.getQueryRunner().query("select * from t_order ORDER BY o_level desc,o_time desc",
					new BeanListHandler<Order>(Order.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Order> getAllStateList(Integer o_State) {
		// TODO Auto-generated method stub
		List<Order> list = null;
		try {
			list = ComPoolUtil.getQueryRunner().query("select * from t_order where o_State = ?",
					new BeanListHandler<Order>(Order.class),o_State);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int updateBtnTime(Integer o_id,Integer o_level) {
		// TODO Auto-generated method stub
		//受影响的行
		int count = 0;
		try {
			count = ComPoolUtil.getQueryRunner().update("UPDATE t_order set o_btnTime= NOW(),o_level=? where o_Id = ?", 
					o_level,o_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public List<Order> getAllByPage(OrderPageRule opr,Integer currentPage, Integer maxResult) {
		// TODO Auto-generated method stub
		List<Order> list = null;
		try {
			StringBuilder sql = new StringBuilder("select * from t_order where u_id = ?");
			//按订单ID查找  
			if(!"".equals(opr.getSerch()) && opr.getSerch() != null){
				sql.append(" and o_id = "+opr.getSerch());
			}
			//按订单类型查找
			if((opr.getType() == 0) || (opr.getType() == 1) || (opr.getType() == 2) || (opr.getType() == 3)){
				sql.append(" and o_State = "+opr.getType());
			}
			list = ComPoolUtil.getQueryRunner().query(sql+" ORDER BY o_time desc,o_id desc limit ?,?",
					new BeanListHandler<Order>(Order.class),opr.getU_id(),currentPage,maxResult);
			
			System.out.println("++++++++++++++"+sql+" ORDER BY o_time desc,o_id desc limit ?,?");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int getTotalCount(OrderPageRule opr) {
		// TODO Auto-generated method stub
		//总条数
		Long num = 0l;
		try {
			StringBuilder sql = new StringBuilder("select count(*) from t_order where u_id = ?");
			//按订单ID查找  
			if(!"".equals(opr.getSerch()) && opr.getSerch() != null){
				sql.append(" and o_id = "+opr.getSerch());
			}
			//按订单类型查找
			if(opr.getType() == 0 || opr.getType() == 1 || opr.getType() == 2 || opr.getType() == 3){
				sql.append(" and o_State = "+opr.getType());
			}
			num = ComPoolUtil.getQueryRunner().query(sql+"", new ScalarHandler<Long>(), opr.getU_id());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return num.intValue();
	}
	
	@Override
	public Order getOrderByID(Integer o_id) {
		Order or = new Order();
		try {
			or = ComPoolUtil.getQueryRunner().query("select * from t_order where o_id = ?",
					new BeanHandler<Order>(Order.class),o_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return or;
	}

	@Override
	public List<Order> getListByTimeRange(String startTime, String endTime) {
		List<Order> list = null;
		try {
			list = ComPoolUtil.getQueryRunner().query("select * from t_order where o_time>=? and o_time <= ?",
					new BeanListHandler<Order>(Order.class),startTime,endTime);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	

}
