package controller;

import com.opensymphony.xwork2.ActionSupport;
import model.*;

import java.util.List;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import entities.Teachers;
import entities.Users;
import funtionSupport.LoginCheck;
import entities.Subjects;
import entities.Courses;

public class TeacherInfo extends ActionSupport {
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

	int id;
	Teachers t;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Teachers getT() {
		return t;
	}

	public String getFirstName() {
		String arr[] = t.getName().split(" ", 2);
		return arr[0];
	}

	public String getLastName() {
		String arr[] = t.getName().split(" ", 2);
		return arr[1];
	}

	public String getSubject() {
		List<Subjects> subjects = DB_Subject.getAllSubjects();
		int a = t.getSubjects().getId();

		for (int i = 0; i < subjects.size(); i++) {
			if (subjects.get(i).getId() == a) {
				return subjects.get(i).getName();
			}
		}

		return "error";
	}

	public List<Courses> getCoursesByTeacher() {
		List<Courses> courses = DB_Course.getAllCourse();
		List<Courses> coursesByTeacher = new ArrayList<Courses>();
		for (int i = 0; i < courses.size(); i++) {
			if (courses.get(i).getTeachers().getId() == this.id) {
				coursesByTeacher.add(courses.get(i));
			}
		}
		return coursesByTeacher;
	}

	public String execute() {
		login = LoginCheck.logedIn();
		if (login == true) {
			String uName = (String) LoginCheck.getSession().get("username");
			u = DB_Users.getUserByUsername(uName);
			idUser = u.getId();
			System.out.println(idUser);
		}
		t = DB_Teacher.getTeacherById(id);

		return "success";
	}
}
