<%--
  Created by IntelliJ IDEA.
  User: Vedant
  Date: 27-05-2021
  Time: 07:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="bootstrap-5.0.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="navbar.css">
    <title>nav</title>
</head>
<body>
<!-- Navbar -->
<%--<nav class="navbar navbar-expand-lg navbar-light bg-white">--%>
<%--    <div class="container-fluid">--%>
<%--        <button--%>
<%--                class="navbar-toggler"--%>
<%--                type="button"--%>
<%--                data-mdb-toggle="collapse"--%>
<%--                data-mdb-target="#navbarExample01"--%>
<%--                aria-controls="navbarExample01"--%>
<%--                aria-expanded="false"--%>
<%--                aria-label="Toggle navigation"--%>
<%--        >--%>
<%--            <i class="fas fa-bars"></i>--%>
<%--        </button>--%>
<%--        <div class="collapse navbar-collapse" id="navbarExample01">--%>
<%--            <ul class="navbar-nav me-auto mb-2 mb-lg-0">--%>
<%--                <li class="nav-item active">--%>
<%--                    <a class="nav-link" aria-current="page" href="index.jsp">Home</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="about.jsp">About</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="app.jsp">Application</a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>

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
        </ul>
    </div>
</nav>

<!--Navbar-->
<%--<nav class="navbar navbar-light light-blue lighten-4">--%>

<%--    <!-- Navbar brand -->--%>
<%--    <a class="navbar-brand" href="#">Navbar</a>--%>

<%--    <!-- Collapse button -->--%>
<%--    <button class="navbar-toggler toggler-example" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1"--%>
<%--            aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"><span class="dark-blue-text"><i--%>
<%--            class="fas fa-bars fa-1x"></i></span></button>--%>

<%--    <!-- Collapsible content -->--%>
<%--    <div class="collapse navbar-collapse" id="navbarSupportedContent1">--%>

<%--        <!-- Links -->--%>
<%--        <ul class="navbar-nav mr-auto">--%>
<%--            <li class="nav-item active">--%>
<%--                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link" href="#">Features</a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link" href="#">Pricing</a>--%>
<%--            </li>--%>
<%--        </ul>--%>
<%--        <!-- Links -->--%>

<%--    </div>--%>
<%--    <!-- Collapsible content -->--%>

<%--</nav>--%>
<!--/.Navbar-->
<!-- Navbar -->

<%--<nav class="navbar navbar-expand-lg navbar-light bg-light">--%>
<%--    <a class="navbar-brand" href="#">Navbar</a>--%>
<%--    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--        <span class="navbar-toggler-icon"></span>--%>
<%--    </button>--%>

<%--    <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
<%--        <ul class="navbar-nav mr-auto">--%>
<%--            <li class="nav-item active">--%>
<%--                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link" href="#">Link</a>--%>
<%--            </li>--%>
<%--            <li class="nav-item dropdown">--%>
<%--                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
<%--                    Dropdown--%>
<%--                </a>--%>
<%--                <div class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--                    <a class="dropdown-item" href="#">Action</a>--%>
<%--                    <a class="dropdown-item" href="#">Another action</a>--%>
<%--                    <div class="dropdown-divider"></div>--%>
<%--                    <a class="dropdown-item" href="#">Something else here</a>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link disabled" href="#">Disabled</a>--%>
<%--            </li>--%>
<%--        </ul>--%>
<%--        <form class="form-inline my-2 my-lg-0">--%>
<%--            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">--%>
<%--            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</nav>--%>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script></script>
</html>
