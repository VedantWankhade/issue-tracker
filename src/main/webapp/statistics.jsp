<%--
  Created by IntelliJ IDEA.
  User: Vedant
  Date: 25-05-2021
  Time: 06:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.dbsproject.dao.IssueDao,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Statistics</title>
</head>
<body>
    <h1>STATS</h1>

    <p>Total number of issues</p>
    <%
        int count=IssueDao.getTotalNumIssues();
        request.setAttribute("count",count);
    %>
<p>${count}</p>
</body>
</html>
