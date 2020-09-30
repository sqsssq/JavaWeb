<!--
 * @Author: your name
 * @Date: 2020-09-23 10:15:13
 * @LastEditTime: 2020-09-25 00:51:54
 * @LastEditors: your name
 * @Description: In User Settings Edit
 * @FilePath: \IDEA\web\loginAction.jsp
-->
<%--
  Created by IntelliJ IDEA.
  User: THINKPAD
  Date: 2020/9/23
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Sq</h1>
<hr>
<%
    // 判断用户密码，业务逻辑 --> 类封装
    sq.UserService us = new sq.UserService();
    String username = request.getParameter("un");
//    out.print(username);
    String password = request.getParameter("ps");

    if (us.login(username, password))
    {
        response.sendRedirect("successful.html");
    }
    else
    {
        if ("sq".equals(username))
        {
            out.print("用户名error");
        }
        if ("180110910823".equals(password))
        {
            out.print("password error");
        }
        out.print("用户名或密码错误, <a href='login.html'>重新登陆</a>");
    }
%>
</body>
</html>
