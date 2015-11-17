package controller;

import com.opensymphony.xwork2.ActionSupport;
import model.*;

import java.util.List;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import entities.Teachers;
import entities.Subjects;
import entities.Courses;

public class TeacherInfo extends ActionSupport {
	int id;
	Teachers t;
	String firstName;
	String lastName;
	String image;
	String email;
	String subject;
	List<Courses> courses = new ArrayList<Courses>();
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getFirstName() {
		return firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public String getImage() {
		return image;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getSubject() {
		return subject;
	}
	
	public List<Courses> getCourses() {
		return courses;
	}

	public List<Courses> getCoursesByTeacher() {
		List<Courses> coursesByTeacher = new ArrayList<Courses>();
		for (int i=0; i<courses.size(); i++) {
			if (courses.get(i).getTeachers().getId() == this.id) {
//				System.out.print(teachers.get(i).getSubjects().getId());
				coursesByTeacher.add(courses.get(i));
			}
		}
		return coursesByTeacher;
	}

	public String execute() {
		t = DB_Teacher.getTeacherById(id);
		firstName = t.getFirstName();
		lastName = t.getLastName();
		image = t.getImage();
		email = t.getEmail();
		subject = "English";
		courses = DB_Course.getAllCourse();
		
		return "success";
	}
}

