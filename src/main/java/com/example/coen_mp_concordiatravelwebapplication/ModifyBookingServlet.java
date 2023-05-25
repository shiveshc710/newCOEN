package com.example.coen_mp_concordiatravelwebapplication;

import com.example.coen_mp_concordiatravelwebapplication.config.CONFIG;
import com.example.coen_mp_concordiatravelwebapplication.models.bookingModels.Bookings;
import com.example.coen_mp_concordiatravelwebapplication.models.bookingModels.Customer;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ModifyBookingServlet", value = "/ModifyBookingServlet")
public class ModifyBookingServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the list of customers from the database
        List<Customer> customers = new ArrayList<>();

        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
            Connection connection = DriverManager.getConnection(CONFIG.SQLURL, CONFIG.SQLUSER, CONFIG.SQLPASS);

            // Create a PreparedStatement to execute the query
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM customer");

            // Execute the query and obtain the ResultSet
            ResultSet resultSet = statement.executeQuery();

            // Process the result set and populate the list of customers
            while (resultSet.next()) {
                String customerId = resultSet.getString("customerId");
                String firstName = resultSet.getString("firstName");
                String lastName = resultSet.getString("lastName");
                String phoneNumber = resultSet.getString("phoneNumber");
                int age = resultSet.getInt("age");
                String gender = resultSet.getString("gender");
                String emailId = resultSet.getString("emailId");

                Customer customer = new Customer(customerId, firstName, lastName, phoneNumber, age, gender, emailId);
                customers.add(customer);
            }

            // Close the ResultSet and statement
            resultSet.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle any database errors
            // You can redirect to an error page or display an error message
        }

        // Set the list of customers as a request attribute
        request.setAttribute("customers", customers);

        // Forward the request to the JSP page
        request.getRequestDispatcher("modifybooking.jsp").forward(request, response);
    }
}