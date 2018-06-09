package cn.sxt.supermi.dao.type;

import java.util.List;

import cn.sxt.supermi.entity.Goods;
import cn.sxt.supermi.entity.Type;

/**
 * 商品类型DAO 接口
 * @author C
 *
 */
public interface TypeDAO {
	/**
	 * 查询所有的类型信息
	 * @return   类型List集合
	 */
	public List<Type> getAll();
	/**
	 * 通过类型名查询类型信息
	 * @return   类型List集合
	 */
	public List<Type> getAllByName(Type tname);
	/**
	 *增加类型
	 * @return   int
	 */
	public int addType(Type t);
	/**
	 *删除类型
	 * @return   int
	 */
	public int deleteType(int gid);
	/**
	 *修改类型
	 * @return   int
	 */
	public int updateType(Type t);
	/**
	 *通过类型查询到所有的商品
	 * @return   goods
	 */
	public List<Goods> getGoodsByType(Type t);
}







