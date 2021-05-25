<%--
  Created by IntelliJ IDEA.
  User: Vedant
  Date: 25-05-2021
  Time: 06:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.dbsproject.dao.IssueDao"%>
<jsp:useBean id="u" class="com.dbsproject.bean.Issue"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    IssueDao.delete(u);
    response.sendRedirect("app.jsp");
%>