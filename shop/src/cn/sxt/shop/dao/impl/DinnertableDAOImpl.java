package cn.sxt.shop.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.sxt.shop.entity.Dinnertable;
import cn.sxt.shop.utils.ComPoolUtil;

/**
 * 餐桌接口的实现类    DAO实现层与数据库直接打交道
 *
 */
public class DinnertableDAOImpl implements cn.sxt.shop.dao.DinnertableDAO {

	public List<Dinnertable> getAll() {
		
		List<Dinnertable> dinnerTables = null;
		try {
			dinnerTables = ComPoolUtil.getQueryRunner().query(
					"select  * from dinnertable",
					new BeanListHandler<Dinnertable>(Dinnertable.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dinnerTables;
	}

	@Override
	public List<Dinnertable> getAllDinnerTable(Dinnertable table) {
		List<Dinnertable> tables = null; 
		
		StringBuilder sb = new StringBuilder("select * from dinnerTable");
		
		//按餐桌的名称查找
		if(table.getTablename() !=null && !"".equals(table.getTablename())){
			sb.append(" and tableName like '%"+table.getTablename()+"%'");
		}
		
		//按餐桌的id查找
		if(table.getId() != null){
			sb.append(" and id = "+table.getId());
		}
		
		//把第一个and 替换 成  where 条件
		String sql = sb.toString().replaceFirst("and", "where");
		System.out.println(sql);
		try {
			tables = ComPoolUtil.getQueryRunner().query(
					sql, 
					new BeanListHandler<Dinnertable>(Dinnertable.class));
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
		return tables;
	}

	@Override
	public int addDinnerTable(Dinnertable table) {
		int count = 0; //受影响的行
		try {
			count = ComPoolUtil.getQueryRunner().update(
					"insert into dinnerTable(tableName) values (?)",
					table.getTablename());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return count;	
	}
	
	public int deleteTableById(int id) {
		int count = 0; //受影响的行
		try {
			count = ComPoolUtil.getQueryRunner().update(
					"delete from dinnerTable where id =?",
					id);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return count;
	}

	@Override
	public int updateStatus(Dinnertable table) {
		int count = 0; //受影响的行
		try {
			count = ComPoolUtil.getQueryRunner().update(
					"update dinnerTable set tableStatus = ? , orderDate=? where id =?",
					table.getTablestatus(),table.getOrderdate(),table.getId());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return count;
	}

	@Override
	public Dinnertable findTableById(int id) {
		Dinnertable table = null; 
		try {
			table = ComPoolUtil.getQueryRunner().query(
					"select * from dinnerTable where id =?",
					new BeanHandler<Dinnertable>(Dinnertable.class),
					id);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return table;
	}

	@Override
	public List<Dinnertable> getAllByPage(Integer currentPage, Integer maxResult) {
		List<Dinnertable> dinnerTables = null;
		try {
			dinnerTables = ComPoolUtil.getQueryRunner().query(
					"select  * from dinnertable limit ?,?",
					new BeanListHandler<Dinnertable>(Dinnertable.class),
					new Object[]{(currentPage-1)*maxResult,maxResult});
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dinnerTables;
	}

	@Override
	public Integer getTotalCount() {
		// TODO Auto-generated method stub
		Long count = 0l;//总条数

		try {
			count = ComPoolUtil.getQueryRunner().query(
					"select count(*) from dinnertable",
					new ScalarHandler<Long>());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count.intValue();
	}
}
