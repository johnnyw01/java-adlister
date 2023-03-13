<%--
  Created by IntelliJ IDEA.
  User: johnnywells
  Date: 3/13/23
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../partials/head.jsp">
    <jsp:param name="title" value="Welcome to my site!" />
</jsp:include>
<jsp:include page="/partials/navbar.jsp" />

<div class="container">
    <div class="text-center">
        <h1>Current ad listings</h1>
    </div>

    <c:forEach items="${ads}" var="ad">
        <div class="col-md-6 text-center mt-5">
            <h1><strong>${ad.title}</strong></h1>
            <p>Description: ${ad.description}</p>
            <h6>ID#: ${ad.id}</h6>
        </div>
    </c:forEach>

</div>

</body>
</html>