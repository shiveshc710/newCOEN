<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="css/homepage.css">
  <title>Travel Packages</title>
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
      </ul>
    </li>
    <li><a href="#">Bookings</a>
      <ul>
        <li><a href="#">View your bookings</a></li>
        <li><a href="#">Modify your bookings</a></li>
      </ul>
    </li>
<%--    <li><a href="#">Clients</a>--%>
<%--      <ul>--%>
<%--        <li><a href="#">Lorem ipsum dolor</a></li>--%>
<%--        <li><a href="#">Maecenas lacinia sem</a></li>--%>
<%--        <li><a href="#">Suspendisse fringilla</a></li>--%>
<%--      </ul>--%>
<%--    </li>--%>
<%--    <li><a href="#">Contact Me</a>--%>
<%--      <ul>--%>
<%--        <li><a href="#">Lorem ipsum dolor</a></li>--%>
<%--        <li><a href="#">Maecenas dignissim fermentum luctus</a></li>--%>
<%--        <li><a href="#">Suspendisse fringilla</a></li>--%>
<%--      </ul>--%>
<%--    </li>--%>
<%--    <li><a href="#">Support</a></li>--%>
  </ul>
</div>

<div id="welcome">
  <p >Welcome to the Travel System. It is a web application for a travel booking system that allows customers to browse and book travel packages,
    including flights, hotels, and activities. In addition, customers create their own custom packages by selecting individual components.
  </p>
  </br>
  <p>Browse the Menu above for further options.</p>
</div>


</body>
</html>
