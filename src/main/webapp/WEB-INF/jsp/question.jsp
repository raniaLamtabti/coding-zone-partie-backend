<%--
  Created by IntelliJ IDEA.
  User: mohammed
  Date: 1/16/22
  Time: 10:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Hello Stuff</h1>
<!-- add question form -->
<form action="<%=request.getContextPath()%>/question/add" method="post">
    <label for="question">Question:</label>
    <input type="text" name="question" id="question" />
    <input type="submit" value="Add" />
</form>

</body>
</html>
