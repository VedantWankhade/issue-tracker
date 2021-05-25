<%--
  Created by IntelliJ IDEA.
  User: Vedant
  Date: 24-05-2021
  Time: 10:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Issue</title>
</head>
<body>

<%@page import="com.dbsproject.dao.IssueDao,com.dbsproject.bean.Issue"%>

<%
    String id=request.getParameter("id");
    Issue i = IssueDao.getRecordById(Integer.parseInt(id));
//    System.out.println(id);
%>

<h1>Edit Issue</h1>
<form action="editIssue.jsp" method="post">
    <input type="hidden" name="id" id="id" value="<%= i.getId() %>">
    <label for="title">
        Issue Title
        <input type="text" id="title" name="title" value="<%= i.getTitle() %>">
    </label>
    <label for="description">
        Issue Description
        <textarea name="description" id="description" cols="30" rows="5" value="<%= i.getDescription() %>"></textarea>
    </label>
    <label for="status">
        Issue Status
        <input type="text" id="status" name="status" value="<%= i.getStatus() %>">
    </label>
    <label for="owner">
        Issue Owner
        <input type="text" id="owner" name="owner" value="<%= i.getOwner() %>">
    </label>
    <label for="assigned">
        Issue Assigned To
        <input type="text" id="assigned" name="assigned" value="<%= i.getAssignedTo() %>">
    </label>
    <button type="submit">Submit</button>
</form>
</body>
</html>
