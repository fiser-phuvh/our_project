package controller;

import java.util.List;
import model.*;
import java.util.ArrayList;
import entities.*;
import funtionSupport.LoginCheck;
import funtionSupport.Session;

import com.opensymphony.xwork2.ActionSupport;

public class Lesson  extends ActionSupport{
	int courseID;
	int order;
	List<Lessons> lessons = new ArrayList<Lessons>();
	Lessons currentLesson;
	Courses currentCourse;
	String username = Session.getSessionUsername();
	
	public String getUsername() {
		return username;
	}
	
	public int getCourseID() {
		return courseID;
	}

	public void setCourseID(int courseID) {
		this.courseID = courseID;
	}
	
	public int getOrder() {
		return order;
	}

	public void setOrder(int order) {
		this.order = order;
	}
	
	public Lessons getCurrentLesson() {
		return currentLesson;
	}
	
	public Courses getCurrentCourse() {
		return currentCourse;
	}

	public List<Lessons> getLessons() {
		return lessons;
	}
	
	public boolean isFree(Integer v) {
		if (v == 1 || currentCourse.getFee() == 0) {
			return true;
		}
		else {
			return false;
		}
	}

	public String execute(){
		currentCourse = DB_Course.getCourseById(courseID);
		
		if (!isFree(order)) return "error";
		
		List<Lessons> allLessons = DB_Lessons.getAllLessons();
		
		for (int i=0; i<allLessons.size(); i++){
			if (allLessons.get(i).getCourses().getId() == courseID){
				lessons.add(allLessons.get(i));
				if (allLessons.get(i).getOrder() == order) {
					currentLesson = allLessons.get(i);
				}
				
			}
		}
		
		return "success";
	}
}
