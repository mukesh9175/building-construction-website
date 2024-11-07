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

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data from the contact form
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        // Database connection details (not used in this case since we don't store data)
        String jdbcURL = "jdbc:mysql://localhost:3306/servlet"; // replace with your DB URL
        String jdbcUsername = "root"; // replace with your DB username
        String jdbcPassword = "root"; // replace with your DB password

        // SQL insert query for contact form (this can be omitted if you're not storing data)
        String insertSQL = "INSERT INTO Contact_us (name, email, subject, message) VALUES (?, ?, ?, ?)";

        try {
            // Load JDBC driver (if needed)
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection (this could be omitted if not storing in DB)
            Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

            // Prepare statement
            PreparedStatement statement = connection.prepareStatement(insertSQL);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, subject);
            statement.setString(4, message);

            // Execute update (we no longer care about rows affected)
            statement.executeUpdate();

            // Set success message without checking rowsAffected
            request.setAttribute("message", "Message Sent Successfully. We will get back to you soon.");

            // Close the resources
            statement.close();
            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
            // Set failure message if an exception occurs
            request.setAttribute("message", "An error occurred. Please try again.");
        }

        // Forward to the same contact.jsp page to display message
        request.getRequestDispatcher("contact.jsp").forward(request, response);
    }
}
