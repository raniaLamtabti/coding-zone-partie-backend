package com.example.codingzone.controllers;

import com.example.codingzone.DAO.DAOFactory;
import com.example.codingzone.models.Answer;
import com.example.codingzone.models.Question;
import com.example.codingzone.models.Test;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@WebServlet(name = "QuestionServlet", value = "/QuestionServlet")
public class QuestionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        if (request.getSession().getAttribute("user") != null) {
            List<Test> tests = DAOFactory.getTestDAO().findAll();
            request.setAttribute("tests", tests);
            request.getRequestDispatcher("/addQuestions.jsp").forward(request, response);
        } else {
            response.sendRedirect("/coding_zone_war/login");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Question question = new Question();
        question.setContent(request.getParameter("content"));
        question.setTimeToLive(Integer.parseInt(request.getParameter("timeToLive")));
        question.setScore(Integer.parseInt(request.getParameter("score")));
        question.setTest(DAOFactory.getTestDAO().find(Long.parseLong(request.getParameter("test"))));
        DAOFactory.getQuestionDAO().create(question);

        String is_correct = request.getParameter("is_correct");
        System.out.println(is_correct);
        Answer answer1 = new Answer();
        Answer answer2 = new Answer();
        Answer answer3 = new Answer();

        answer1.setContent(request.getParameter("answer1"));
        answer2.setContent(request.getParameter("answer2"));
        answer3.setContent(request.getParameter("answer3"));
        answer1.setQuestion(question);
        answer2.setQuestion(question);
        answer3.setQuestion(question);


        if (is_correct.equals("option1")) {

            answer1.setCorrect(true);
            answer2.setCorrect(false);
            answer3.setCorrect(false);
        } else if (is_correct.equals("option2")) {
            answer1.setCorrect(false);
            answer2.setCorrect(true);
            answer3.setCorrect(false);
        } else if (is_correct.equals("option3")) {
            answer1.setCorrect(false);
            answer2.setCorrect(false);
            answer3.setCorrect(true);
        }

        DAOFactory.getAnswerDAO().create(answer1);
        DAOFactory.getAnswerDAO().create(answer2);
        DAOFactory.getAnswerDAO().create(answer3);


    }
}
