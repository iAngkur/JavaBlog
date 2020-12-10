package com.iangkur.dao;

import com.iangkur.entities.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    // Insert user to DB
    public boolean saveUser(User user) {
        boolean f = false;
        try {
            // user -- > database
            String query = "INSERT INTO users(username, email, password, gender, about) VALUES(?, ?, ?, ?, ?)";

            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());

            pstmt.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
    // Select user by email and password
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        
        try{
            String query = "SELECT * FROM users WHERE email = ? and password = ?";
            
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            
            ResultSet rs = pstmt.executeQuery();
            
            if (rs.next()) {
               user = new User();
               
               String name = rs.getString("username"); // "username" table column name
               user.setUsername(name);
               
               user.setId(rs.getInt("id"));
               user.setEmail(rs.getString("email"));
               user.setPassword(rs.getString("password"));
               user.setGender(rs.getString("gender"));
               user.setAbout(rs.getString("about"));
               user.setProfile(rs.getString("profile"));
               user.setDateTime(rs.getTimestamp("rdate"));
                                             
            } 
        } catch (Exception e) {
            
        }    
        
        return user;
    }
}
