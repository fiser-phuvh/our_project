package controller;
import com.opensymphony.xwork2.ActionSupport;

import model.User;
public class SayHiAction extends ActionSupport{
	String s="Hồng Phú";
	User b=new User();
	public String getS() {
		return s;
	}
	public void setS(String s) {
		this.s = s;
	}
	public String execute(){
		b.setId(1);
		b.setName("Tinhte.vn");
		return "hi";
	}
	public User getB() {
		return b;
	}
	public void setB(User b) {
		this.b = b;
	}
}
