package cn.sxt.supermi.entity;

/**
 * 存储订单查询分页相关参数
 * @author Zhou
 *
 */
public class OrderPageRule {
	private int u_id;//用户ID
	private String serch;//查询内容
	private int type;//订单状态
	
	
	public OrderPageRule() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderPageRule(int u_id, String serch, int type) {
		super();
		this.u_id = u_id;
		this.serch = serch;
		this.type = type;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getSerch() {
		return serch;
	}
	public void setSerch(String serch) {
		this.serch = serch;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	
}
