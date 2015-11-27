package controller;
import java.sql.Date;

import com.opensymphony.xwork2.ActionSupport;

import entities.Users;
import funtionSupport.ConvertDate;
import funtionSupport.LoginCheck;
import funtionSupport.Session;
import model.DB_Users;

public class SaveUserAction extends ActionSupport {
	String userName, passWord, name, email, birthDay, gender,info;
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String execute(){
		String uname=(String)Session.getMap().get("username");
		Users u=DB_Users.getUserByUsername(uname);
		if(birthDay!=null&&birthDay.equals("")==false){
			Date d=ConvertDate.convert(birthDay);
			u.setBirthday(d);
		}
		u.setUsername(userName);
		u.setPassword(passWord);
		u.setEmail(email);
		
		u.setInfo(info);
		u.setName(name);
		int UGender;
		if(gender.equals("0")){
			UGender=0;
		}else {
			UGender=1;
		}
		u.setGender(UGender);
		DB_Users.updateUser(u);
		return "done";
	}
}
