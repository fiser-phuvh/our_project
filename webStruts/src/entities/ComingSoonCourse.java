package entities;
// Generated Nov 23, 2015 7:01:02 PM by Hibernate Tools 4.3.1



/**
 * ComingSoonCourse generated by hbm2java
 */
public class ComingSoonCourse  implements java.io.Serializable {


     private Integer id;
     private Courses courses;

    public ComingSoonCourse() {
    }

    public ComingSoonCourse(Courses courses) {
       this.courses = courses;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Courses getCourses() {
        return this.courses;
    }
    
    public void setCourses(Courses courses) {
        this.courses = courses;
    }




}


