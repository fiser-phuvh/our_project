package controller;

import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;

public class LogOutAction extends ActionSupport {
	public String execute(){
		ActionContext.getContext().getSession().clear();
			
		return "success";
	}
}