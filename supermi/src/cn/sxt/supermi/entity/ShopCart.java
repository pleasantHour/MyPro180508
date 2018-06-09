package cn.sxt.supermi.entity;
/**
 * 购物车类
 * @author Allen-wen
 *
 */
public class ShopCart {
	private Integer sh_id;  //购物车ID
	private Integer u_id;  //用户ID
	private Integer g_id;  //商品ID
	private String sh_spec;  //规格
	private Integer sh_state;  //状态
	private Integer sh_num;  //数量
	private Integer sh_postage;  //邮费
	private Integer sh_price;  //价格
	private String sh_addr;  //图片地址
	public ShopCart(Integer sh_id, Integer u_id, Integer g_id, String sh_spec, Integer sh_state, Integer sh_num,
			Integer sh_postage, Integer sh_price, String sh_addr) {
		this.sh_id = sh_id;
		this.u_id = u_id;
		this.g_id = g_id;
		this.sh_spec = sh_spec;
		this.sh_state = sh_state;
		this.sh_num = sh_num;
		this.sh_postage = sh_postage;
		this.sh_price = sh_price;
		this.sh_addr = sh_addr;
	}
	public ShopCart() {
	}
	public Integer getSh_id() {
		return sh_id;
	}
	public void setSh_id(Integer sh_id) {
		this.sh_id = sh_id;
	}
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public Integer getG_id() {
		return g_id;
	}
	public void setG_id(Integer g_id) {
		this.g_id = g_id;
	}
	public String getSh_spec() {
		return sh_spec;
	}
	public void setSh_spec(String sh_spec) {
		this.sh_spec = sh_spec;
	}
	public Integer getSh_state() {
		return sh_state;
	}
	public void setSh_state(Integer sh_state) {
		this.sh_state = sh_state;
	}
	public Integer getSh_num() {
		return sh_num;
	}
	public void setSh_num(Integer sh_num) {
		this.sh_num = sh_num;
	}
	public Integer getSh_postage() {
		return sh_postage;
	}
	public void setSh_postage(Integer sh_postage) {
		this.sh_postage = sh_postage;
	}
	public Integer getSh_price() {
		return sh_price;
	}
	public void setSh_price(Integer sh_price) {
		this.sh_price = sh_price;
	}
	public String getSh_addr() {
		return sh_addr;
	}
	public void setSh_addr(String sh_addr) {
		this.sh_addr = sh_addr;
	}
	
	public String toString() {
		return "ShopCart [sh_id=" + sh_id + ", u_id=" + u_id + ", g_id=" + g_id + ", sh_spec=" + sh_spec + ", sh_state="
				+ sh_state + ", sh_num=" + sh_num + ", sh_postage=" + sh_postage + ", sh_price=" + sh_price
				+ ", sh_addr=" + sh_addr + "]";
	}
	
	
	
	
}
