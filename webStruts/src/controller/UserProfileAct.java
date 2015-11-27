package controller;

import com.opensymphony.xwork2.ActionSupport;
import model.*;
import entities.Users;
import funtionSupport.LoginCheck;
import funtionSupport.Session;

public class UserProfileAct extends ActionSupport {
	String username = Session.getSessionUsername();
	int[] active = {0,0,0,0,0};
	
	public String getUsername() {
		return username;
	}
	
	public String getActive(int i) {
		if (active[i] == 1) return "active";
		else return "";
	}
	
	public Users getProfile() {
		return DB_Users.getUserById(Session.getSessionId());
	}
	
	public String execute(){		
		return "success";
	}
}
