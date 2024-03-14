/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import javax.persistence.*;

/**
 *
 * @author Kelly
 */
@Entity
public class Users {
   @Id
    private int Id;
    private String Names;
    private String Password;
    private String Email;
    private String Sex;
    private String Country;

    public Users() {
    }

    public Users(int Id) {
        this.Id = Id;
    }
    

    public Users(String Names, String Password, String Email, String Sex, String Country) {
        this.Names = Names;
        this.Password = Password;
        this.Email = Email;
        this.Sex = Sex;
        this.Country = Country;
    }

    

  
    public Users(int Id, String Names, String Password, String Email, String Sex, String Country) {
        this.Id = Id;
        this.Names = Names;
        this.Password = Password;
        this.Email = Email;
        this.Sex = Sex;
        this.Country = Country;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getNames() {
        return Names;
    }

    public void setNames(String Names) {
        this.Names = Names;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getSex() {
        return Sex;
    }

    public void setSex(String Sex) {
        this.Sex = Sex;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String Country) {
        this.Country = Country;
    }

    
    
    
}
