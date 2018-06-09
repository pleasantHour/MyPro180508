package cn.sxt.supermi.entity;
/**
 * 商品规格类
 * @author Allen-wen
 *
 */
public class Spes {
	private Integer sp_id; //商品规格id
	private Integer g_id;	//商品id
	private String sp_kind; //规格
	private String sp_describe; //规格的描述
	
	
	
	public Spes() {
	}
	public Spes(Integer sp_id, Integer g_id, String sp_kind, String sp_describe, Integer sp_price) {
		this.sp_id = sp_id;
		this.g_id = g_id;
		this.sp_kind = sp_kind;
		this.sp_describe = sp_describe;
		
	}
	public Integer getSp_id() {
		return sp_id;
	}
	public void setSp_id(Integer sp_id) {
		this.sp_id = sp_id;
	}
	public Integer getG_id() {
		return g_id;
	}
	public void setG_id(Integer g_id) {
		this.g_id = g_id;
	}
	public String getSp_kind() {
		return sp_kind;
	}
	public void setSp_kind(String sp_kind) {
		this.sp_kind = sp_kind;
	}
	public String getSp_describe() {
		return sp_describe;
	}
	public void setSp_describe(String sp_describe) {
		this.sp_describe = sp_describe;
	}

	public String toString() {
		return "Spes [sp_id=" + sp_id + ", g_id=" + g_id + ", sp_kind=" + sp_kind + ", sp_describe=" + sp_describe
				+ "]";
	}
	
	
}
