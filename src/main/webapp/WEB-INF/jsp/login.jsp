<%--
  Created by IntelliJ IDEA.
  User: mohammed
  Date: 1/14/22
  Time: 7:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login</h1>
<h1>
    ${email} <br>
    ${password} <br>
    ${empty email ? "Email is required" : ""} <br>
    ${empty password ? "Password is required" : ""}

</h1>
<form action="#" method="post">
    <table>
        <tr>
            <td>Username:</td>
            <td><input type="text" name="email"/></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type="password" name="password"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Login"/></td>
        </tr>
    </table>
</form>

</body>
</html>
