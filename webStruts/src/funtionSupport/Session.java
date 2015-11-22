package funtionSupport;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class Session {
	private static Map<String, Object> session = ActionContext.getContext().getSession();
	
	public static String getSessionUsername() {
		return (String)session.get("username");
	}
	
	public static int getSessionId(){
		return (int)session.get("id");
	}
}