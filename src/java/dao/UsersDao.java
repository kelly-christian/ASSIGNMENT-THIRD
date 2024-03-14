  /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.Users;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Kelly
 */
public class UsersDao {
    public static int createUsers(Users users){
        
        Session ss=HibernateUtil.getSessionFactory().openSession();
        Transaction tx=ss.beginTransaction();
        ss.save(users);
        tx.commit();
        ss.close();
        return 1;
        
        
    }
    public static List<Users> Userslist(){
      
        Session ss=HibernateUtil.getSessionFactory().openSession();
       Transaction tx=ss.beginTransaction();
       List<Users> userslist=ss.createQuery("from Users").list();
       tx.commit();
       ss.close();
        return userslist;

        
    }
    public static int deleteUsers(Users users){
        
        Session ss=HibernateUtil.getSessionFactory().openSession();
        Transaction tx=ss.beginTransaction();
        ss.delete(users);
        tx.commit();
        ss.close();
        return 1;
        
        
    }
    public static int updateUsers(Users users){
        
        Session ss=HibernateUtil.getSessionFactory().openSession();
        Transaction tx=ss.beginTransaction();
        ss.update(users);
        tx.commit();
        ss.close();
        return 1;
        
        
    }
}
