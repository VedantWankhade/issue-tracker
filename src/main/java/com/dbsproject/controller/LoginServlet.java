package com.dbsproject.controller;

import com.dbsproject.bean.User;
import com.dbsproject.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    public LoginServlet() {}

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        try {
            User u = UserDao.authenticate(username, password);
            if (u != null && u.getUsername() != null) {
//                System.out.println(u.getUsername());
//                System.out.println(u.isAdmin());
                HttpSession session = req.getSession();
                session.setAttribute("username", username);
                session.setAttribute("admin", u.isAdmin());
                req.getRequestDispatcher("PassRoleServlet").forward(req, res);
            }
        } catch(Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
