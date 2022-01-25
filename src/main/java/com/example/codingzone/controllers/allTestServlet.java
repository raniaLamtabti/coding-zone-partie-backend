package com.example.codingzone.controllers;

import com.example.codingzone.DAO.DAOFactory;
import com.example.codingzone.models.TestResult;
import com.example.codingzone.models.TestStudent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "allTestServlet", value = "/allTestServlet")
public class allTestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<TestStudent> tests = DAOFactory.getTestStudentDAO().findAll();
        request.setAttribute("test", tests);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
