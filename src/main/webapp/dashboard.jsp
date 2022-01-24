<%@ page import="com.example.codingzone.models.Test" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.codingzone.models.TestResult" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<aside>

    <div class="aside_container">


        <div class="logo">
            <a href="index.html">
                <img src="resources/images/Logo.png" alt="">
            </a>
        </div>
        <hr>

        <div class="menu">
            <ul>
                <li>

                    <a href="#" class="sidebar-link active">
                        <img src="resources/icons/Home.svg" alt="">
                        <span class="sidebar-link-text">Home</span>
                    </a></li>
                <li>
                    <a href="getAllTests.html" class="sidebar-link">
                        <img src="resources/icons/Text.svg" alt="All Test">
                        <span class="sidebar-link-text">All Tests</span>
                    </a></li>
                </li>
                <li>
                    <a href="#" class="sidebar-link">
                        <img src="resources/icons/Add.svg" alt="Add">
                        <span class="sidebar-link-text">Add Test</span>
                    </a>
                </li>
                <li>
                    <a href="#" class="sidebar-link">
                        <img src="resources/icons/Clock.svg" alt="Waiting">
                        <span class="sidebar-link-text">Waiting</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="logout">
        <a href="logout" class="sidebar-link">
            <img src="resources/icons/Out.svg" alt="Logout">
            <span>Logout</span>
        </a>
    </div>

</aside>
<main>
    <div class="container">
        <h1>Welcome, Mohammed</h1></h1>
        <p>Cras viverra facilisi consequat adipiscing. Aliquam, ut egestas adipiscing aliquet at neque imperdiet arcu.
            Sociis facilisis vitae integer fames netus hendrerit morbi.</p>

        <div class="cards">
            <div class="card">
                <h1>40</h1>
                <div class="text">
                    <h2>Waiting</h2>
                    <p>Fermentum pharetra velit tellus, lectus sed ullamcorper.</p>
                </div>
            </div>
            <div class="card">
                <h1>40</h1>
                <div class="text">
                    <h2>Waiting</h2>
                    <p>Fermentum pharetra velit tellus, lectus sed ullamcorper.</p>
                </div>
            </div>
            <div class="card">
                <h1>40</h1>
                <div class="text">
                    <h2>Waiting</h2>
                    <p>Fermentum pharetra velit tellus, lectus sed ullamcorper.</p>
                </div>
            </div>
        </div>
        <div class="tests_table">
            <h2>Last 10 users of your tests</h2>
            <div class="header">
                <h3>First name</h3>
                <h3>Last name</h3>
                <h3>Email</h3>
                <h3>Test category</h3>
                <h3>Score</h3>
                <h3></h3>
            </div>
            <div class="tests">
                <!--

                <div class="test">
                    <h3 class="col">Mohammed</h3>
                    <h3 class="col">Mohammed</h3>
                    <h3 class="col">melkabli05@gmail.com</h3>
                    <h3 class="col">Mohammed</h3>
                    <h3 class="col">16</h3>
                    <div class="col">
                        <img src="resources/icons/send-2.svg" alt="view">
                    </div>
                </div>
-->



                <%
                    List<TestResult> testResults = (List<TestResult>) request.getAttribute("test");
                    for (int i = 0; i < testResults.size() && i < 10; i++) {
                %>
                <div class="test">
                    <h3 class="col"><%= testResults.get(i).getTestStudent().getStudent().getFirstName() %></h3>
                    <h3 class="col"><%= testResults.get(i).getTestStudent().getStudent().getLastName() %></h3>
                    <h3 class="col"><%= testResults.get(i).getTestStudent().getStudent().getEmail() %></h3>
                    <h3 class="col"><%= testResults.get(i).getTest().getCategory().getName() %></h3>
                    <h3 class="col"><%= testResults.get(i).getScore() %></h3>
                    <div class="col">
                        <img src="resources/icons/send-2.svg" alt="view">
                    </div>
                </div>
                <% } %>
            </div>

        </div>
    </div>
</main>

<script src="resources/js/sidebar.js"></script>
</body>
</html>