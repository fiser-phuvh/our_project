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

	public static Users getUserByUsername(String uName) {
		List<Users> all = getAllUsers();
		Users res = null;
		for (int i = 0; i < all.size(); i++) {
			if (all.get(i).getUsername().equals(uName)) {
				res = all.get(i);
			}
		}
		return res;
	}

	public static boolean updateUser(Users u) {
		boolean res = true;
		
		try {
			sf.getCurrentSession().beginTransaction();
			sf.getCurrentSession().saveOrUpdate(u);
			sf.getCurrentSession().getTransaction().commit();
		} catch (Exception e) {
			System.out.println(e);
			res = false;
			sf.getCurrentSession().close();
			return res;
		}
		sf.getCurrentSession().close();
		return res;
	}
	public static boolean saveUser(Users u){
		
		try {
			sf.getCurrentSession().beginTransaction();
			sf.getCurrentSession().save(u);
			sf.getCurrentSession().getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			sf.getCurrentSession().close();
			return false;
		}
		sf.getCurrentSession().close();
		return true;
	}
	public static void main(String[] args) {
		Users u=new Users("H.p", "1234", "Hồng Phú");
		u.setId(11);
		u.setBalance(1000000);
		
		boolean t=saveUser(u);
		System.out.println(t);
	}
}
