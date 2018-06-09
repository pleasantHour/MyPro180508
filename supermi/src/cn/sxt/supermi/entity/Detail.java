package cn.sxt.supermi.entity;	

public class Detail {
    private Integer d_Id;//订单详情ID

    private Integer g_Id;//商品ID

    private Integer o_Id;//订单ID

    private String d_Spes;//规格

    private Integer d_Num;//数量

    private Integer d_Price;//价格

    private String d_Addr;//图片地址

	public Detail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Detail(Integer d_Id, Integer g_Id, Integer o_Id, String d_Spes, Integer d_Num, Integer d_Price,
			String d_Addr) {
		super();
		this.d_Id = d_Id;
		this.g_Id = g_Id;
		this.o_Id = o_Id;
		this.d_Spes = d_Spes;
		this.d_Num = d_Num;
		this.d_Price = d_Price;
		this.d_Addr = d_Addr;
	}

	public Integer getD_Id() {
		return d_Id;
	}

	public void setD_Id(Integer d_Id) {
		this.d_Id = d_Id;
	}

	public Integer getG_Id() {
		return g_Id;
	}

	public void setG_Id(Integer g_Id) {
		this.g_Id = g_Id;
	}

	public Integer getO_Id() {
		return o_Id;
	}

	public void setO_Id(Integer o_Id) {
		this.o_Id = o_Id;
	}

	public String getD_Spes() {
		return d_Spes;
	}

	public void setD_Spes(String d_Spes) {
		this.d_Spes = d_Spes;
	}

	public Integer getD_Num() {
		return d_Num;
	}

	public void setD_Num(Integer d_Num) {
		this.d_Num = d_Num;
	}

	public Integer getD_Price() {
		return d_Price;
	}

	public void setD_Price(Integer d_Price) {
		this.d_Price = d_Price;
	}

	public String getD_Addr() {
		return d_Addr;
	}

	public void setD_Addr(String d_Addr) {
		this.d_Addr = d_Addr;
	}

    
}