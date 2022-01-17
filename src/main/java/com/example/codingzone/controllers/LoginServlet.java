package com.example.codingzone.controllers;

import com.example.codingzone.DAOFactory.DAOFactory;
import com.example.codingzone.interfaces.DAO;
import com.example.codingzone.models.Stuff;
import com.example.codingzone.models.Test;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;


@WebServlet(name = "LoginServlet", value = "/login-servlet")
public class LoginServlet extends HttpServlet {


    @Override
    public void init() {

        // initialize your servlet here

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        // get dao factory instance from dao factory
        DAO<Stuff> stuffDAO = DAOFactory.getStuffImpl();
        request.setAttribute("email", email);
        request.setAttribute("password", password);
        Stuff stuff = null;

        try {

            stuff = stuffDAO.login(email, password);
            if (stuff != null) {
                HttpSession session = request.getSession();
                session.setAttribute("stuff", stuff);

                response.sendRedirect("TestServlet");
            } else {
                this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }



    }
}
