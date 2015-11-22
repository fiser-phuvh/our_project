package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import entities.Users;
import funtionSupport.LoginCheck;
import funtionSupport.Session;
import model.*;

public class AboutUs extends ActionSupport{
	String username = Session.getSessionUsername();
	
	public String getUsername() {
		return username;
	}
	
	public String execute(){
		return "success";
	}
}
