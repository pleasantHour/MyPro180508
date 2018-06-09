package cn.sxt.supermi.service.shopcart;

import java.util.List;

import cn.sxt.supermi.entity.ShopCart;

/**
 * 购物车service接口
 * @author Allen-wen
 *
 */
public interface ShopcartService {

	/**
	 * 通过用户id查询所有购物车中的商品，默认是查询未下单的商品
	 * @param u_id  用户id
	 * @return 当前用户的购物车中所有的商品
	 */
	public List<ShopCart> list(Integer u_id);
	
	/**
	 * 通过购物车的id删除购物车中的商品
	 * @param sh_Id 购物车的id
	 * @return 受影响的行
	 */
	public int delete(Integer sh_Id);
	
	/**
	 * 添加一个商品至购物车
	 * @param sc 一个购物车中的商品的实例
	 * @return 受影响的行
	 */
	public int add(ShopCart sc);
}
