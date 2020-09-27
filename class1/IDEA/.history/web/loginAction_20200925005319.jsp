<!--
 * @Author: your name
 * @Date: 2020-09-23 10:15:13
 * @LastEditTime: 2020-09-25 00:53:19
 * @LastEditors: Please set LastEditors
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
        out.print('<div class='container' style='font-family: 华文行楷;'>
            <nav class='navbar navbar-expand-lg navbar-light bg-light'>
                <a class='navbar-brand' href='#'>石青
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                <a class='navbar-brand'
                    href='#'>180110910823&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                <a class='navbar-brand' href='#'>18软件工程2班</a>
    
            </nav>
            <form method='post' action='loginAction.jsp'>
    
                <!--    <form>-->
                <div class='card'
                    style='width: 35rem; position:absolute; left: 38%; float: left; top: 20%; background-color: white;'>
                    <div class='card-body' style='text-align: center;'>
    
                        <!-- <img src='...' class='card-img-top' alt='...'> -->
                        <svg width='7em' height='7em' viewBox='0 0 16 16' class='bi bi-check-circle-fill'
                            fill='#44B82C' xmlns='http://www.w3.org/2000/svg'>
                            <path fill-rule='evenodd'
                                d='M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z' />
                        </svg>
                        <br> <br>
                        <h3 class='card-title' style='color: black; font-size: 50px;'>登陆成功!</h3>
                        <hr>
                        <h3 class='card-title' style='color: black; font-size: 50px;'>Congratulations!</h3>
                        <input class='btn btn-primary' value='确定' id='btn1' type='submit'>
                        <!--            <input  class='btn btn-success' value='注册' id='btn2' type='submit'>-->
                        <!--            <button class='btn btn-block' id='btn'>登陆</button>-->
                    </div>
                </div>
            </form>
        </div>')
    }
%>
</body>
</html>
