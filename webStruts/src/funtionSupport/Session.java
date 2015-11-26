package funtionSupport;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class Session {
	private static Map<String, Object> session ;
	static{
		session = ActionContext.getContext().getSession();
		System.out.println(session==null);
	}
	
	
	public static String getSessionUsername() {
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
		return (int)session.get("id");
		
	}
	public static Map<String, Object> getMap(){
		return session;
	}
}