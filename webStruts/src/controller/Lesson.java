package controller;

import java.util.List;
import model.*;
import java.util.ArrayList;
import entities.*;
import com.opensymphony.xwork2.ActionSupport;

public class Lesson  extends ActionSupport{
	List<Lessons> lesson = new ArrayList<Lessons>();
	List<Lessons> database;
	String tempTitle;
	String tempInfo;
	Integer tempOrder;
	String tempSubjects;
	public String getTempSubjects() {
		return tempSubjects;
	}

	public void setTempSubjects(String tempSubjects) {
		this.tempSubjects = tempSubjects;
	}

	List<Courses> course_db;
	
	public Integer getTempOrder() {
		return tempOrder;
	}

	public void setTempOrder(Integer tempOrder) {
		this.tempOrder = tempOrder;
	}

	public String getTempInfo() {
		return tempInfo;
	}

	public void setTempInfo(String tempInfo) {
		this.tempInfo = tempInfo;
	}

	public String getTempTitle() {
		return tempTitle;
	}

	public void setTempTitle(String tempTitle) {
		this.tempTitle = tempTitle;
	}

	String courseID;
	
	public String getCourseID() {
		return courseID;
	}

	public void setCourseID(String courseID) {
		this.courseID = courseID;
	}

	String order;
	
	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}
	
	public List<Lessons> getLesson() {
		return lesson;
	}

	public void setLesson(ArrayList<Lessons> lesson) {
		this.lesson = lesson;
	}
	
	public void setUpLesson(int courseID){
		database = DB_Lessons.getAllLessons();
		course_db = DB_Course.getAllCourse();
		for(int i = 0 ; i < database.size() ; i++){
			if(database.get(i).getCourses().getId() == courseID){
				lesson.add(database.get(i));
			}
		}
		if(order == null) order = "1";
		tempSubjects = course_db.get(courseID-1).getTitle();
		tempTitle = lesson.get(Integer.parseInt(order)-1).getTitle();
		tempInfo = lesson.get(Integer.parseInt(order)-1).getInfo();
		tempOrder = lesson.get(Integer.parseInt(order)-1).getOrder();
	}
	
	public String execute(){	
		if(courseID == null) courseID ="1";
		setUpLesson(Integer.parseInt(courseID));
		System.out.println(order+"  "+tempSubjects);
		return "success";
	}
}

