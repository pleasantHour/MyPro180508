package cn.sxt.supermi.entity;
/**
 * 商品实体类
 * @author Allen-wen
 *	
 */
public class Goods {
	//商品id
	private Integer g_id;
	//类型id
	private Integer t_id;
	//商品名称
	private String g_name;
	//商品描述
	private String g_describe;
	//商品底价
	private Integer g_base_price;
	//邮费
	private Integer g_postage;
	//总销量
	private Integer g_sales;
	//图片
	private String g_picture;
	//上架时间
	private String g_addTime;
	//更新时间
	private String g_newTime;
	//状态
	private Integer g_state;
	
	public Goods() {
	}
	
	public Goods(Integer t_id, String g_name, String g_describe, Integer g_base_price, Integer g_postage,
			Integer g_sales, String g_picture, String g_addTime, String g_newTime, Integer g_state) {
		super();
		this.t_id = t_id;
		this.g_name = g_name;
		this.g_describe = g_describe;
		this.g_base_price = g_base_price;
		this.g_postage = g_postage;
		this.g_sales = g_sales;
		this.g_picture = g_picture;
		this.g_addTime = g_addTime;
		this.g_newTime = g_newTime;
		this.g_state = g_state;
	}


	public Goods(Integer g_id, Integer t_id, String g_name, String g_describe, Integer g_base_price, Integer g_postage,
			Integer g_sales, String g_picture, String g_addTime, String g_newTime, Integer g_state) {
		super();
		this.g_id = g_id;
		this.t_id = t_id;
		this.g_name = g_name;
		this.g_describe = g_describe;
		this.g_base_price = g_base_price;
		this.g_postage = g_postage;
		this.g_sales = g_sales;
		this.g_picture = g_picture;
		this.g_addTime = g_addTime;
		this.g_newTime = g_newTime;
		this.g_state = g_state;
	}
	public String getG_picture() {
		return g_picture;
	}
	public void setG_picture(String g_picture) {
		this.g_picture = g_picture;
	}
	public String getG_newTime() {
		return g_newTime;
	}

	public void setG_newTime(String g_newTime) {
		this.g_newTime = g_newTime;
	}



	public Integer getG_state() {
		return g_state;
	}



	public void setG_state(Integer g_state) {
		this.g_state = g_state;
	}



	public Integer getG_id() {
		return g_id;
	}
	public void setG_id(Integer g_id) {
		this.g_id = g_id;
	}
	public Integer getT_id() {
		return t_id;
	}
	public void setT_id(Integer t_id) {
		this.t_id = t_id;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public String getG_describe() {
		return g_describe;
	}
	public void setG_describe(String g_describe) {
		this.g_describe = g_describe;
	}
	public Integer getG_base_price() {
		return g_base_price;
	}
	public void setG_base_price(Integer g_base_price) {
		this.g_base_price = g_base_price;
	}
	public Integer getG_postage() {
		return g_postage;
	}
	public void setG_postage(Integer g_postage) {
		this.g_postage = g_postage;
	}
	public Integer getG_sales() {
		return g_sales;
	}
	public void setG_sales(Integer g_sales) {
		this.g_sales = g_sales;
	}
	public String getG_addTime() {
		return g_addTime;
	}
	public void setG_addTime(String g_addTime) {
		this.g_addTime = g_addTime;
	}


	public String toString() {
		return "Goods [g_id=" + g_id + ", t_id=" + t_id + ", g_name=" + g_name + ", g_describe=" + g_describe
				+ ", g_base_price=" + g_base_price + ", g_postage=" + g_postage + ", g_sales=" + g_sales
				+ ", g_picture=" + g_picture + ", g_addTime=" + g_addTime + ", g_newTime=" + g_newTime + ", g_state="
				+ g_state + "]";
	}

	
}
