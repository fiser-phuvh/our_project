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

	int addId;
	String id;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	
	public List<Lessons> getLesson() {
		return lesson;
	}

	public void setLesson(ArrayList<Lessons> lesson) {
		this.lesson = lesson;
	}
	
	public void setUpLesson(int courseID){
		database = DB_Lessons.getAllLessons();
		for(int i = 0 ; i < database.size() ; i++){
			if(database.get(i).getCourses().getId() == courseID){
				lesson.add(database.get(i));
			}
		}
		if(id == null) id = "1";
		addId = Integer.parseInt(id);
		tempTitle = database.get(addId-1).getTitle();
		tempInfo = database.get(addId-1).getInfo();
		tempOrder = database.get(addId-1).getOrder();
	}
	
	public String execute(){
		setUpLesson(6);
		System.out.println(tempTitle + " ");
		return "success";
	}
}

