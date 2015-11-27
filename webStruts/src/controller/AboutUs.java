package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import entities.Users;
import funtionSupport.LoginCheck;
import funtionSupport.Session;
import model.*;

public class AboutUs extends ActionSupport{
	String username = Session.getSessionUsername();
	int[] active = {0,0,0,1,0};
	
	public String getUsername() {
		return username;
	}
	
	public String getActive(int i) {
		if (active[i] == 1) return "active";
		else return "";
	}
	
	public String execute(){
		return "success";
	}
}
