package controller;

import java.util.List;
import model.*;
import java.util.ArrayList;
import entities.*;
import funtionSupport.LoginCheck;

import com.opensymphony.xwork2.ActionSupport;

public class Lesson  extends ActionSupport{
	Users u;
	int idUser;
	boolean login;
	public Users getU() {
		return u;
	}

	public void setU(Users u) {
		this.u = u;
	}

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public boolean isLogin() {
		return login;
	}

	public void setLogin(boolean login) {
		this.login = login;
	}

	int courseID;
	int order;
	List<Lessons> lessons = new ArrayList<Lessons>();
	Lessons currentLesson;
	Courses currentCourse;
	
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
	
	public String execute(){
		login=LoginCheck.logedIn();
		if(login==true){
			String uName=(String) LoginCheck.getSession().get("username");
			u=DB_Users.getUserByUsername(uName);
			idUser=u.getId();
			System.out.println(idUser);
		}
		List<Lessons> allLessons = DB_Lessons.getAllLessons();

		for (int i=0; i<allLessons.size(); i++){
			if (allLessons.get(i).getCourses().getId() == courseID){
				lessons.add(allLessons.get(i));
				if (allLessons.get(i).getOrder() == order) {
					currentLesson = allLessons.get(i);
				}
			}
		}
		
		currentCourse = DB_Course.getCourseById(courseID);
		
		return "success";
	}
}
