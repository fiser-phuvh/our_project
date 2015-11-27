package controller;
import com.opensymphony.xwork2.ActionSupport;

import entities.Subjects;
import entities.Teachers;
import model.DB_Subject;
import model.DB_Teacher;
public class UpdateTeacherAct extends ActionSupport {
	
	String id,name,email, info, subject; 
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String execute(){
		int ids=Integer.parseInt(subject);
		int rId=Integer.parseInt(id);
		Subjects s=DB_Subject.getSubjectById(ids);
		/*System.out.println(id);
		System.out.println(name);
		System.out.println(email);
		System.out.println(info);
		System.out.println(ids);*/
		Teachers t=DB_Teacher.getTeacherById(rId);
		t.setName(name);
		t.setEmail(email);
		t.setInfo(info);
		t.setSubjects(s);
		DB_Teacher.updateTeacher(t);
		System.out.println("Done");
		return SUCCESS;
	}
}
