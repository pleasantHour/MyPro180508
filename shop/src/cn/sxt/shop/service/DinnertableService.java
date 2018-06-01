package cn.sxt.shop.service;

import java.util.List;

import cn.sxt.shop.entity.Dinnertable;

/**
 * 餐桌的DAO接口
 *
 */
public interface DinnertableService {

	/**
	 * 查询所有的餐桌信息
	 * @return   餐桌List集合
	 */
	public List<Dinnertable> getAll();
	
	/**
	 * 根据id删除一个餐桌
	 * @param id  餐桌ID
	 * @return    受影响行数
	 */
	public int deleteById(Integer id);
	
	/**
	 * 根据条件查询所有的餐桌
	 * @param table  条件
	 * @return
	 */
	public List<Dinnertable> getAllDinnerTable(Dinnertable table);	
	
	/**
	 * 添加一条记录
	 * @param table 
	 * @return
	 */
	public int addDinnerTable(Dinnertable table);
	
	/**
	 * 根据ID删除一条记录
	 */
	public int deleteTableById(int id);	
	
	/**
	 * 根据ID查找一条记录
	 */
	public Dinnertable findTableById(int id);
	
	/**
	 * 根据id 跟新一条记录
	 * @param table
	 * @return
	 */
	public int updateStatus(Dinnertable table);	
	
	/**
	 * 
	 * @param currentPage 当前页
	 * @param maxResult   每页显示最大总条数
	 * 分页 查询所有的餐桌信息
	 * @return   餐桌List集合
	 */
	public List<Dinnertable> getAllByPage(Integer currentPage,Integer maxResult);	
	
	/**
	 * 获取总条数
	 * @return
	 */
	public Integer getTotalCount();	
}
