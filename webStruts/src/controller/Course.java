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
	int subjectId;
	String query;
//	static int count;
	
	public String getQuery() {
		return query;
	}

	public void setQuery(String query) {
		this.query = query;
	}

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}

	public String getUsername() {
		return username;
	}
	
	public List<Subjects> getAllSubjects() {
		return DB_Subject.getAllSubjects();
	}
	
	public List<Subjects> getSubjects() {
		if (subjectId == 0) return DB_Subject.getAllSubjects();
		else {
			List<Subjects> s = new ArrayList<Subjects>();
			s.add(DB_Subject.getSubjectById(subjectId));
			return s;
		}
	}
	
	public String isSelected(Integer v) {
		if (v == subjectId) return "selected";
		return "";
	}
	
	public List<Courses> getCoursesByQuery(Integer v) { // v is the ID of subject
		return DB_Course.getCoursesByQuery(query, v);
	}
	
	public boolean isAnyCourse(Integer v) {
		if (getCoursesByQuery(v).size() != 0) return true;
		else {
//			count++;
			return false;
		}
	}
	
	public String execute() {
		return "success";
	}
}

