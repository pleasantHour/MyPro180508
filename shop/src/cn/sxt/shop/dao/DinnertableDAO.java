package cn.sxt.shop.dao;

import java.util.List;

import cn.sxt.shop.entity.Dinnertable;

/**
 * 餐桌的DAO接口
 *
 */
public interface DinnertableDAO {

	/**
	 * 查询所有的餐桌信息
	 * @return   餐桌List集合
	 */
	public List<Dinnertable> getAll();
	
	/**
	 * 根据条件查询所有的餐桌
	 * @param table  条件
	 * @return
	 */
	public List<Dinnertable> getAllDinnerTable(Dinnertable table);	
	
	/**
	 * 添加一条记录
	 * @param table 
	 * @return 返回受影响的行
	 */
	public int addDinnerTable(Dinnertable table);
	
	/**
	 * 根据ID删除一条记录
	 */
	public int deleteTableById(int id);
	
	/**
	 * 根据id 跟新一条记录
	 * @param table
	 * @return
	 */
	public int updateStatus(Dinnertable table);
	
	/**
	 * 根据ID查找一条记录
	 */
	public Dinnertable findTableById(int id);
}
