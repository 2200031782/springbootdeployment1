package com.klef.jfsd.sdpproject.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/sendMessage")
public class ContactServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        // Database connection variables
        String dbURL = "jdbc:mysql://localhost:3306/your_database_name";  // Replace with your database URL
        String dbUser = "your_db_user";  // Replace with your database user
        String dbPassword = "your_db_password";  // Replace with your database password

        // SQL query to insert data into the database
        String insertQuery = "INSERT INTO contact_messages (name, email, message) VALUES (?, ?, ?)";

        // Process the form data and save it to the database
        response.setContentType("text/plain");
        if (name != null && email != null && message != null && !name.isEmpty() && !email.isEmpty() && !message.isEmpty()) {
            try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
                 PreparedStatement stmt = conn.prepareStatement(insertQuery)) {

                // Set parameters for the SQL statement
                stmt.setString(1, name);
                stmt.setString(2, email);
                stmt.setString(3, message);

                // Execute the SQL query
                int rowsAffected = stmt.executeUpdate();
                
                if (rowsAffected > 0) {
                    // Success: Response to the client
                    response.getWriter().write("Your message has been sent successfully!");
                } else {
                    // Failure to insert into the database
                    response.getWriter().write("Error: Unable to save your message.");
                }

            } catch (SQLException e) {
                e.printStackTrace();
                response.getWriter().write("Error: Unable to connect to the database.");
            }
        } else {
            response.getWriter().write("Error: All fields are required.");
        }
    }
}
