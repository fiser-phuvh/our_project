package model;

import org.hibernate.SessionFactory;
import HU.*;
import entities.*;

import java.util.ArrayList;
import java.util.List;

public class DB_Subject {

	static SessionFactory sf = H.getSessionFactory();

	public static List<Subjects> getAllSubject() {
		List<Subjects> res = null;
		sf.getCurrentSession().beginTransaction();
		res = sf.getCurrentSession().createCriteria(Subjects.class).list();
		sf.getCurrentSession().close();
		return res;
	}

	public static Subjects getSubjectById(int id) {
		Subjects res = null;
		sf.getCurrentSession().beginTransaction();
		res = (Subjects) sf.getCurrentSession().get(Subjects.class, id);
		sf.getCurrentSession().close();
		return res;
	}
}