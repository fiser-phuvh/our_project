package controller;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
public class LogOutAction extends ActionSupport {
	public static String logOut(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		if(session.containsKey("login")){
			session.remove("login");
		}
		return "logOut";
	}
}
