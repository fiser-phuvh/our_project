package controller;

import com.opensymphony.xwork2.ActionSupport;

import model.User;;

public class LoginAction extends ActionSupport {
	User u=new User();

	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}
	public String execute(){
		User s=new User();
		u.setName("Hồng Phú");
		
		s.setName("magicghost.vu");
		s.setPass("01689357005");
		if(u.equals(s))
		return "success";
		else {
			return "error";
		}
	}
}
