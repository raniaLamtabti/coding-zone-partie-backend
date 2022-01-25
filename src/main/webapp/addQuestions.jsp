<%@ page import="com.example.codingzone.models.Test" %>
<%@ page import="java.util.List" %>
<html>

<head>
    <title>Add Questions</title>
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
        <h1>Add questions</h1>
        </h1>
        <p>Cras viverra facilisi consequat.</p>

        <div class="testQuestAdd">
            <form action="QuestionServlet" method="post" >
                <div class="top">
                    <div class="right">
                        <div class="form-group">
                            <label for="content">Question</label>
                            <input type="text" class="form-control" name="content" id="content"
                                   placeholder="obligatory">
                        </div>
                        <div class="right-bottom">
                            <div class="form-group">
                                <label for="score">score</label>

                                <input type="number" min="0" class="form-control" name="score" id="score"
                                       placeholder="obligatory">
                            </div>
                            <div class="form-group">
                                <label for="time_to_live">time to live</label>
                                <input type="number" min="0" class="form-control" name="timeToLive" id="time_to_Live"
                                       placeholder="obligatory">
                            </div>
                        </div>
                    </div>
                    <div class="form-group left">
                        <label for="test">Description</label>
                        <select class="form-control" name="test" id="test">
                            <option selected disabled> select test</option>
                            <%
                                List<Test> tests = (List<Test>) request.getAttribute("tests");
                                for (Test test : tests) {
                            %>
                            <option value="<%= test.getId() %>"><%= test.getName() %></option>
                            <% } %>
                        </select>
                    </div>
                </div>
                <div class="bottom">
                    <h2>Options</h2>
                    <div class="options">
                        <div class="form-group">
                            <input type="radio" id="option1" name="is_correct" value="option1" class="optionBtn">
                            <label for="option1"><input type="text" name="answer1" placeholder="option 1" class="optionInput"></label>
                        </div>
                        <div class="form-group">
                            <input type="radio" id="option2" name="is_correct" value="option2" class="optionBtn">
                            <label for="option2"><input type="text" name="answer2" placeholder="option 2" class="optionInput"></label>
                        </div>
                        <div class="form-group">
                            <input type="radio" id="option3" name="is_correct" value="option3" class="optionBtn">
                            <label for="option3"><input type="text" name="answer3" placeholder="option 3" class="optionInput"></label>
                        </div>
                    </div>
                </div>
                <div class="form-group form-btn">
                    <button class="addBtn">Add question</button>
                </div>
            </form>
        </div>
    </div>
</main>
</body>

</html>