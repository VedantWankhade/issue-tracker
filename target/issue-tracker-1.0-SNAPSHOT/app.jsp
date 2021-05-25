<%--
  Created by IntelliJ IDEA.
  User: Vedant
  Date: 24-05-2021
  Time: 07:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.dbsproject.dao.IssueDao,com.dbsproject.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <link rel="stylesheet" href="./app.css">
    <title>App</title>
</head>
<body>
    <h1>Application</h1>

    <div class="add-issue-container">
        <h2>Add Issue</h2>

        <form action="addIssue.jsp">
            <label for="title">
                Issue Title
                <input type="text" id="title" name="title" placeholder="Issue Title">
            </label>
            <label for="description">
                Issue Description
                <textarea name="description" id="description" cols="30" rows="5"></textarea>
            </label>
            <label for="status">
                Issue Status
                <input type="text" id="status" name="status" placeholder="Issue Status">
            </label>
            <label for="owner">
                Issue Owner
                <input type="text" id="owner" name="owner" placeholder="Issue Owner">
            </label>
            <label for="assigned">
                Issue Assigned To
                <input type="text" id="assigned" name="assigned" placeholder="Issue Assigned To">
            </label>
            <button type="submit">Submit</button>
        </form>

    </div>

    <div class="issue-list-container">
        <h2>Issue List</h2>
        <%
            List<Issue> list=IssueDao.getAllRecords();
            request.setAttribute("list",list);
        %>

        <table border="1" width="90%">
            <tr><th>Id</th><th>Title</th><th>Description</th><th>Status</th>
                <th>Owner</th><th>Assigned To</th><th>Edit</th><th>Delete</th></tr>
            <c:forEach items="${list}" var="i">
                <tr><td>${i.getId()}</td><td>${i.getTitle()}</td><td>${i.getDescription()}</td>
                    <td>${i.getStatus()}</td><td>${i.getOwner()}</td><td>${i.getAssignedTo()}</td>
                    <td><a href="issueForm.jsp?id=${i.getId()}">Edit</a></td>
                    <td><a href="deleteIssue.jsp?id=${i.getId()}">Delete</a></td></tr>
            </c:forEach>
        </table>
    </div>

    <div class="statistics-link-container">
        <a href="statistics.jsp">Statistics</a>
    </div>
</body>
</html>
