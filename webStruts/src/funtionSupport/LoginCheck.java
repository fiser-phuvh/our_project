package funtionSupport;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class LoginCheck {
	public static boolean logedIn() {
		Map<String, Object> session;

		try {
			session = Session.getMap();
			if(session.containsKey("login")){
				return true;
			}
			else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}
		
		
	}

	
}