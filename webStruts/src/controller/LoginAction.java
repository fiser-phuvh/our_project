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

	public Users getU() {
		return u;
	}

	public void setU(Users u) {
		this.u = u;
	}

	public String execute() {
		List<Users> l = DB_Users.getAllUsers();

//		if (SupportUsers.contain(l, u)) {
		u = SupportUsers.contain(l, u);
			Map<String, Object> session = ActionContext.getContext().getSession();
			
			session.put("login", "true");
			session.put("id", u.getId());
			
			session.put("username", u.getUsername());

			return SUCCESS;
//		}
//		return ERROR;
	}

}
