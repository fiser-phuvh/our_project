package controller;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import entities.Courses;
import entities.Subjects;
import entities.Teachers;
import entities.Users;
import funtionSupport.LoginCheck;
import funtionSupport.Session;
import model.DB_Course;
import model.DB_Subject;
import model.DB_Teacher;
import model.DB_Users;

public class AdminCourse extends ActionSupport {
	String username;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	List<Courses> allCourse;
	
	public List<Courses> getAllCourse() {
		return allCourse;
	}

	public void setAllCourse(List<Courses> allCourse) {
		this.allCourse = allCourse;
	}

	public String execute() {

		if (LoginCheck.logedIn()) {
			int idU=(Integer)Session.getMap().get("id");
			Users u=DB_Users.getUserById(idU);
			if(u.getAdmin()==false){
				return ERROR;
			}else{
				allCourse=DB_Course.getAllCourse();
				for (int i = 0; i < allCourse.size(); i++) {
					int tId=allCourse.get(i).getTeachers().getId();
					Teachers t=DB_Teacher.getTeacherById(tId);
					allCourse.get(i).setTeachers(t);
				}
				username=(String)Session.getMap().get("username");
				return SUCCESS;
			}
			

		} else {

			return ERROR;
		}
	}
}
