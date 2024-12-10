<%@page import="com.klef.jfsd.sdpproject.model.Professional"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Professional prof = (Professional) session.getAttribute("prof");
if(prof==null)
{
    response.sendRedirect("profsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional profile</title>
     <style>
   body {
    font-family: Arial, sans-serif;
    background: url('https://img.freepik.com/premium-photo/3d-abstract-background_493604-1338.jpg?semt=ais_hybrid') no-repeat center center fixed; /* Background image */
    background-size: cover;
    margin: 0;
    padding-top: 80px; /* Adjusted space for navbar */
    overflow-y: auto; /* Enable vertical scrollbar */
    display: flex;
    justify-content: center;
    align-items: flex-start; /* Align the content from the top */
    height: 100vh; /* Full viewport height */
}
   

    .profile-container img {
        width: 40%; /* Slight increase for minimal enlargement */
        display: block;
        margin: 0 auto 20px auto; /* Center horizontally and add bottom space */
        border-radius: 8px;
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
        margin: 0 auto; /* Center profile card */
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

    <%@include file="profnavbar.jsp" %> <!-- Include professional navbar -->

    <!-- "My Profile" outside the card -->

    <div class="profile-container">
     <h2 align="center"><u>My Profile</u></h2>
     <img src="displayprofresume?id=${prof.id}" width="25%" alt="${prof.name} Image"/>
    <p><b>ID:</b> <%=prof.getId()%></p>
    <p><b>NAME:</b> <%=prof.getName()%></p>
    <p><b>GENDER:</b> <%=prof.getGender()%></p>
    <p><b>DATE OF BIRTH:</b> <%=prof.getDateofbirth()%></p>
     <p><b>SKILLS:</b> <%=prof.getSkills()%></p>
    <p><b>SALARY:</b> <%=prof.getSalary()%></p>
    <p><b>LOCATION:</b> <%=prof.getLocation()%></p>
    <p><b>EMAIL:</b> <%=prof.getEmail()%></p>
    <p><b>CONTACT:</b> <%=prof.getContact()%></p>
    <p><b>STATUS:</b> <%=prof.getStatus()%></p>
</div>
</body>
</html>
