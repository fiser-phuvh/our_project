package funtionSupport;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class Session {
	private static Map<String, Object> session ;
	
	public static String getSessionUsername() {
		session = ActionContext.getContext().getSession();
		String res=null;
		try {
			res=(String)session.get("username");
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		//return (String)session.get("username");
		return res;
	}
	
	public static int getSessionId(){
		session = ActionContext.getContext().getSession();
		return (int)session.get("id");
		
	}
	public static Map<String, Object> getMap(){
		session = ActionContext.getContext().getSession();
		return session;
	}
}