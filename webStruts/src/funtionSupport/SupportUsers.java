package funtionSupport;
import java.util.List;
import entities.Users;

public class SupportUsers {
	private static boolean Uequals(Users a, Users b) {
		return (a.getUsername().equals(b.getUsername()) && a.getPassword().equals(b.getPassword()));
	}
	
	public static Users contain(List<Users> l, Users u) {
		for (int i = 0; i < l.size(); i++) {
			if(Uequals(u, l.get(i))){
				return l.get(i);
			}
		}
		return null;
	}
}
