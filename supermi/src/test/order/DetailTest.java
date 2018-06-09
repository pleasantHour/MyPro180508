package test.order;

import java.util.List;

import org.junit.Test;

import cn.sxt.supermi.dao.detail.impl.DetailDAOImpl;
import cn.sxt.supermi.entity.Detail;
import cn.sxt.supermi.entity.Order;

public class DetailTest {
	DetailDAOImpl d = new DetailDAOImpl();
	
	
	public void add() {
		// TODO Auto-generated method stub
		Detail de = new Detail(1,1,5,"heise",4,888,"1.jpg");
		
		int l = 0;
		l = d.add(de);
		System.out.println(l);
		
	}
	
	@Test
	public void getAllList() {
		// TODO Auto-generated method stub
		
		List<Detail> l = d.getAllList(5);
		for(Detail o : l){
			System.out.println(o.getD_Addr()+"00000000000"+o.getD_Spes());
		}
		
	}
}
