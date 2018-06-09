package cn.sxt.supermi.service.shopcart.impl;

import java.util.List;

import cn.sxt.supermi.dao.shopcart.ShopcartDAO;
import cn.sxt.supermi.dao.shopcart.impl.ShopcartDAOImpl;
import cn.sxt.supermi.entity.ShopCart;
import cn.sxt.supermi.service.shopcart.ShopcartService;

public class ShopcartServiceImpl implements ShopcartService{
	private ShopcartDAO dao = new ShopcartDAOImpl();
	public List<ShopCart> list(Integer u_id) {
		return dao.list(u_id);
	}

	public int delete(Integer sh_Id) {
		return dao.delete(sh_Id);
	}

	public int add(ShopCart sc) {
		//选择商品规格后，添加购物车，状态默认为0   （ 0是未下单 ， 1是下单 ）
		sc.setSh_state(0);
		return dao.add(sc);
	}

}
