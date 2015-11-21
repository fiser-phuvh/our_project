package controller;

import com.opensymphony.xwork2.ActionSupport;
import model.*;

import java.util.List;
import java.util.ArrayList;

import entities.Teachers;
import entities.Users;
import funtionSupport.LoginCheck;
import entities.Subjects;

public class Teacher extends ActionSupport {
	Users u;
	int idUser;
	boolean login;
	public Users getU() {
		return u;
	}

	public void setU(Users u) {
		this.u = u;
	}

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

	List<Teachers> teachers = DB_Teacher.getAllTeacher();
	List<Subjects> subjects = DB_Subject.getAllSubjects();
	
	
	public List<Teachers> getTeachers() {
		return teachers;
	}
	
	public List<Subjects> getSubjects() {
		return subjects;
	}
	
	public List<Teachers> getTeachersBySubject(Integer v) {
		
		
		List<Teachers> teachersBySubject = new ArrayList<Teachers>();
		
		for (int i=0; i<teachers.size(); i++) {
			if (teachers.get(i).getSubjects().getId() == v) {
				teachersBySubject.add(teachers.get(i));
			}
		}
		
		return teachersBySubject;
	}

	public String execute() {
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
