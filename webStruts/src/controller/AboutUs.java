package controller;

import com.opensymphony.xwork2.ActionSupport;

import entities.Users;
import funtionSupport.LoginCheck;
import model.*;

public class AboutUs extends ActionSupport{
	Users u;
	int idUser;
	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	boolean login;
	
	public Users getU() {
		return u;
	}

	public void setU(Users u) {
		this.u = u;
	}

	public boolean isLogin() {
		return login;
	}

	public void setLogin(boolean login) {
		this.login = login;
	}

	public String execute(){
		login=LoginCheck.logedIn();
		if(login==true){
			String uName=(String) LoginCheck.getSession().get("username");
			u=DB_Users.getUserByUsername(uName);
			idUser=u.getId();
			System.out.println(idUser);
		}
		return "success";
	}
}
