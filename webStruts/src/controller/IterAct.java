package controller;
import com.opensymphony.xwork2.ActionSupport;
import entities.*;
import model.*;
import java.util.List;
public class IterAct extends ActionSupport{
	List<Courses> c;
	public String execute(){
		c=DB_Course.getPopCourse();
		return "toPage";
	}
	public List<Courses> getC() {
		return c;
	}
	public void setC(List<Courses> c) {
		this.c = c;
	}
}
