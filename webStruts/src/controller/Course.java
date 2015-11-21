package controller;

import com.opensymphony.xwork2.ActionSupport;
import model.*;

import java.util.ArrayList;
import java.util.List;

import javax.websocket.Session;

import org.hibernate.Hibernate;

import entities.Courses;
import entities.Teachers;
import entities.Users;
import funtionSupport.LoginCheck;
import entities.Subjects;

public class Course extends ActionSupport {
	Users u;
	boolean login;
	int idUser;
	public boolean isLogin() {
		return login;
	}

	public void setLogin(boolean login) {
		this.login = login;
	}

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public Users getU() {
		return u;
	}

	public void setU(Users u) {
		this.u = u;
	}

	List<Courses> courses = DB_Course.getAllCourse();
	List<Subjects> subjects = DB_Subject.getAllSubjects();
	List<Teachers> teachers = DB_Teacher.getAllTeacher();
	
	public List<Subjects> getSubjects() {
		return subjects;
	}

	public List<Courses> getCourses() {
		return courses;
	}
	
	public List<Courses> getCoursesBySubject(Integer v) {
		List<Courses> coursesBySubject = new ArrayList<Courses>();
		List<Courses> coursesByTeacher = new ArrayList<Courses>();
		List<Teachers> teachersBySubject = getTeachersBySubject(v);
		
		for (int i=0; i<teachersBySubject.size(); i++) {
			coursesByTeacher = getCoursesByTeacher(teachersBySubject.get(i).getId());
			for (int j=0; j<coursesByTeacher.size(); j++) {
				coursesBySubject.add(coursesByTeacher.get(j));
			}
		}
		
		return coursesBySubject;
	}
	
	public List<Courses> getCoursesByTeacher(Integer v) {
		List<Courses> coursesByTeacher = new ArrayList<Courses>();
		
		for (int i=0; i<courses.size(); i++) {
			if (courses.get(i).getTeachers().getId() == v) {
				coursesByTeacher.add(courses.get(i));
			}
		}
		
		return coursesByTeacher;
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

