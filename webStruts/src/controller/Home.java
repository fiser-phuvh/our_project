package controller;

import com.opensymphony.xwork2.ActionSupport;
import model.*;

import java.util.ArrayList;
import java.util.List;

import entities.Courses;
import entities.Users;

public class Home extends ActionSupport {
	ArrayList<String> url=new ArrayList<>();
	
	List<Courses> popCourse;

	List<Courses> comingCourse;
	Courses c;
	public Courses getC() {
		return c;
	}

	public void setC(Courses c) {
		this.c = c;
	}

	public List<Courses> getPopCourse() {
		return popCourse;
	}

	public void setPopCourse(List<Courses> popCourse) {
		this.popCourse = popCourse;
	}

	public List<Courses> getComingCourse() {
		return comingCourse;
	}

	public void setComingCourse(List<Courses> comingCourse) {
		this.comingCourse = comingCourse;
	}

	public String execute() {
		popCourse=DB_Course.getPopCourse();
		comingCourse=DB_Course.getCourseComing();
		
		return "homePage";
	}
}
