package com.example.codingzone;

import com.example.codingzone.config.Config;

import java.io.*;
import java.sql.Connection;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    Connection conn;
    private String message;

    @Override
    public void init() {
        conn = Config.getInstance().getConnection();
        if (conn == null) {
            message = "Connection is null";
        } else {
            message = "Connection is not null";
        }

    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    @Override
    public void destroy() {
    }
}