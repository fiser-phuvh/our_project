package controller;

import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import funtionSupport.*;
public class LogOutAction extends ActionSupport {
	public String execute(){
		Map<String, Object> m=Session.getMap();
		m.remove("login");
		m.remove("username");
		System.out.println(m.containsKey("login"));
		return "success";
	}
}