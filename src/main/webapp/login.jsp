<%--
  Created by IntelliJ IDEA.
  User: johnnywells
  Date: 3/8/23
  Time: 3:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if (request.getMethod().equalsIgnoreCase("POST")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        request.setAttribute("username", username);
        request.getRequestDispatcher("/user-profile.jsp").forward(request, response);
        if (username.equals("admin") && password.equals("password")) {
            request.setAttribute("username", username);
            request.getRequestDispatcher("/profile.jsp").forward(request, response);
        }
    }
%>

<html>
<head>
    <title>Login</title>
</head>
<body>

<%@include file="partials/navbar.jsp" %>


<h1>User Login:</h1>
<form action="/login.jsp" method="post">
    <label for="username">Username</label>
    <input type="text" id="username"  name="username">

    <label for="password">Password</label>
    <input type="password" id="password" name="password">

    <button type="submit">Login</button>
</form>


</body>
</html>
