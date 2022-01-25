<%@ page import="java.util.List" %>
<%@ page import="com.example.codingzone.models.TestCategory" %>
<html>

<head>
    <title>Add Test</title>
    <link rel="stylesheet" href="resources/css/style.css">
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

                        <a href="dashboard.html" class="sidebar-link">
                            <img src="resources/icons/Home.svg" alt="">
                            <span class="sidebar-link-text">Home</span>
                        </a>
                    </li>
                    <li>
                        <a href="getAllTests.html" class="sidebar-link">
                            <img src="resources/icons/Text.svg" alt="All Test">
                            <span class="sidebar-link-text">All Tests</span>
                        </a>
                    </li>
                    </li>
                    <li>
                        <a href="addTest.jsp" class="sidebar-link active">
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
            <a href="index.html" class="sidebar-link">
                <img src="resources/icons/Out.svg" alt="Logout">
                <span>Logout</span>
            </a>
        </div>

    </aside>
    <main>
        <div class="container">
            <h1>Add test</h1>
            </h1>
            <p>Cras viverra facilisi consequat.</p>

            <div class="testInfoAdd">
                <form action="TestServlet" method="post">
                    <div class="form-group">
                        <label for="name">Name of the test</label>
                        <input type="text" class="form-control" name="name" id="name" placeholder="obligatory">
                    </div>
                    <div class="form-group">
                        <label for="test_category_id">Category of the test</label>

                        <select type="text" class="form-control" name="category" id="test_category_id">

                        <option disabled selected>Choose a category</option>
                            <%
                                List<TestCategory> categories = (List<TestCategory>) request.getAttribute("categories");
                                for (TestCategory category : categories) {
                            %>
                            <option value="<%= category.getId() %>"><%= category.getName() %></option>
                            <% } %>

                        </select>

                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea type="text" class="form-control textarea" name="description" id="description" placeholder="optional"></textarea>
                    </div>
                    <div class="form-group form-btn">
                        <button  class="addBtn">Add test</button>
                    </div>
                </form>
            </div>
        </div>
    </main>
</body>

</html>