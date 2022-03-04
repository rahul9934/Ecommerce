/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ecommerce.dao;

import org.hibernate.SessionFactory;
import com.ecommerce.entities.User;

/**
 *
 * @author Rahul
 */
public class UserDao {
 private SessionFactory factory;

    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }
 public User getUserEmailPassword(String email,String password)
 {
   User user=null;
   
   
   return user;
}
    
    
}
