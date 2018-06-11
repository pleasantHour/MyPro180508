package cn.sxt.supermi.dao.goods;

import java.util.List;
import cn.sxt.supermi.entity.Goods;

/**
 * 商品DAO接口
 * @author C
 *
 */
public interface GoodsDAO {
	/**
	 * 查询所有的商品信息
	 * @return   商品List集合
	 */
	public List<Goods> getAll();
	/**
	 * 通过商品ID查询商品信息
	 * @return   商品List集合
	 */
	public List<Goods> getAllByID(Goods gid);
	/**
	 *增加商品
	 * @return   int
	 */
	public int addGoods(Goods g);
	/**
	 *删除商品
	 * @return   int
	 */
	public int deleteGoods(int gid);
	/**
	 *修改商品
	 * @return   int
	 */
	public int updateGoods(Goods g);
}
