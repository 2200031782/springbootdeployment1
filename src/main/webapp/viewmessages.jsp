<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Messages</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 90%;
            margin: 30px auto;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }
        .message {
            border-bottom: 1px solid #ddd;
            padding: 15px 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .message:last-child {
            border-bottom: none;
        }
        .message-header {
            margin-bottom: 8px;
            font-size: 16px;
        }
        .message-details {
            font-size: 14px;
            color: #555;
        }
        .delete-button {
            cursor: pointer;
            padding: 8px 12px;
            background-color: #e74c3c;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .delete-button:hover {
            background-color: #c0392b;
            transform: scale(1.05);
        }
        .no-messages {
            text-align: center;
            font-size: 18px;
            color: #888;
            margin-top: 30px;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            color: #666;
        }
    </style>
    <script>
        function deleteMessage(id) {
            if (confirm("Are you sure you want to delete this message?")) {
                // Redirect to deleteMessage.jsp for deletion logic
                window.location.href = `deleteMessage.jsp?id=${id}`;
            }
        }
    </script>
</head>
<body>

<div class="container">
    <h1>Messages from Professionals</h1>

    <%
        String DB_URL = "jdbc:mysql://localhost:3306/jfsdexam";
        String DB_USER = "root";
        String DB_PASSWORD = "password"; // Replace with your actual DB password

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            stmt = conn.createStatement();
            rs = stmt.executeQuery("SELECT * FROM contact_messages");

            if (!rs.isBeforeFirst()) {
    %>
                <p class="no-messages">No messages to display</p>
    <%
            } else {
                while (rs.next()) {
                    String id = rs.getString("id");
                    String professionalId = rs.getString("professional_id");
                    String name = rs.getString("name");
                    String email = rs.getString("email");
                    String message = rs.getString("message");
    %>
    <div class="message">
        <div>
            <div class="message-header">
                <strong>Professional ID:</strong> <%= professionalId %> <br>
                <strong>Name:</strong> <%= name %> <br>
                <strong>Email:</strong> <%= email %>
            </div>
            <div class="message-details">
                <strong>Message:</strong> <%= message %>
            </div>
        </div>
        <div>
            <button class="delete-button" onclick="deleteMessage('<%= id %>')">Delete</button>
        </div>
    </div>
    <%
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
    %>
    <p style="color: red; text-align: center;">Error: Unable to fetch messages. Please try again later.</p>
    <%
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>

    <div class="footer">
        <p>End of Messages</p>
    </div>
</div>

</body>
</html>
