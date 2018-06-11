package cn.sxt.supermi.service.goods.impl;

import java.util.List;

import cn.sxt.supermi.dao.goods.GoodsDAO;
import cn.sxt.supermi.dao.goods.impl.GoodsDAOImpl;
import cn.sxt.supermi.entity.Goods;
import cn.sxt.supermi.service.goods.GoodsService;

public class GoodsServiceImpl implements GoodsService{

	GoodsDAO gdao = new GoodsDAOImpl();
	
	public List<Goods> getAll() {
		
		return gdao.getAll();
	}

	
	public List<Goods> getAllByID(Goods gid) {
		// TODO Auto-generated method stub
		return gdao.getAllByID(gid);
	}

	
	public int addGoods(Goods g) {
		// TODO Auto-generated method stub
		return gdao.addGoods(g);
	}

	
	public int deleteGoods(int gid) {
		// TODO Auto-generated method stub
		return gdao.deleteGoods(gid);
	}

	
	public int updateGoods(Goods g) {
		// TODO Auto-generated method stub
		return gdao.updateGoods(g);
	}


	@Override
	public int updateGoodsSalesByID(int gid, int num) {
		
		return gdao.updateGoodsSalesByID(gid, num);
	}


	@Override
	public List<Goods> getAllByName(String gName) {
		
		return gdao.getAllByName(gName);
	}
			
}
