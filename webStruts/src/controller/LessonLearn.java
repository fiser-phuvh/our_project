package controller;

import java.util.List;
import model.*;
import java.util.ArrayList;
import entities.*;
import com.opensymphony.xwork2.ActionSupport;

public class LessonLearn  extends ActionSupport{
	List<Lessons> lesson = new ArrayList<Lessons>();
	List<Lessons> database;
	String temp;
	public String getTemp() {
		return temp;
	}

	public void setTemp(String temp) {
		this.temp = temp;
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
	
	public String execute(){
		database = DB_Lessons.getAllLessons();
		for(int i = 0 ; i < database.size() ; i++){
			if(database.get(i).getCourses().getId() == 1){
				lesson.add(database.get(i));
			}
		}
		if(id == null) id = "1";
		addId = Integer.parseInt(id);
		temp = lesson.get(addId-1).getTitle();
			
		System.out.println(temp + " " + id);
		return "changeLesson";
	}
}

