<%@page import="com.klef.jfsd.sdpproject.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
User user = (User) session.getAttribute("user");
if(user == null) {
    response.sendRedirect("usersessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
     <%@include file="usernavbar.jsp" %> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/free-vector/paper-style-dynamic-lines-background_23-2149008629.jpg') no-repeat center center fixed; /* Background image */
            background-size: cover;
            margin: 0;
            padding-top: 20px; /* Space for navbar */
            overflow-y: auto; /* Enable vertical scrollbar */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
        }

        h3 {
            color: #333;
            text-align: center;
            margin-top: 50px; /* Ensure it appears at the top */
            font-size: 24px; /* Increase font size for visibility */
        }

        .profile-container {
            width: 100%;
            max-width: 500px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.5); /* Semi-transparent background */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Slight shadow for visibility */
            border-radius: 8px;
            text-align: left;
        }

        p {
            font-size: 16px;
            margin: 10px 0;
        }

        .profile-container b {
            font-weight: bold;
        }

    </style>
</head>
<body>

   

    <div class="profile-container">
        <h3>My Profile</h3>
        <p><b>ID:</b> <%= user.getId() %></p>
        <p><b>NAME:</b> <%= user.getName() %></p>
        <p><b>DATE OF BIRTH:</b> <%= user.getDateofbirth() %></p>
        <p><b>LOCATION:</b> <%= user.getLocation() %></p>
        <p><b>EMAIL:</b> <%= user.getEmail() %></p>
        <p><b>CONTACT:</b> <%= user.getContact() %></p>
    </div>

</body>
</html>
