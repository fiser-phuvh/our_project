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
import funtionSupport.Session;
import entities.Subjects;
import entities.Courses;

public class TeacherInfo extends ActionSupport {
	String username = Session.getSessionUsername();
	int[] active = {0,0,1,0};
	int id;
	Teachers t;
	
	public String getUsername() {
		return username;
	}
	
	public String getActive(int i) {
		if (active[i] == 1) return "active";
		else return "";
	}

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
		t = DB_Teacher.getTeacherById(id);
		return "success";
	}
}
