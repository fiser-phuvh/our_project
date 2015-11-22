package controller;

import com.opensymphony.xwork2.ActionSupport;
import model.*;
import entities.Users;
import funtionSupport.LoginCheck;
import funtionSupport.Session;

public class UserProfileAct extends ActionSupport {
	String username = Session.getSessionUsername();
	
	public String getUsername() {
		return username;
	}
	
	public Users getProfile() {
		return DB_Users.getUserById(Session.getSessionId());
	}
	
	public String execute(){		
		return "success";
	}
}
