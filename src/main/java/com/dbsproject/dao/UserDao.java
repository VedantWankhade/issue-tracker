package com.dbsproject.dao;

import com.dbsproject.bean.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
    public static Connection getConnection(){
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/issueTracker","root","froozer");
        }catch(Exception e){System.out.println(e);}
        return con;
    }

    public static boolean register(User u){
        boolean status = false;
        try{
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "insert into users (username, email, password) values(?,?,?)");
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getPassword());
            status = ps.executeUpdate() == 1;
        }catch(Exception e){System.out.println(e);}
        return status;
    }

    public static User authenticate(String username, String password) {

        try{
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "select * from users where username=?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            User u = new User();
            while (rs.next()) {
                if (rs.getString("password").equals(password)) {
                    u.setUsername(rs.getString("username"));
                    u.setAdmin(rs.getBoolean("admin"));
                }
            }
            return u;
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return null;
    }
}
