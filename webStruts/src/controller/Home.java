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
import model.*;

public class Home extends ActionSupport {
	int idUser;
	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	boolean login;

	public boolean isLogin() {
		return login;
	}

	public void setLogin(boolean login) {
		this.login = login;
	}

	Users u;

	public Users getU() {
		return u;
	}

	public void setU(Users u) {
		this.u = u;
	}

	List<Courses> popCourse;
	List<Courses> comingCourse;
	List<Courses> FRanCourse;
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
		
		
		Map<String, Object> session = ActionContext.getContext().getSession();
		if (session.containsKey("login")) {
			login = true;
			String userName=(String)session.get("username");
			u=DB_Users.getUserByUsername(userName);
			
		} else {
			login = false;
			
		}
		popCourse = DB_Course.getPopCourse();
		comingCourse = DB_Course.getCourseComing();
		//c = popCourse.get(0);
		if(login==true){
			idUser=u.getId();
		}
		return "homePage";
	}
}
