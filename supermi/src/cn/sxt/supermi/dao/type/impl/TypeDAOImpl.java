package cn.sxt.supermi.dao.type.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.sxt.supermi.dao.type.TypeDAO;
import cn.sxt.supermi.entity.Goods;
import cn.sxt.supermi.entity.Type;
import cn.sxt.supermi.util.ComPoolUtil;

/**
 * 商品类型DAO接口实现类
 * @author zhuyunbo
 *
 */
public class TypeDAOImpl implements TypeDAO {

	
	public List<Type> getAll() {
		List<Type> allType = null;
		try {
			allType = ComPoolUtil.getQueryRunner().query(
					"select  * from t_type where t_state=1",
					new BeanListHandler<Type>(Type.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return allType;
	}

	
	public List<Type> getAllByName(Type tname) {
		List<Type> typeByName = null;
		StringBuilder sql = new StringBuilder("select * from t_type");
		if(tname != null  && !"".equals(tname)){
			sql.append("where t_Name like '%"+tname+"%' and g_state=1");
		}
		try {
			typeByName = ComPoolUtil.getQueryRunner().query(sql.toString(),new BeanListHandler<Type>(Type.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		return typeByName;
	}


	public int addType(Type t) {
		int count = 0; //受影响的行
		try {
			count = ComPoolUtil.getQueryRunner().update(
					"insert into t_type(t_FId,t_Name,t_state) "
					+ "values (?,?,?)",
					t.getT_fId(),t.getT_name(),t.getT_state());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return count;
	}


	public int deleteType(int tid) {
		int count = 0; //受影响的行
		try {
			count = ComPoolUtil.getQueryRunner().update(
					"delete from t_type where t_id =?",
					tid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return count;
	}


	public int updateType(Type t) {
		int count = 0; //受影响的行
		try {
			count = ComPoolUtil.getQueryRunner().update(
					"update t_type	 set t_FId = ? ,t_Name=?,t_state=1 where t_Id =?",
					t.getT_fId(),t.getT_name(),t.getT_id());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return count;
	}


	public List<Goods> getGoodsByType(Type t) {
		List<Goods> gName = null;
		try {
			gName = ComPoolUtil.getQueryRunner().query(
					"select  t_goods.* from t_type left outer join t_goods on  t_type.t_id=t_goods.t_id",
					new BeanListHandler<Goods>(Goods.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return gName;
		
		
	}

}
