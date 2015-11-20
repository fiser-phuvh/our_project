package controller;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import entities.Courses;
import entities.Subjects;
import entities.Teachers;
import model.DB_Course;
import model.DB_Subject;
import model.DB_Teacher;
public class CourseInfo extends ActionSupport {
	String id;
	Courses c;
	Teachers teacher;
	Subjects subject;
	List<Courses> similarCourse;
	
	public List<Courses> getSimilarCourse() {
		return similarCourse;
	}

	public void setSimilarCourse(List<Courses> similarCourse) {
		this.similarCourse = similarCourse;
	}

	public Subjects getSubject() {
		return subject;
	}

	public void setSubject(Subjects subject) {
		this.subject = subject;
	}

	public Teachers getTeacher() {
		return teacher;
	}

	public void setTeacher(Teachers teacher) {
		this.teacher = teacher;
	}

	public Courses getC() {
		return c;
	}

	public void setC(Courses c) {
		this.c = c;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String execute(){
		c = DB_Course.getCourseById(Integer.parseInt(id));
		teacher = DB_Teacher.getTeacherById(c.getTeachers().getId());
		subject = DB_Subject.getSubjectById(teacher.getSubjects().getId());
		similarCourse = DB_Course.getSimilarCourse(c);
		return "success";
	}
}
