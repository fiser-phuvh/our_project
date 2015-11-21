package model;

public class User {
	int id;
	String name;
	String pass;
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public boolean equals(User o){
		return (id==o.id&&(pass.equals(o.pass)));
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String  toString() {
		return id+" "+name;
	}
}
