<%--
  Created by IntelliJ IDEA.
  User: johnnywells
  Date: 3/9/23
  Time: 10:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guess the number</title>
</head>
<body>

<form method="post" action="/guess">
    <label for="guess">Guess a number between 1 and 3:</label>
    <input type="number" name="guess" id="guess" min="1" max="3" required>
    <button type="submit">Submit</button>
</form>

</body>
</html>
