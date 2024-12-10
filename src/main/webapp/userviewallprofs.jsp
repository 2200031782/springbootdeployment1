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
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Professionals</title>
    <style>
        /* Fixed navbar styling */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            background-color: violet;
            padding: 10px 0;
            text-align: center;
        }

        /* Body styling with background image */
        body {
            background: url('https://t4.ftcdn.net/jpg/01/16/88/37/360_F_116883786_wuckft1sNw1ouQfJ6FuquZnxea3qBlxy.jpg') no-repeat center center fixed;
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            margin: 0;
            padding-top: 100px; /* Create space for the navbar */
            text-align: center;
        }

        /* Main content styling */
        .main-content {
            padding: 20px;
            margin: 0 auto;
            max-width: 1200px;
        }

        /* Card container */
        .card-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }

        /* Individual card styling */
        .card {
            background-color: rgba(255, 255, 255, 0.8);
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            width: 300px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        .card h4 {
            margin: 0 0 10px;
            font-size: 1.2em;
            color: #333;
        }

        .card p {
            margin: 5px 0;
            color: #555;
        }

        .card button {
            background-color: #4070f4;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
        }

        .card button:hover {
            background-color: #3056c6;
        }

        /* Search bar styling */
        #searchBar {
            width: 80%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
            box-sizing: border-box;
        }
    </style>

    <script>
        function filterProfessionals() {
            let input, filter, cards, card, p, i, txtValue;
            input = document.getElementById("searchBar");
            filter = input.value.toUpperCase();
            cards = document.getElementsByClassName("card");
            for (i = 0; i < cards.length; i++) {
                card = cards[i];
                p = card.getElementsByTagName("p")[0]; // First <p> is for Skills
                if (p) {
                    txtValue = p.textContent || p.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        card.style.display = "";
                    } else {
                        card.style.display = "none";
                    }
                }
            }
        }
    </script>
</head>
<body>
    <%@ include file="usernavbar.jsp" %> <!-- Include your navbar -->
    <h3 align="center">Search Professionals</h3> 

    <!-- Search bar -->
    <input type="text" id="searchBar" onkeyup="filterProfessionals()" placeholder="Search Professionals by Skills">

    <div class="main-content">
        <div class="card-container">
            <c:forEach items="${proflist}" var="prof">
                <div class="card">
                    <h4><c:out value="${prof.name}" /></h4>
                    <p><strong>Skills:</strong> <c:out value="${prof.skills}" /></p>
                    <p><strong>Fee:</strong> <c:out value="${prof.salary}" /></p>
                    <button onclick="window.location.href='userprofprofile?professionalId=${prof.id}';">Profile</button>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
