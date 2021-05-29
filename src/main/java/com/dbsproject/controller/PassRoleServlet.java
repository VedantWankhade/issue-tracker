package com.dbsproject.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class PassRoleServlet extends HttpServlet {

    public PassRoleServlet() {}

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.setAttribute("loggedIn", true);
        req.getRequestDispatcher("index.jsp?loggedIn=true").forward(req, res);
    }
}
