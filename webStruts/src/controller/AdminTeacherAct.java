package controller;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import entities.Subjects;
import entities.Teachers;
import entities.Users;
import funtionSupport.*;
import model.*;
public class AdminTeacherAct extends ActionSupport {
	List<Teachers> allTeachers;
	List<Subjects> allSubjects;
	public List<Subjects> getAllSubjects() {
		return allSubjects;
	}
	public void setAllSubjects(List<Subjects> allSubjects) {
		this.allSubjects = allSubjects;
	}
	public int[] getActive() {
		return active;
	}
	public void setActive(int[] active) {
		this.active = active;
	}
	int[] active = {0,0,0,0,1};
	Users u;
	String username;
	public String getActive(int i) {
		if (active[i] == 1) return "active";
		else return "";
	}
	public List<Teachers> getAllTeachers() {
		return allTeachers;
	}
	public void setAllTeachers(List<Teachers> allTeachers) {
		this.allTeachers = allTeachers;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Users getU() {
		return u;
	}
	public void setU(Users u) {
		this.u = u;
	}
	public String execute(){
		
		if(LoginCheck.logedIn()){
			int id=Session.getSessionId();
			u=DB_Users.getUserById(id);
			if(u.getAdmin()==true){
				username=u.getUsername();
				allTeachers=DB_Teacher.getAllTeacher();
				System.out.println(allTeachers.size());
				for (int i = 0; i < allTeachers.size(); i++) {
					Subjects s=DB_Subject.getSubjectById(allTeachers.get(i).getSubjects().getId());
					allTeachers.get(i).setSubjects(s);
				}
				allSubjects=DB_Subject.getAllSubjects();
				return SUCCESS;
			}else {
				return ERROR;
			}
		}
		else {
			
			
			return ERROR;
		}
		
	}
}
