import java.io.IOException;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/LoginInServlet")
public class Servlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        // 判断用户密码，业务逻辑 --> 类封装
        String username = request.getParameter("un");
        String InitUsername = getServletConfig().getInitParameter("username");
        String password = request.getParameter("ps");
        String InitPassword = getServletConfig().getInitParameter("password");
        if (InitUsername.equals(username) && InitPassword.equals(password))
        {
            response.sendRedirect("successful.html");
        }
        else
        {
            // 转发
            request.setAttribute("message", "password or username Error");
            request.setAttribute("info", "<div class=\"alert alert-warning alert-dismissible fade show\" role=\"alert\">\n" +
                    "                <strong>ERROR</strong> 用户名或密码错误\n" +
                    "                <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n" +
                    "                    <span aria-hidden=\"true\">&times;</span>\n" +
                    "                </button>\n" +
                    "            </div>");
            request.getRequestDispatcher("login2.jsp").forward(request, response);
        }
    }
}
