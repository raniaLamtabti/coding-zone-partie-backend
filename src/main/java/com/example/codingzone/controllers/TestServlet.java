package com.example.codingzone.controllers;

import com.example.codingzone.DAO.DAOFactory;
import com.example.codingzone.models.Test;
import com.example.codingzone.models.TestCategory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TestServlet", value = "/TestServlet")
public class TestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<TestCategory> testCategories = DAOFactory.getTestCategoryDAO().findAll();
        request.setAttribute("categories", testCategories);
        if (request.getSession().getAttribute("user") != null) {
            this.getServletContext().getRequestDispatcher("/addTest.jsp").forward(request, response);
        } else {
            response.sendRedirect("login");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Test test = new Test();
        test.setName(request.getParameter("name"));
        test.setDescription(request.getParameter("description"));
        test.setCategory(DAOFactory.getTestCategoryDAO().find(Integer.parseInt(request.getParameter("category"))));
        System.out.println(test);
        DAOFactory.getTestDAO().create(test);

        response.sendRedirect("/coding_zone_war/QuestionServlet");

    }
}
