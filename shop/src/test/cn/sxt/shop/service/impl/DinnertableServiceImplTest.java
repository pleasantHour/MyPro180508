package test.cn.sxt.shop.service.impl;


import java.util.List;

import org.junit.Test;

import cn.sxt.shop.entity.Dinnertable;
import cn.sxt.shop.service.DinnertableService;
import cn.sxt.shop.service.impl.DinnertableServiceImpl;

/**
 * 单元Junit 测试使用步骤:
 * 	1.导入Junit.jar  
 *  2.写一个void 类型无参的方法。
 *  3.在方法上面打上一个@Test注解
 *  
 *
 */
public class DinnertableServiceImplTest {

	DinnertableService service = new DinnertableServiceImpl();
	
	
	@Test
	public void getAll(){//测试所有的餐桌列表信息查询
		
		//int a = 10 / 0;
		List<Dinnertable> tabls = service.getAll();
		
		for(Dinnertable table : tabls){
			
			System.out.println("餐桌名称:"+table.getTablename());
		}
	}
	
	@Test
	public void getAllByName(){//测试所有的餐桌列表信息查询
		
		//int a = 10 / 0;
		//接收页面传递过来的搜索条件
		String name = "巴";
		//封装查询参数
		Dinnertable table = new Dinnertable();
		if(name != null && !"".equals(name)){
			table.setTablename(name);
		}
		
		//查询所有餐桌
		List<Dinnertable> tables = service.getAllDinnerTable(table);	
		
		for(Dinnertable table1 : tables){
			
			System.out.println("餐桌名称:"+table1.getTablename());
		}
	}
	
	@Test
	public void deleteById(){//测试删除一个餐桌
		
		//模拟jsp传递过来的参数  id
		Integer id = 1;
		
		int count = service.deleteById(id);
	}
}
