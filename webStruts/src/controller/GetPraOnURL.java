package controller;
import com.opensymphony.xwork2.ActionSupport;
public class GetPraOnURL extends ActionSupport {
	int id;
	String d;
	
	public String getD() {
		return d;
	}

	public void setD(String d) {
		this.d = d;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public String execute(){
		id=Integer.parseInt(d);
		return "test";
	}
}
