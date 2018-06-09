package cn.sxt.supermi.dao.shopcart.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.sxt.supermi.dao.shopcart.ShopcartDAO;
import cn.sxt.supermi.entity.ShopCart;
import cn.sxt.supermi.util.ComPoolUtil;
/**
 * 购物车DAO 接口实现类
 * @author C
 *
 */
public class ShopcartDAOImpl implements ShopcartDAO{

	public List<ShopCart> list(Integer u_id) {
		List<ShopCart> list = null;
		try {
			list = ComPoolUtil.getQueryRunner().query("select * from t_shopcart",
					new BeanListHandler<ShopCart>(ShopCart.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public int delete(Integer sh_Id) {
		//受影响的行
		Integer count = 0 ;
		try {
			count = ComPoolUtil.getQueryRunner().update("delete from t_shopcart where sh_Id = ?",sh_Id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	public int add(ShopCart sc) {
		//受影响的行
		int count = 0;
		
		try {
			count = ComPoolUtil.getQueryRunner().update("insert into t_shopcart values(?,?,?,?,?,?,?,?,?)", 
					sc.getSh_id(),sc.getU_id(),sc.getG_id(),sc.getSh_spec(),sc.getSh_state(),sc.getSh_num()
					,sc.getSh_postage(),sc.getSh_price(),sc.getSh_addr());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}
	
}
