package cn.sxt.supermi.service.detail.impl;

import java.util.List;

import cn.sxt.supermi.dao.detail.DetailDAO;
import cn.sxt.supermi.dao.detail.impl.DetailDAOImpl;
import cn.sxt.supermi.entity.Detail;
import cn.sxt.supermi.service.detail.DetailService;

public class DetailServiceImpl implements DetailService {
	DetailDAO dao = new DetailDAOImpl();
	@Override
	public int add(Detail t) {
		// TODO Auto-generated method stub
		return dao.add(t);
	}

	@Override
	public List<Detail> getAllList(Integer o_id) {
		// TODO Auto-generated method stub
		return dao.getAllList(o_id);
	}

}
