package model;

import java.util.List;

import org.hibernate.SessionFactory;

import HU.H;
import entities.Users;

public class DB_Users {
	static SessionFactory sf = H.getSessionFactory();

	public static List<Users> getAllUsers() {
		List<Users> res = null;
		sf.getCurrentSession().beginTransaction();
		res = sf.getCurrentSession().createCriteria(Users.class).list();
		sf.getCurrentSession().close();
		return res;
	}

	public static Users getUserById(int id) {
		Users res = null;
		sf.getCurrentSession().beginTransaction();
		res = (Users) sf.getCurrentSession().get(Users.class, id);
		sf.getCurrentSession().close();
		return res;

	}

}
