package controller;
import com.opensymphony.xwork2.ActionSupport;
import model.*;
import entities.Users;
import funtionSupport.LoginCheck;

public class UserProfileAct extends ActionSupport {
	Users u;
	String id;
	int idUser;
	boolean login;
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public boolean isLogin() {
		return login;
	}
	public void setLogin(boolean login) {
		this.login = login;
	}
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
		login=LoginCheck.logedIn();
		if(login==true){
			String uName=(String) LoginCheck.getSession().get("username");
			u=DB_Users.getUserByUsername(uName);
			idUser=u.getId();
			System.out.println(idUser);
		}
		int UId=Integer.parseInt(id);
		u=DB_Users.getUserById(UId);
		System.out.println(u.getName());
		
		return "profile";
	}
}
