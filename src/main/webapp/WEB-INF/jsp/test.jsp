<%@ page import="java.util.List" %>
<%@ page import="com.example.codingzone.models.Category" %>
<!--
Created by IntelliJ IDEA.
User: mohammed
Date: 1/17/22
Time: 12:25 AM
To change this template use File | Settings | File Templates.
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Title</title>
</head>
<body>
<h1>Hello World</h1>

<form action="#" method="post">
    <input type="text" name="name"/>
    <input list="categories" name="category"/>
    <datalist id="categories">
        <%
            List<Category> categories = (List<Category>) request.getAttribute("categories");
            for (Category category : categories) { %>
                     <option value="<%= category.getName() %>">
                             <% } %>

    </datalist>
    <input type="submit" value="Submit"/>
</form>

</body>
</html>
