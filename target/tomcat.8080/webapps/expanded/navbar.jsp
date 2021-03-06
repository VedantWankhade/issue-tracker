<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="bootstrap-5.0.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="navbar.css">
    <title>nav</title>
</head>

<%
    System.out.println(session.getAttribute("loggedIn"));
    request.setAttribute("loggedIn", session.getAttribute("loggedIn"));
    request.setAttribute("username", session.getAttribute("username"));
%>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <a class="navbar-brand" href="#">Issue Tracker</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="about.jsp">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="app.jsp">Application</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="statistics.jsp">Statistics</a>
            </li>
            <li class="nav-item" id="register-button">
                <a class="nav-link" href="registerForm.jsp">Register</a>
            </li>
            <li class="nav-item" id="log-in-button">
                <a class="nav-link" href="loginForm.jsp">LogIn</a>
            </li>
            <li class="nav-item" id="log-out-button" style="display: none">
                <form action="LogoutServlet" method="post">
                    <button style="background-color: inherit; border: none" class="nav-link" type="submit" id="logoutButton">LogOut</button>
                </form>
            </li>
            <li style="position: fixed;right: 25px;" class="nav-item" id="username">
                <h3>${username}</h3>
            </li>
        </ul>
    </div>
</nav>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script>
    if(${loggedIn}) {
        const loginButton = document.getElementById("log-in-button");
        const registerButton = document.getElementById("register-button");

        loginButton.style.display = "none";
        registerButton.style.display = "none";

        const logoutButton = document.getElementById("log-out-button");
        logoutButton.style.display = "block";
    }
</script>
</html>
