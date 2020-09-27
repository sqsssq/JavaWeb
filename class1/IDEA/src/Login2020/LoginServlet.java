package Login2020;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/LoginServlet")
public class LoginServlet extends javax.servlet.http.HttpServlet {

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        sq.UserService us = new sq.UserService();
        String username = request.getParameter("un");
        String password = request.getParameter("ps");
        System.out.println(111);
        if (us.login(username, password))
        {
            PrintWriter writer = response.getWriter();
            response.sendRedirect("successful.html");
            writer.write("1");
        }
        else
        {
            PrintWriter writer = response.getWriter();
            writer.write("0");
        }
    }
}
