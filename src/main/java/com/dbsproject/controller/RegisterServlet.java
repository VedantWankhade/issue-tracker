package com.dbsproject.controller;

import com.dbsproject.bean.User;
import com.dbsproject.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {

    public RegisterServlet() {}

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);

        boolean userRegistered = UserDao.register(user);

        if (userRegistered) {
            System.out.println("registered");
            req.getRequestDispatcher("LoginServlet").forward(req, res);
        } else {
            req.getRequestDispatcher("registerForm.jsp").forward(req, res);
        }
    }
}
