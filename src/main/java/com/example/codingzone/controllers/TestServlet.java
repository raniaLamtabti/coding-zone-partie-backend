package com.example.codingzone.controllers;

import com.example.codingzone.DAOFactory.DAOFactory;
import com.example.codingzone.interfaces.DAO;
import com.example.codingzone.models.Category;
import com.example.codingzone.models.Stuff;
import com.example.codingzone.models.Test;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "TestServlet", value = "/TestServlet")
public class TestServlet extends HttpServlet {
    DAO<Test> testDAO = DAOFactory.getTestImpl();
    DAO<Category> categoryDAO = DAOFactory.getCategoryImpl();
    String categoryId;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        try {
            List<Category> categories = categoryDAO.findAll();
            request.setAttribute("categories", categories);
           // System.out.println(categories);

            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/test.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String stuffId = null;

        HttpSession session = request.getSession();
        Stuff stuff = (Stuff) session.getAttribute("stuff");
        stuffId = stuff.getId();
        Test test = new Test(name, stuffId, categoryId);

        System.out.println(stuffId);


    }
}
