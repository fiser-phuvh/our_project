package funtionSupport;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
public class LoginCheck {
	public static boolean logedIn(){
		Map<String, Object> session =ActionContext.getContext().getSession();
		if(session.containsKey("login")){
			return true;
		}else {
			return false;
		}
	}
	public static Map<String, Object> getSession(){
		return ActionContext.getContext().getSession();
	}
}
