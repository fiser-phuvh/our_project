package model;

import org.hibernate.SessionFactory;
import HU.*;
import entities.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class DB_Course {

	static SessionFactory sf = H.getSessionFactory();

	public static List<Courses> getAllCourse() {
		List<Courses> res = null;
		sf.getCurrentSession().beginTransaction();
		res = sf.getCurrentSession().createCriteria(Courses.class).list();
		sf.getCurrentSession().close();
		return res;
	}

	public static Courses getCourseById(int id) {
		Courses res = null;
		sf.getCurrentSession().beginTransaction();
		res = (Courses) sf.getCurrentSession().get(Courses.class, id);
		sf.getCurrentSession().close();
		return res;
	}

	public static List<Courses> getPopCourse() {
		List<Courses> res = new ArrayList<>();
		List<PopCourse> popC = null;
		sf.getCurrentSession().beginTransaction();
		popC = sf.getCurrentSession().createCriteria(PopCourse.class).list();
		sf.getCurrentSession().close();
		for (int i = 0; i < popC.size(); i++) {
			Courses t = getCourseById(popC.get(i).getCourses().getId());
			res.add(t);
		}
		return res;
	}

	public static List<Courses> getCourseComing() {
		List<Courses> res = new ArrayList<>();
		List<ComingSoonCourse> cc = null;
		sf.getCurrentSession().beginTransaction();
		cc = sf.getCurrentSession().createCriteria(ComingSoonCourse.class).list();
		sf.getCurrentSession().close();
		for (int i = 0; i < cc.size(); i++) {
			Courses t = getCourseById(cc.get(i).getCourses().getId());
			res.add(t);
		}
		return res;
	}
	public static List<Courses> getSimilarCourse(Courses exist) {
		List<Courses> res = new ArrayList<>();
		List<Courses> allC = null;
		allC = getAllCourse();
		int count = 0;
		for (int i = 0; i < allC.size(); i++) {
			 if (count == 3) {
				 break;
			}
			 if ( allC.get(i).getId() != exist.getId()){
				 res.add(allC.get(i));
				 count++;
			}
		}
		return res;
	}
	public static Courses getCourseByTeacher(Teachers t) {
		Courses res = null;
		sf.getCurrentSession().beginTransaction();
		res = (Courses) sf.getCurrentSession().get(Courses.class, t);
		sf.getCurrentSession().close();
		return res;
	}


}