package controller;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import entities.Courses;
import entities.Subjects;
import entities.Teachers;
import entities.Users;
import funtionSupport.LoginCheck;
import model.DB_Course;
import model.DB_Subject;
import model.DB_Teacher;
import model.DB_Users;
public class CourseInfo extends ActionSupport {
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
	String id;
	Courses c;
	Teachers teacher;
	Subjects subject;
	List<Courses> similarCourse;
	
	public List<Courses> getSimilarCourse() {
		return similarCourse;
	}

	public void setSimilarCourse(List<Courses> similarCourse) {
		this.similarCourse = similarCourse;
	}

	public Subjects getSubject() {
		return subject;
	}

	public void setSubject(Subjects subject) {
		this.subject = subject;
	}

	public Teachers getTeacher() {
		return teacher;
	}

	public void setTeacher(Teachers teacher) {
		this.teacher = teacher;
	}

	public Courses getC() {
		return c;
	}

	public void setC(Courses c) {
		this.c = c;
	}

	public String getId() {
		return id;    
	}
	public void setId(String id) {
		this.id = id;
	}
	public String execute(){
		login=LoginCheck.logedIn();
		if(login==true){
			String uName=(String) LoginCheck.getSession().get("username");
			u=DB_Users.getUserByUsername(uName);
			idUser=u.getId();
			System.out.println(idUser);
		}
		c = DB_Course.getCourseById(Integer.parseInt(id));
		teacher = DB_Teacher.getTeacherById(c.getTeachers().getId());
		subject = DB_Subject.getSubjectById(teacher.getSubjects().getId());
		similarCourse = DB_Course.getSimilarCourse(c);
		return "success";
	}
}
