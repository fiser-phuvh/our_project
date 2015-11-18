package entities;
// Generated Nov 18, 2015 9:24:44 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Users generated by hbm2java
 */
public class Users  implements java.io.Serializable {


     private Integer id;
     private String username;
     private String password;
     private String name;
     private String email;
     private Date birthday;
     private Integer gender;
     private String image;
     private Integer balance;
     private Set enrolledStudentses = new HashSet(0);

    public Users() {
    }

	
    public Users(String username, String password, String name) {
        this.username = username;
        this.password = password;
        this.name = name;
    }
    public Users(String username, String password, String name, String email, Date birthday, Integer gender, String image, Integer balance, Set enrolledStudentses) {
       this.username = username;
       this.password = password;
       this.name = name;
       this.email = email;
       this.birthday = birthday;
       this.gender = gender;
       this.image = image;
       this.balance = balance;
       this.enrolledStudentses = enrolledStudentses;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getName() {
        return this.name;
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
    public Date getBirthday() {
        return this.birthday;
    }
    
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
    public Integer getGender() {
        return this.gender;
    }
    
    public void setGender(Integer gender) {
        this.gender = gender;
    }
    public String getImage() {
        return this.image;
    }
    
    public void setImage(String image) {
        this.image = image;
    }
    public Integer getBalance() {
        return this.balance;
    }
    
    public void setBalance(Integer balance) {
        this.balance = balance;
    }
    public Set getEnrolledStudentses() {
        return this.enrolledStudentses;
    }
    
    public void setEnrolledStudentses(Set enrolledStudentses) {
        this.enrolledStudentses = enrolledStudentses;
    }




}


