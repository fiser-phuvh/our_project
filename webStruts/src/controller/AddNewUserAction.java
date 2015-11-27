package controller;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import entities.Users;
import model.DB_Users;

public class AddNewUserAction extends ActionSupport {
	String message;
	String userName, email, password, password2;
	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	boolean ok;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isOk() {
		return ok;
	}

	public void setOk(boolean ok) {
		this.ok = ok;
	}

	public String execute() {
		if (userName.equals("")) {
			message = "Username is exist , or invalid !";
			ok=false;
			return "done";
		}
		if(password.equals("")){
			message = "Password is invalid!";
			ok=false;
			return "done";
		}
		List<Users> allU = DB_Users.getAllUsers();

		for (int i = 0; i < allU.size(); i++) {

			if (userName.equals(allU.get(i).getUsername())) {
				message = "Username is exist , or invalid !";
				ok = false;
				return "done";
			}
		}
		if (password.equals(password2) == false) {
			message = "The confirm password is not match !";
			return "done";
		}
		message = "Register successful, you can login now !";
		Users u = new Users(userName, password, "Default", email);
		DB_Users.saveUser(u);
		System.out.println(userName + " " + email + " " + password);
		ok = true;
		return "done";
	}
}
