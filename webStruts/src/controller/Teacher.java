package controller;

import com.opensymphony.xwork2.ActionSupport;
import model.*;

import java.util.List;
import java.util.ArrayList;

import entities.Teachers;
import entities.Subjects;

public class Teacher extends ActionSupport {
	List<Teachers> teachers;
	List<Subjects> subjects;
	
	
	public List<Teachers> getTeachers() {
		return teachers;
	}
	
	public List<Subjects> getSubjects() {
		return subjects;
	}
	
	public List<Teachers> getTeachersBySubject(Integer v) {
		List<Teachers> teachersBySubject = new ArrayList<Teachers>();
		for (int i=0; i<teachers.size(); i++) {
			if (teachers.get(i).getSubjects().getId() == v) {
				System.out.print(teachers.get(i).getSubjects().getId());
				teachersBySubject.add(teachers.get(i));
			}
		}
		return teachersBySubject;
	}

	public String execute() {
		teachers = DB_Teacher.getAllTeacher();
		subjects = DB_Subject.getAllSubject();
		
		return "success";
	}
}
