package cn.sxt.supermi.dao.detail.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.sxt.supermi.dao.detail.DetailDAO;
import cn.sxt.supermi.entity.Detail;
import cn.sxt.supermi.entity.Order;
import cn.sxt.supermi.util.ComPoolUtil;

/**
 * 订单详情DAO接口实现类
 * @author C
 *
 */
public class DetailDAOImpl implements DetailDAO{

	@Override
	public int add(Detail d) {
		// TODO Auto-generated method stub
		//受影响的行
		int count = 0;
		try {
			count = ComPoolUtil.getQueryRunner().update("INSERT INTO t_detail (g_Id,o_Id,d_Spes,d_Num,d_Price,d_addr) VALUES(?,?,?,?,?,?)", 
			d.getG_Id(),d.getO_Id(),d.getD_Spes(),d.getD_Num(),d.getD_Price(),d.getD_Addr());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public List<Detail> getAllList(Integer o_id) {
		// TODO Auto-generated method stub
		List<Detail> list = null;
		try {
			list = ComPoolUtil.getQueryRunner().query("select * from t_detail where o_id = ?",
					new BeanListHandler<Detail>(Detail.class),o_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}


}
