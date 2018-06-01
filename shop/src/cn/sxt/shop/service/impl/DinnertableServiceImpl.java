package cn.sxt.shop.service.impl;

import java.util.Date;
import java.util.List;

import cn.sxt.shop.dao.DinnertableDAO;
import cn.sxt.shop.dao.impl.DinnertableDAOImpl;
import cn.sxt.shop.entity.Dinnertable;
import cn.sxt.shop.service.DinnertableService;

/**
 * 餐桌业务层实现类
 *
 * Ctrl+shif+o  自动清理包
 */
public class DinnertableServiceImpl implements DinnertableService {

	DinnertableDAO dao = new DinnertableDAOImpl();
	
	
	public List<Dinnertable> getAll() {
		return dao.getAll();
	}
	
	
	public int deleteById(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public List<Dinnertable> getAllDinnerTable(Dinnertable table) {
		return dao.getAllDinnerTable(table);
	}


	@Override
	public int addDinnerTable(Dinnertable table) {
		// TODO Auto-generated method stub
		return dao.addDinnerTable(table);
	}


	@Override
	public int deleteTableById(int id) {
		// TODO Auto-generated method stub
		return dao.deleteTableById(id);
	}


	@Override
	public Dinnertable findTableById(int id) {
		// TODO Auto-generated method stub
		return dao.findTableById(id);
	}


	@Override
	public int updateStatus(Dinnertable table) {
		if(table.getTablestatus() == 1){ //空闲
			//预定
			table.setTablestatus(0);
			//系统当前时间
			table.setOrderdate(new Date());
		}else{
			//预定
			table.setTablestatus(1);
			//预定时间清空
			table.setOrderdate(null);
		}
		
		return dao.updateStatus(table);
	}


	@Override
	public List<Dinnertable> getAllByPage(Integer currentPage, Integer maxResult) {
		// TODO Auto-generated method stub
		return dao.getAllByPage(currentPage, maxResult);
	}


	@Override
	public Integer getTotalCount() {
		// TODO Auto-generated method stub
		return dao.getTotalCount();
	}
	
	

}
