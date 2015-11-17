package entities;

import java.util.HashSet;
import java.util.Set;

public class Teachers  implements java.io.Serializable {
	private Integer id;
	private Subjects subjects;
	private String name;
	private String email;
	private String info;
	private String image;
	private Set courseses = new HashSet(0);

    public Teachers() {
    }
    
    public Teachers(Subjects subjects, String name) {
        this.subjects = subjects;
        this.name = name;
    }
    public Teachers(Subjects subjects, String name, String email, String info, String image, Set courseses) {
       this.subjects = subjects;
       this.name = name;
       this.email = email;
       this.info = info;
       this.image = image;
       this.courseses = courseses;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    public Subjects getSubjects() {
        return this.subjects;
    }
    
    public void setSubjects(Subjects subjects) {
        this.subjects = subjects;
    }
    
    public String getName() {
        return this.name;
    }
    
    public String getFirstName() {
    	String arr[] = this.name.split(" ", 2);
    	return arr[0]; 
    }
    
    public String getLastName() {
    	String arr[] = this.name.split(" ", 2);
    	return arr[1]; 
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getInfo() {
        return this.info;
    }
    
    public void setInfo(String info) {
        this.info = info;
    }
    
    public String getImage() {
        return this.image;
    }
    
    public void setImage(String image) {
        this.image = image;
    }
    
    public Set getCourseses() {
        return this.courseses;
    }
    
    public void setCourseses(Set courseses) {
        this.courseses = courseses;
    }
}


