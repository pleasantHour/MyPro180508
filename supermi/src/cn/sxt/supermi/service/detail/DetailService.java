package cn.sxt.supermi.service.detail;

import java.util.List;

import cn.sxt.supermi.entity.Detail;
/**
 * 订单详细表的业务
 * @author Zhou
 *
 */
public interface DetailService {
	/**
	 * 新增   主键自动增长不传值 
	 * @param t  订单详情实体
	 * @return 受影响的行数
	 */
	public int add(Detail t);
	
	/**
	 * 通过订单id查询所有订单详情表中的信息
	 * @param o_id  订单id
	 * @return 当前所查订单的订单详情集合
	 */
	public List<Detail> getAllList(Integer o_id);
}
