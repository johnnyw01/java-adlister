<%--
  Created by IntelliJ IDEA.
  User: johnnywells
  Date: 3/8/23
  Time: 4:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <title>Pizza Order Form</title>
</head>

<body>

<h1>Pizza Order Form</h1>

<form action="/pizza-order" method="post">
  <label for="crust">Crust Type:</label>
  <select id="crust" name="crust">
    <option value="thin">Thin Crust</option>
    <option value="thick">Thick Crust</option>
    <option value="stuffed">Stuffed Crust</option>
  </select>
  <br>
  <label for="sauce">Sauce Type:</label>
  <select id="sauce" name="sauce">
    <option value="tomato">Tomato Sauce</option>
    <option value="bbq">BBQ Sauce</option>
    <option value="garlic">Garlic Sauce</option>
  </select>
  <br>
  <label for="size">Size Type:</label>
  <select id="size" name="size">
    <option value="small">Small</option>
    <option value="medium">Medium</option>
    <option value="large">Large</option>
  </select>
  <br>
  <label>Toppings:</label>
  <br>
  <input type="checkbox" id="pepperoni" name="toppings" value="pepperoni">
  <label for="pepperoni">Pepperoni</label>
  <br>
  <input type="checkbox" id="mushrooms" name="toppings" value="mushrooms">
  <label for="mushrooms">Mushrooms</label>
  <br>
  <input type="checkbox" id="onions" name="toppings" value="onions">
  <label for="onions">Onions</label>
  <br>
  <label for="address">Delivery Address:</label>
  <input type="text" id="address" name="address">
  <br>
  <input type="submit" value="Submit">
</form>

</body>

</html>


