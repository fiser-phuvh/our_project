package controller;
import com.opensymphony.xwork2.ActionSupport;
import model.*;

import java.util.ArrayList;
import java.util.List;

import javax.websocket.Session;

import org.hibernate.Hibernate;

import entities.Courses;
import entities.Subjects;
import entities.Teachers;

public class CoursesPage extends ActionSupport {
	List<Courses> allCourses;
	List<Subjects> allSubjects;
	public List<Subjects> getAllSubjects() {
		return allSubjects;
	}

	public List<Courses> getAllCourses() {
		return allCourses;
	}

	public List<Courses> getCoursesBySubject(Integer v) {
		List<Courses> coursesBySubject = new ArrayList<Courses>();
		for (int i = 0; i < allCourses.size(); i++) {
			if (allCourses.get(i).getTeachers().getSubjects().getId() == v) {
				coursesBySubject.add(allCourses.get(i));
			}
		}
		return coursesBySubject;
	}
	public String execute() {
		allCourses = DB_Course.getAllCourse();
		allSubjects = DB_Subject.getAllSubjects();
		return "coursesPage";
	}
}

