package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import model.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import entities.Courses;
import entities.Users;
import funtionSupport.LoginCheck;
import funtionSupport.Session;
import model.*;

public class Home extends ActionSupport {
	List<Courses> popCourse;
	List<Courses> comingCourse;
	List<Courses> FRanCourse;
	String username = Session.getSessionUsername();
	int[] active = {1,0,0,0};
	
	public String getActive(int i) {
		if (active[i] == 1) return "active";
		else return "";
	}
	
	public String getUsername() {
		return username;
	}
	
	public List<Courses> getFRanCourse() {
		return FRanCourse;
	}

	public void setFRanCourse(List<Courses> fRanCourse) {
		FRanCourse = fRanCourse;
	}

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
		List<Courses> all=DB_Course.getAllCourse();
		int size=all.size();
		ArrayList<Integer> index=new ArrayList<>();
		Random r=new Random(System.nanoTime());
		for (int i = 0; i <4; i++) {
			int t= r.nextInt(size-1);
			size--;
			index.add(t);
		}
		FRanCourse=new ArrayList<>();
		for (int i = 0; i < index.size(); i++) {
			FRanCourse.add(all.get(index.get(i)));
		}
		System.out.println(FRanCourse.size());
		
		

		popCourse = DB_Course.getPopCourse();
		comingCourse = DB_Course.getCourseComing();
		//c = popCourse.get(0);

		return "homePage";
	}
}
