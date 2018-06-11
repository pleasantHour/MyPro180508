package cn.sxt.supermi.entity;
/**
 * 用户类
 * @author wen
 *
 */
public class User {
	private Integer u_id; //用户id
	private String u_name; //姓名
	private String u_nick;//用户名
	private String u_pwd; //用户密码
	private String u_tel; //手机号码
	private String u_sex; // 性别
	private String u_photo; //头像 
	
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_nick() {
		return u_nick;
	}
	public void setU_nick(String u_nick) {
		this.u_nick = u_nick;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
	public String getU_tel() {
		return u_tel;
	}
	public void setU_tel(String u_tel) {
		this.u_tel = u_tel;
	}
	public String getU_sex() {
		return u_sex;
	}
	public void setU_sex(String u_sex) {
		this.u_sex = u_sex;
	}
	public String getU_photo() {
		return u_photo;
	}
	public void setU_photo(String u_photo) {
		this.u_photo = u_photo;
	}
	public User(Integer u_id, String u_name, String u_nick, String u_pwd, String u_tel, String u_sex, String u_photo) {
		super();
		this.u_id = u_id;
		this.u_name = u_name;
		this.u_nick = u_nick;
		this.u_pwd = u_pwd;
		this.u_tel = u_tel;
		this.u_sex = u_sex;
		this.u_photo = u_photo;
	}

	
	public User(String u_name, String u_nick, String u_pwd, String u_tel, String u_sex, String u_photo) {
		super();
		this.u_name = u_name;
		this.u_nick = u_nick;
		this.u_pwd = u_pwd;
		this.u_tel = u_tel;
		this.u_sex = u_sex;
		this.u_photo = u_photo;
	}
	public User() {
		
	}
	
	
}
