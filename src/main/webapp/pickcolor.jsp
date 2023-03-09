<%--
  Created by IntelliJ IDEA.
  User: johnnywells
  Date: 3/9/23
  Time: 9:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick a Color</title>
</head>
<body>
<h1>Pick a Color</h1>
<form action="/viewcolor" method="POST">
  <label for="color-input">Enter your favorite color:</label>
  <input type="text" id="color-input" name="color">
  <button type="submit">Submit</button>
</form>
</body>
</html>
