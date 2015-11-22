package controller;

import com.opensymphony.xwork2.ActionSupport;
import model.*;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Hibernate;

import entities.Courses;
import entities.Teachers;
import entities.Users;
import funtionSupport.LoginCheck;
import funtionSupport.Session;
import entities.Subjects;

public class Course extends ActionSupport {
	String username = Session.getSessionUsername();
	
	public String getUsername() {
		return username;
	}
	
	public List<Subjects> getSubjects() {
		return DB_Subject.getAllSubjects();
	}
	
	public List<Courses> getCoursesBySubject(Integer v) {
		return DB_Course.getCoursesBySubject(v);
	}

	public String execute() {
		return "success";
	}
}

