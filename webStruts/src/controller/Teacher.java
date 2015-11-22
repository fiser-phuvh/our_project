package controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import model.*;

import java.util.List;
import java.util.ArrayList;

import entities.Teachers;
import entities.Users;
import funtionSupport.LoginCheck;
import funtionSupport.Session;
import entities.Subjects;

public class Teacher extends ActionSupport {
	String username = Session.getSessionUsername();	
	
	public String getUsername() {
		return username;
	}
	
	public List<Subjects> getSubjects() {
		return DB_Subject.getAllSubjects();
	}
	
	public List<Teachers> getTeachersBySubject(Integer v) {
		List<Teachers> teachers = DB_Teacher.getAllTeacher();
		List<Teachers> teachersBySubject = new ArrayList<Teachers>();
		
		for (int i=0; i<teachers.size(); i++) {
			if (teachers.get(i).getSubjects().getId() == v) {
				teachersBySubject.add(teachers.get(i));
			}
		}
		
		return teachersBySubject;
	}

	public String execute() {
		return "success";
	}
}
