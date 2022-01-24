package com.example.codingzone.controllers;

import com.example.codingzone.DAO.DAOFactory;
import com.example.codingzone.models.TestCategory;
import com.example.codingzone.models.TestStudent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "DashboardServlet", value = "/DashboardServlet")
public class DashboardServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<TestStudent> tests = (ArrayList<TestStudent>) DAOFactory.getTestStudentDAO().findAll();

        if (request.getSession().getAttribute("user") != null) {
            request.setAttribute("tests", tests);
            request.getRequestDispatcher("dashboard.jsp").forward(request, response);
        } else {
            response.sendRedirect("/login");
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
