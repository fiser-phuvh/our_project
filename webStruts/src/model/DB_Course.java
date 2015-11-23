package model;

import org.hibernate.SessionFactory;
import HU.*;
import entities.*;
import funtionSupport.FormatString;

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
	public static List<Courses> getCoursesByTeacher(Integer v) {
		List<Courses> coursesByTeacher = new ArrayList<Courses>();
		List<Courses> courses = DB_Course.getAllCourse();
		for (int i=0; i<courses.size(); i++) {
			if (courses.get(i).getTeachers().getId() == v) {
				coursesByTeacher.add(courses.get(i));
			}
		}
		
		return coursesByTeacher;
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
	public static List<Courses> getSimilarCourse(Courses exist,int v) {
		List<Courses> res = new ArrayList<>();
		List<Courses> allC = null;
		allC = getCoursesBySubject(v);
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

	public static List<Courses> getCoursesBySubject(Integer v) {
		List<Courses> coursesBySubject = new ArrayList<Courses>();
		List<Courses> coursesByTeacher = new ArrayList<Courses>();
		List<Teachers> teachersBySubject = DB_Teacher.getTeachersBySubject(v);
		
		for (int i=0; i<teachersBySubject.size(); i++) {
			coursesByTeacher = getCoursesByTeacher(teachersBySubject.get(i).getId());
			for (int j=0; j<coursesByTeacher.size(); j++) {
				coursesBySubject.add(coursesByTeacher.get(j));
			}
		}
		
		return coursesBySubject;
	}
	
	public static List<Courses> getCoursesByQuery(String q,List<Courses> li){
		List<Courses> res = new ArrayList<Courses>();
		q = FormatString.format(q);
	
		for(int i = 0 ; i < li.size() ; i++){
			int t  = li.get(i).getTeachers().getId();
			String temp = DB_Teacher.getTeacherById(t).getName();
			if(FormatString.format(li.get(i).getTitle()).contains(q) || FormatString.format(temp).contains(q)   ){
				res.add(li.get(i));
			}
		}
		
		return res;
	}
	
	
	
	
	
}
