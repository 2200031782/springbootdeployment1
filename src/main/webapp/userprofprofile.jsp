<%@page import="com.klef.jfsd.sdpproject.model.Professional"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Profile</title>
   <style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://img.freepik.com/premium-photo/3d-abstract-background_493604-1338.jpg?semt=ais_hybrid') no-repeat center center fixed;
        background-size: cover;
        margin: 0;
        padding-top: 20px;
        overflow-y: auto;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    
    /* Center the image */
    .profile-container img {
        width: 25%; /* Slight increase for minimal enlargement */
        display: block;
        margin: 0 auto 20px auto; /* Center horizontally and add bottom space */
        border-radius: 8px;
    }

    h2 {
        color: #333;
        text-align: center;
        font-size: 24px;
        margin-top: 0;
    }

    .profile-container {
        width: 100%;
        max-width: 500px;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.5);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        border-radius: 8px;
        text-align: left;
         margin-top: 80px;
    }
    

    p {
        font-size: 16px;
        margin: 10px 0;
    }

    .profile-container b {
        font-weight: bold;
    }

    .hire-button {
        display: block;
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #4070f4;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        border: none;
         margin: 0 auto;
    }

    .hire-button:hover {
        background-color: #3056c6;
    }
   
}
    
</style>
   
</head>
<body>

    <%@include file="usernavbar.jsp" %>

    <div class="profile-container">
        <h2><u>Professional Profile</u></h2>
        <img src="displayprofresume?id=${prof.id}" width="25%" alt="${prof.name} Image"/>
        <p><b>ID:</b> <c:out value="${prof.id}"/></p>
        <p><b>Name:</b> <c:out value="${prof.name}"/></p>
        <p><b>SKILLS:</b> <c:out value="${prof.skills}"/></p>
        <p><b>Gender:</b> <c:out value="${prof.gender}"/></p>
        <p><b>Salary:</b> <c:out value="${prof.salary}"/></p>
        <p><b>Location:</b> <c:out value="${prof.location}"/></p>
        <p><b>Email:</b> <c:out value="${prof.email}"/></p>
        <p><b>Contact:</b> <c:out value="${prof.contact}"/></p>
        <form action="proftimeselect" method="post">
        <input type="hidden" name="professionalId" value="john-doe-id">
         <a href="proftimeselect" class="nav_link"></a>
        <button  type="submit" class="hire-button">Hire</button>
    </form>
    </div>
</body>
</html>
