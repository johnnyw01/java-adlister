<%--
  Created by IntelliJ IDEA.
  User: johnnywells
  Date: 3/13/23
  Time: 9:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="Your Profile" />
  </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />

<div class="container">
  <h1>Hello, welcome back ${username}.</h1>
</div>

</body>
</html>
