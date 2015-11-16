package controller;
import com.opensymphony.xwork2.ActionSupport;
public class TestTagInProperty extends ActionSupport {
	
	String url;
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String execute(){
		url="sayHi.action";
		return "go";
	}
}
