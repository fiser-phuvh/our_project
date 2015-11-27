package controller;
import com.opensymphony.xwork2.ActionSupport;

import entities.Teachers;
import entities.Users;
import funtionSupport.LoginCheck;
import funtionSupport.Session;
import model.DB_Teacher;
import model.DB_Users;
public class DeleteTeacherAct extends ActionSupport {
	
	String id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String execute(){
		if(LoginCheck.logedIn()==false){
			return ERROR;
		}else {
			int idU=(Integer)Session.getMap().get("id");
			Users u=DB_Users.getUserById(idU);
			if (u.getAdmin()==false) {
				return ERROR;
			}else {
				int rID=Integer.parseInt(id);
				Teachers t=DB_Teacher.getTeacherById(rID);
				DB_Teacher.deleteTeacher(t);
				System.out.println("DONE");
				return SUCCESS;
			}
		}
		
	}
}
