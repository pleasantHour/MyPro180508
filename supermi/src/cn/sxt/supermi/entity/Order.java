package cn.sxt.supermi.entity;

import java.util.Date;
import java.util.List;

public class Order {
    private Integer o_Id;//订单ID 

    private Integer u_Id;//用户ID

    private Integer o_State;//状态

    private String o_Addr;//收货地址

    private Integer o_Price;//总价

    private Integer o_Num;//数量

    private String o_Time;//订单时间
    
    private List<Detail> dtList;//订单详情的集合 即该订单下的多个商品

	public List<Detail> getDtList() {
		return dtList;
	}

	public void setDtList(List<Detail> dtList) {
		this.dtList = dtList;
	}

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Order(Integer o_Id, Integer u_Id, Integer o_State, String o_Addr, Integer o_Price, Integer o_Num,
			String o_Time) {
		super();
		this.o_Id = o_Id;
		this.u_Id = u_Id;
		this.o_State = o_State;
		this.o_Addr = o_Addr;
		this.o_Price = o_Price;
		this.o_Num = o_Num;
		this.o_Time = o_Time;
	}

	public Integer getO_Id() {
		return o_Id;
	}

	public void setO_Id(Integer o_Id) {
		this.o_Id = o_Id;
	}

	public Integer getU_Id() {
		return u_Id;
	}

	public void setU_Id(Integer u_Id) {
		this.u_Id = u_Id;
	}

	public Integer getO_State() {
		return o_State;
	}

	public void setO_State(Integer o_State) {
		this.o_State = o_State;
	}

	public String getO_Addr() {
		return o_Addr;
	}

	public void setO_Addr(String o_Addr) {
		this.o_Addr = o_Addr;
	}

	public Integer getO_Price() {
		return o_Price;
	}

	public void setO_Price(Integer o_Price) {
		this.o_Price = o_Price;
	}

	public Integer getO_Num() {
		return o_Num;
	}

	public void setO_Num(Integer o_Num) {
		this.o_Num = o_Num;
	}

	public String getO_Time() {
		return o_Time;
	}

	public void setO_Time(String o_Time) {
		this.o_Time = o_Time;
	}

	

  

}