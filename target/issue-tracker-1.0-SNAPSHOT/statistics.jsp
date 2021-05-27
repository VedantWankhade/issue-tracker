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

    <%
        int totalNumIssues=IssueDao.getTotalNumIssues();
        request.setAttribute("totalNumIssues",totalNumIssues);
        int fixedIssueNum = IssueDao.getNumFromStatus("Fixed");
        request.setAttribute("fixedIssueNum", fixedIssueNum);
        int assignedIssueNum = IssueDao.getNumFromStatus("Assigned");
        request.setAttribute("assignedIssueNum", assignedIssueNum);
        int closedIssueNum = IssueDao.getNumFromStatus("Closed");
        request.setAttribute("closedIssueNum", closedIssueNum);
        int personNum = IssueDao.getNumFromUser("owner", "Vedant");
    %>

    <p>Total number of issues</p>
    <p>${totalNumIssues}</p>

    <p>Fixed Issues</p>
    <p>${fixedIssueNum}</p>

    <p>Assigned Issue</p>
    <p>${assignedIssueNum}</p>

    <p>Closed Issue</p>
    <p>${closedIssueNum}</p>
</body>
</html>
