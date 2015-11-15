package controller;
import com.opensymphony.xwork2.ActionSupport;
public class SampleAction extends ActionSupport {
	String id;
	public String goToHello(){
		System.out.println(id);
		return "hello";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}
