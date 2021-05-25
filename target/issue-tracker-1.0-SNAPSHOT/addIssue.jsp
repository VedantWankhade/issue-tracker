<%--
  Created by IntelliJ IDEA.
  User: Vedant
  Date: 24-05-2021
  Time: 08:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.dbsproject.dao.IssueDao"%>
<jsp:useBean id="u" class="com.dbsproject.bean.Issue"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    int i = IssueDao.save(u);
    if(i>0){
        response.sendRedirect("app.jsp");
    }else{
        response.sendRedirect("addIssueError.jsp");
    }
%>