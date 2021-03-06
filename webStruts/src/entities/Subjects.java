package entities;
// Generated Nov 23, 2015 7:01:02 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Subjects generated by hbm2java
 */
public class Subjects  implements java.io.Serializable {


     private Integer id;
     private String name;
     private Set teacherses = new HashSet(0);

    public Subjects() {
    }

	
    public Subjects(String name) {
        this.name = name;
    }
    public Subjects(String name, Set teacherses) {
       this.name = name;
       this.teacherses = teacherses;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public Set getTeacherses() {
        return this.teacherses;
    }
    
    public void setTeacherses(Set teacherses) {
        this.teacherses = teacherses;
    }




}


