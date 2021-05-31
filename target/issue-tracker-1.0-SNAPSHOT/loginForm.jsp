<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="bootstrap-5.0.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="main.css">
    <title>Login Form</title>
</head>
<body>

<header>
    <jsp:include page="navbar.jsp"></jsp:include>
</header>

<main>
    <form name="form" action="./LoginServlet" method="post">

        <table align="center">
            <tr>
                <td>Username</td>
                <td><input type="text" name="username" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="text" name="password" /></td>
            </tr>

            <tr>
                <td></td>
                <td><input type="submit" value="Login"></input><input type="reset" value="Reset"></input></td>
            </tr>
        </table>
    </form>
    <p>If not registered, register <a href="registerForm.jsp">here</a></p>
</main>
</body>
</html>
