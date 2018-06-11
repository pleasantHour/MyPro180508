package cn.sxt.supermi.dao.goods.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanListHandler;


import cn.sxt.supermi.dao.goods.GoodsDAO;
import cn.sxt.supermi.entity.Goods;
import cn.sxt.supermi.util.ComPoolUtil;

/**
 * 商品DAO接口实现类
 * @author zhuyunbo
 *
 */
public class GoodsDAOImpl implements GoodsDAO {

	public List<Goods> getAll() {
		List<Goods> allGood = null;
		try {
			allGood = ComPoolUtil.getQueryRunner().query(
					"select  * from t_goods where g_state=1",
					new BeanListHandler<Goods>(Goods.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return allGood;
	}


	public List<Goods> getAllByID(Goods gid) {
		List<Goods> goodsByid = null;
		
		try {
			goodsByid = ComPoolUtil.getQueryRunner().query("select * from t_goods where g_Id=gid",new BeanListHandler<Goods>(Goods.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return goodsByid;
	}


	public int addGoods(Goods g) {
		int count = 0; //受影响的行
		try {
			count = ComPoolUtil.getQueryRunner().update(
					"insert into t_goods(t_Id,g_Name,g_Describe,g_Base_Price,g_Postage,g_Sales,g_picture,g_addTime,g_newTime,g_state) "
					+ "values (?,?,?,?,?,?,?,?,?,?)",
					g.getT_id(),g.getG_name(),g.getG_describe(),g.getG_base_price(),g.getG_postage(),g.getG_sales(),g.getG_picture(),g.getG_addTime(),g.getG_newTime(),g.getG_state());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return count;
		
	}

	
	public int deleteGoods(int gid) {
		int count = 0; //受影响的行
		try {
			count = ComPoolUtil.getQueryRunner().update(
					"delete from t_goods where g_id =?",
					gid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return count;
	}
	

	
	public int updateGoods(Goods g) {
		int count = 0; //受影响的行
		try {
			count = ComPoolUtil.getQueryRunner().update(
					"update t_goods set g_Name= ?,g_Describe= ?,g_Base_Price= ?,g_Postage= ?,g_Sales= ?,g_picture= ?,g_addTime= ?,g_newTime= ?,g_state= 1 where t_Id =?)",
					g.getG_name(),g.getG_describe(),g.getG_base_price(),g.getG_postage(),g.getG_sales(),g.getG_picture(),g.getG_addTime(),g.getG_newTime(),g.getT_id());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return count;
	}

}
