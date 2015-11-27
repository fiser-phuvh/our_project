package controller;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import entities.Users;
import funtionSupport.*;
import model.*;

public class LoginAction extends ActionSupport {
	Users u = new Users();
	String message;
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	public Users getU() {
		return u;
	}

	public void setU(Users u) {
		this.u = u;
	}

	public String execute() {
		List<Users> l = DB_Users.getAllUsers();
		System.out.println(u.getUsername()+" "+u.getPassword());
		System.out.println(l.size());
		if (SupportUsers.contain(l, u) != null) {
			u = SupportUsers.contain(l, u);
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("login", "true");
			session.put("id", u.getId());
			session.put("username", u.getUsername());
			return SUCCESS;
		}
		message = "Username or password is incorrect, please try again !";
		return ERROR;
	}

}
