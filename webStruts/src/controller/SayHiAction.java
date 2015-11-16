package controller;
import com.opensymphony.xwork2.ActionSupport;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
public class SayHiAction extends ActionSupport{
	String d;
	
	public String getD() {
		return d;
	}

	public void setD(String d) {
		this.d = d;
	}

	public String  execute() {
		Map<String, Object> m= ActionContext.getContext().getSession();
		d=(String) m.get("username");
		return "hi";
	}
}
