package cn.sxt.supermi.dao.order;

import java.util.List;

import cn.sxt.supermi.entity.ShopCart;
import cn.sxt.supermi.entity.Order;

/**
 * 订单DAO接口
 * @author C
 *
 */
public interface OrderDAO {
	/**
	 * 通过用户id查询所有订单表中的订单 按时间倒序
	 * @param u_id  用户id
	 * @return 当前用户所有的订单集合
	 */
	public List<Order> getAllList(int u_id);
	
	/**
	 * 返回所有订单 按时间倒序
	 * 
	 * @return 当前所有的订单集合
	 */
	public List<Order> getAll();
	
	/**
	 * 通过用户id和订单状态查询指定订单
	 * @param u_id  用户id
	 * @param o_State  订单状态
	 * @return 当前用户指定状态订单集合
	 */
	public List<Order> getStateList(Integer u_id,Integer o_State);
	
	/**
	 * 通过订单状态查询订单
	 * @param o_State  订单状态
	 * @return 当前指定状态订单集合
	 */
	public List<Order> getAllStateList(Integer o_State);
	
	/**
	 * 新增   主键自动增长不传值  订单状态默认为0
	 * @param t  订单实体
	 * @return 受影响的行数
	 */
	public int add(Order t);
	
	/**
	 * 修改订单状态  通过订单ID和状态
	 * @param o_id  订单ID
	 * @param o_State  修改后的订单状态
	 * @param num  后台传2 前台传1
	 * @return 受影响的行数
	 */
	public int updateState(Integer o_id,Integer o_State,Integer num);
	
	/**
	 * 获得自增的订单ID    即ID最大值
	 * @return 订单自增ID
	 */
	public int getMaxId();
	
	/**
	 * 修改订单表中的收货地址  订单id 收货地址
	 * @param o  订单实体  内封装订单id和收货地址
	 * @return 影响行数
	 */
	public int updateAddr(Order o);
}
