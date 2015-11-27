package controller;
import com.opensymphony.xwork2.ActionSupport;

import entities.Subjects;
import entities.Teachers;
import model.DB_Subject;
import model.DB_Teacher;
public class AddTeacherAction extends ActionSupport {
	String name, subjectId, email, info;
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
	public String getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}
	public String execute(){
		int idSubject= Integer.parseInt(subjectId);
		Subjects s=DB_Subject.getSubjectById(idSubject);
		Teachers t=new Teachers(s, name);
		t.setEmail(email);
		t.setInfo(info);
		t.setImage("becoming-teacher.jpg");
		DB_Teacher.addTeacher(t);
		System.out.println("Done");
		return SUCCESS;
	}
	
}
