package com.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String password = request.getParameter("password");

        // Database connection details
        String jdbcURL = "jdbc:mysql://localhost:3306/servlet"; // replace with your DB URL
        String jdbcUsername = "root"; // replace with your DB username
        String jdbcPassword = "root"; // replace with your DB password

        // SQL insert query
        String insertSQL = "INSERT INTO builder (name, email, mobile, password) VALUES (?, ?, ?, ?)";

        try {
            // Load JDBC driver (if needed)
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

            // Prepare statement
            PreparedStatement statement = connection.prepareStatement(insertSQL);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, mobile);
            statement.setString(4, password);

            // Execute update (this assumes the insert will always succeed if no exception is thrown)
            int rowsAffected = statement.executeUpdate();

            if (rowsAffected > 0) {
                // Set a success message if rows are affected
                request.setAttribute("message", "Registration Successful! You can now log in.");
                request.getRequestDispatcher("registration-success.jsp").forward(request, response);
            } else {
                // Set a failure message if no rows are affected
                request.setAttribute("message", "Registration Failed. Please try again.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }

            // Close the resources
            statement.close();
            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
            // Set failure message if an exception occurs
            request.setAttribute("message", "Registration Failed. Please try again.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}

