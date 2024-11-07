package com.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Database connection details
        String jdbcURL = "jdbc:mysql://localhost:3306/servlet"; // Replace with your DB URL
        String jdbcUsername = "root"; // Replace with your DB username
        String jdbcPassword = "root"; // Replace with your DB password

        // SQL query to validate login credentials
        String query = "SELECT * FROM builder WHERE email = ? AND password = ?";

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a database connection
            Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

            // Prepare the SQL statement
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, email);
            statement.setString(2, password);

            // Execute the query
            ResultSet resultSet = statement.executeQuery();

            // Check if the user exists
            if (resultSet.next()) {
                // Successful login
                HttpSession session = request.getSession();
                session.setAttribute("userEmail", email); // Store the user's email in session
                response.sendRedirect("Home.jsp"); // Redirect to home page
            } else {
                // Invalid credentials, show an error message
                request.setAttribute("errorMessage", "Invalid email or password. Please try again.");
                request.getRequestDispatcher("login.jsp").forward(request, response); // Stay on login page with error message
            }

            // Close the resources
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred during login. Please try again.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
