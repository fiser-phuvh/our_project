package model;

import entities.*;
import org.hibernate.SessionFactory;
import HU.*;
import java.util.List;
public class FromDB {
	static SessionFactory sf = H.getSessionFactory();
	public static List<Users> getAllUsers(){
		List<Users> res=null;
		sf.getCurrentSession().beginTransaction();
		res=sf.getCurrentSession().createCriteria(Users.class).list();
		sf.getCurrentSession().close();
		return res;
	}
	
}
