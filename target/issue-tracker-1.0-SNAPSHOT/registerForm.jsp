<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="bootstrap-5.0.1-dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="main.css">
  <title>Registration Form</title>
</head>
<body>

<header>
  <jsp:include page="navbar.jsp"></jsp:include>
</header>

<main>
  <h2>Register User</h2>
  <form name="form" action="RegisterServlet" method="post">
    <table align="center">
      <tr>
        <td>User Name</td>
        <td><input type="text" name="username" /></td>
      </tr>
      <tr>
        <td>Email</td>
        <td><input type="text" name="email" /></td>
      </tr>
      <tr>
        <td>Password</td>
        <td><input type="password" name="password" /></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Register"></input><input
                type="reset" value="Reset"></input></td>
      </tr>
    </table>
  </form>
</main>
</body>
</html>
