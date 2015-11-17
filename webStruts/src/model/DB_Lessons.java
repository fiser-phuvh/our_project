package model;

import java.util.List;

import org.hibernate.SessionFactory;

import HU.*;
import entities.Lessons;

public class DB_Lessons {
	static SessionFactory sf = H.getSessionFactory();

	public static List<Lessons> getAllLessons() {
		List<Lessons> res 	= null;
		sf.getCurrentSession().beginTransaction();
		res = sf.getCurrentSession().createCriteria(Lessons.class).list();
		sf.getCurrentSession().close();
		return res;
	}

	public static Lessons getLessonById(int id) {
		Lessons res = null;
		sf.getCurrentSession().beginTransaction();
		res = (Lessons) sf.getCurrentSession().get(Lessons.class, id);
		sf.getCurrentSession().close();
		return res;

	}
}
