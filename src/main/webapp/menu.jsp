<%--
  Created by IntelliJ IDEA.
  User: shive
  Date: 2023-05-24
  Time: 10:01 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="css/homepage.css">
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
        <li><a href="ModifyBookingServlet">Modify your bookings</a></li>
        <li><a href="CancelBookingServlet">Cancel your bookings</a></li>
      </ul>
    </li>
    <li><a href="#">Customer</a>
      <ul>
        <li><a href="addcustomer.jsp">Add a Customer</a></li>
      </ul>
    </li>
    <li><a href="#">Search</a>
      <ul>
        <li><a href="searchlocation.jsp">Search package by location</a></li>
        <li><a href="searchprice.jsp">Search package by price</a></li>
      </ul>
    </li>
  </ul>
</div>

</body>
</html>
