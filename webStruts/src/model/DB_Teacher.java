package model;

import org.hibernate.SessionFactory;
import HU.*;
import entities.*;

import java.util.ArrayList;
import java.util.List;

public class DB_Teacher {

	static SessionFactory sf = H.getSessionFactory();

	public static List<Teachers> getAllTeacher() {
		List<Teachers> res = null;
		sf.getCurrentSession().beginTransaction();
		res = sf.getCurrentSession().createCriteria(Teachers.class).list();
		sf.getCurrentSession().close();
		return res;
	}

	public static Teachers getTeacherById(int id) {
		Teachers res = null;
		sf.getCurrentSession().beginTransaction();
		res = (Teachers) sf.getCurrentSession().get(Teachers.class, id);
		sf.getCurrentSession().close();
		return res;
	}
	public static List<Teachers> getTeachersBySubject(Integer v) {
		List<Teachers> teachersBySubject = new ArrayList<Teachers>();
		List<Teachers> teachers = getAllTeacher();
		for (int i=0; i<teachers.size(); i++) {
			if (teachers.get(i).getSubjects().getId() == v) {
				teachersBySubject.add(teachers.get(i));
			}
		}
		
		return teachersBySubject;
	}

}