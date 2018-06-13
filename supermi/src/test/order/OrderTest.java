package test.order;

import java.util.List;

import org.junit.Test;

import cn.sxt.supermi.dao.order.impl.OrderDAOImpl;
import cn.sxt.supermi.entity.Order;
import cn.sxt.supermi.entity.OrderPageRule;

public class OrderTest {
	
		
		OrderDAOImpl d = new OrderDAOImpl();
		
//		public void getAllList() {
//			// TODO Auto-generated method stub
//			
//			List<Order> l = d.getAllList(1);
//			for(Order o : l){
//				System.out.println(o.getO_Id()+"00000000000"+o.getO_Addr());
//			}
//			
//		}
//		
//		@Test
//		public void getStateList() {
//			// TODO Auto-generated method stub
//			
//			List<Order> l = d.getStateList(1, 0);
//			for(Order o : l){
//				System.out.println(o.getO_Id()+"00000000000"+o.getO_Addr());
//			}
//			
//		}
//		
//		
//		public void add() {
//			// TODO Auto-generated method stub
//			Order o = new Order(7,1,0,"浏阳",234,6,"2018-03-06");
//			
//			int l = 0;
//			l = d.add(o);
//			System.out.println(l);
//			
//		}
//		
//		
//		public void updateState() {
//			// TODO Auto-generated method stub
//			int l = 0;
//			l = d.updateState(5,2,2);
//			System.out.println(l);
//			
//		}
//		
//		
//		public void getMaxId() {
//			// TODO Auto-generated method stub
//			int l = 0;
//			l = d.getMaxId();
//			System.out.println(l);
//			
//		}
		
//		
//		@Test
//		public void getAllByPage() {
//			// TODO Auto-generated method stub
//			
//			List<Order> l = d.getAllByPage(1,"",6,0,4);
//			for(Order o : l){
//				System.out.println(o.getO_Id()+"00000000000"+o.getO_Addr());
//			}
//		}
		
		
		@Test
		public void getTotalCount() {
			int l = 0;
			OrderPageRule opr = new OrderPageRule(1,"",6);
			l = d.getTotalCount(opr);
			System.out.println(l);
			
		}
	

}
