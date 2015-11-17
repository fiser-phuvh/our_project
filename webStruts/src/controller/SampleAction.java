package controller;
import com.opensymphony.xwork2.ActionSupport;
public class SampleAction extends ActionSupport {
	String id;
	String abc;
	
	public String getAbc() {
		return abc;
	}

	public void setAbc(String abc) {
		this.abc = abc;
	}

	public String execute(){
		return "hello";
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
}
