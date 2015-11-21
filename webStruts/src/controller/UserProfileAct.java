package controller;
import com.opensymphony.xwork2.ActionSupport;
import model.*;
import entities.Users;

public class UserProfileAct extends ActionSupport {
	Users u;
	String id;
	public Users getU() {
		return u;
	}
	public void setU(Users u) {
		this.u = u;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String execute(){
		int UId=Integer.parseInt(id);
		u=DB_Users.getUserById(UId);
		System.out.println(u.getName());
		
		return "profile";
	}
}
