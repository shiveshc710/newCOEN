<%--
  Created by IntelliJ IDEA.
  User: shive
  Date: 2023-05-22
  Time: 10:49 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/addcustomer.css">
    <title>Add a Customer</title>
</head>
<body>

<div id="logo-container">
    <img src="images/travel%20logo%202.jpg" alt="Logo" id="logo">
</div>

<h1>Travel Packages</h1>

<div id="container">
    <ul id="menu">
        <li><a href="homepage.jsp">Home</a></li>
        <li><a href="#">Packages</a>
            <ul>
                <li><a href="createpackage.jsp">Create a package</a></li>
                <li><a href="DisplayPackagesServlet">Display all packages</a></li>
                <li><a href="RemovePackageDisplayServlet">Remove a package</a></li>
                <li><a href="ModifyPackageDisplayServlet">Modify a package</a></li>
            </ul>
        </li>
        <li><a href="#">Bookings</a>
            <ul>
                <li><a href="BookPackageServlet">Book a Package</a></li>
                <li><a href="CustomerBookingsServlet">View your bookings</a></li>
                <li><a href="#">Modify your bookings</a></li>
            </ul>
        </li>
        <li><a href="#">Customer</a>
            <ul>
                <li><a href="addcustomer.jsp">Add a Customer</a></li>
            </ul>
        </li>
    </ul>
</div>

<div id="add-customer-container">
    <h2>Add Customer</h2>
    <form action="AddCustomerServlet" method="post">
        <div class="form-group">
            <label for="customerId">Customer ID:</label>
            <input type="text" id="customerId" name="customerId" required>
        </div>
        <div class="form-group">
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" required>
        </div>
        <div class="form-group">
            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" required>
        </div>
        <div class="form-group">
            <label for="phoneNumber">Phone Number:</label>
            <input type="text" id="phoneNumber" name="phoneNumber" required>
        </div>
        <div class="form-group">
            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required>
        </div>
        <div class="form-group">
            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
        </div>
        <div class="form-group">
            <label for="emailId">Email ID:</label>
            <input type="email" id="emailId" name="emailId" required>
        </div>
        <div class="form-group">
            <button type="submit">Add Customer</button>
        </div>
    </form>
</div>

</body>
</html>
