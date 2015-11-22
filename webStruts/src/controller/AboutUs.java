package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import entities.Users;
import funtionSupport.LoginCheck;
import funtionSupport.Session;
import model.*;

public class AboutUs extends ActionSupport{
	String username = Session.getSessionUsername();
	boolean login = LoginCheck.logedIn();
	
	public String getUsername() {
		return username;
	}
	
	public boolean getLogin() {
		return login;
	}
	
	public String execute(){
		return "success";
	}
}
