package cn.sxt.supermi.service.order;

import java.util.List;

import cn.sxt.supermi.entity.Order;
import cn.sxt.supermi.entity.OrderPageRule;
import cn.sxt.supermi.entity.PageBean;

/**
 * 订单业务
 * @author Zhou
 *
 */
public interface OrderService {
	/**
	 * 通过用户id查询所有订单表中的订单 按时间倒序
	 * @param u_id  用户id
	 * @return 当前用户所有的订单集合
	 */
	public List<Order> getAllList(int u_id);
	
	/**
	 * 通过用户id和订单状态查询指定订单
	 * @param u_id  用户id
	 * @param o_State  订单状态
	 * @return 当前用户指定状态订单集合
	 */
	public List<Order> getStateList(Integer u_id,Integer o_State);
	
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
	 * @param num  1 用户取消 2 后台取消
	 * @return 受影响的行数
	 */
	public int updateState(Integer o_id, Integer o_State,Integer num);
	
	/**
	 * 获得自增的订单ID    即ID最大值
	 * @return 订单自增ID
	 */
	public int getMaxId();
	
	/**
	 * 返回所有订单 按时间倒序
	 * 
	 * @return 当前所有的订单集合
	 */
	public List<Order> getAll();
	
	/**
	 * 通过订单状态查询订单
	 * @param o_State  订单状态
	 * @return 当前指定状态订单集合
	 */
	public List<Order> getAllStateList(Integer o_State);
	
	/**
	 * 修改订单表中的收货地址  订单id 收货地址
	 * @param o  订单实体  内封装订单id和收货地址
	 * @return 影响行数
	 */
	public int updateAddr(Order o);
	
	/**
	 * 修改订单表中的提醒发货时间  当前系统时间
	 * @param o_id 订单ID
	 * @param o_level 优先级
	 * @return 影响行数
	 */
	public int updateBtnTime(Integer o_id,Integer o_level);
	
	/**
	 * 判断时间是否超过24小时 
	 * @param o  订单实体  内封装上次按提醒发货按钮的时间
	 * @return true 超过24小时     false 未超过24小时
	 */
	public boolean outTimeFlag(Order o);
	
	/**
	 * 设置订单页面实体
	 * @param pb  订单页面实体
	 * @param opr  查询参数的封装
	 * @param page  当前页
	 */
	public void setPageBean(PageBean<Order> pb,OrderPageRule opr,String page);
	
	/**
	 * 查询数据的总条数
	 * @param opr  用户id 查询条件 订单类型
	 * @return 总条数
	 */
	public int getTotalCount(OrderPageRule opr);
	
	/**
	 * 当前用户根据传来的条件分页  
	 * @param opr  内封装用户id 查询条件 订单类型
	 * @param currentPage  当前页
	 * @param maxResult  每页显示最大条数
	 * @return 订单集合
	 */
	public List<Order> getAllByPage(OrderPageRule opr,Integer currentPage, Integer maxResult);
	
	/**
	 * 通过订单ID获得订单信息
	 * @param o_id 订单ID
	 * @return 查询出的订单对象
	 */
	public Order getOrderByID(Integer o_id);

	/**
	 * 通过日期区间 查询订单时间在此区间内的订单集合
	 * @param startTime 日期区间 开始时间
	 * @param endTime   日期区间 结束时间
	 * @return 订单时间在此区间内的订单集合
	 */
	public List<Order> getListByTimeRange(String startTime, String endTime);
	
	/**
	 * 获得指定用户下的某订单状态的总数  如1用户的未支付订单的数量
	 * @param t  订单实体   内封装 用户ID 订单状态
	 * @return 查询到的记录数
	 */
	public int getStateCount(Order t);

}
