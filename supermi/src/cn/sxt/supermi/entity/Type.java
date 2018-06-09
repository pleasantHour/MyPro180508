package cn.sxt.supermi.entity;
/**
 * 类型表
 * @author Allen-wen
 *
 */
public class Type {
	//类型id
	private Integer t_id;
	//父类id
	private Integer t_fId;
	//类型名称
	private String t_name;
	//状态
	private Integer t_state;
	
	public Type() {
	}
	
	
	
	public Type(Integer t_fId, String t_name, Integer t_state) {
		super();
		this.t_fId = t_fId;
		this.t_name = t_name;
		this.t_state = t_state;
	}



	public Type(Integer t_id, Integer t_fId, String t_name, Integer t_state) {
		super();
		this.t_id = t_id;
		this.t_fId = t_fId;
		this.t_name = t_name;
		this.t_state = t_state;
	}

	public Integer getT_state() {
		return t_state;
	}

	public void setT_state(Integer t_state) {
		this.t_state = t_state;
	}

	public Integer getT_id() {
		return t_id;
	}
	public void setT_id(Integer t_id) {
		this.t_id = t_id;
	}
	public Integer getT_fId() {
		return t_fId;
	}
	public void setT_fId(Integer t_fId) {
		this.t_fId = t_fId;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}

	@Override
	public String toString() {
		return "Type [t_id=" + t_id + ", t_fId=" + t_fId + ", t_name=" + t_name + ", t_state=" + t_state + "]";
	}
	
	
	
}
