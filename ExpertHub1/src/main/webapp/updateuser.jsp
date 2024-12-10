<%@page import="com.klef.jfsd.sdpproject.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
User user = (User) session.getAttribute("user");
if (user == null) {
    response.sendRedirect("usersessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/free-vector/paper-style-dynamic-lines-background_23-2149008629.jpg') no-repeat center center fixed; /* Background image */
            background-size: cover;
            margin: 0;
            padding-top: 20px; /* Space for navbar */
            overflow-y: auto; /* Enable vertical scrollbar */
        }

        h3 {
            color: #333;
            text-align: center;
            margin-top: 50px; /* Ensure it appears at the top */
            font-size: 24px; /* Increase font size for visibility */
        }

          .form-container {
            width: 100%;
            max-width: 500px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.3); /* More transparent background */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Slight shadow for visibility */
            border-radius: 8px;
            margin: 20px auto; /* Center the form */
        }

        h4 {
            text-align: center;
            color: red;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"], input[type="number"], input[type="date"],
        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .button-container {
            text-align: center;
            padding-top: 10px;
        }

        input[type="submit"], input[type="reset"] {
            padding: 10px 20px;
            font-size: 14px;
            margin: 0 5px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
        }

        input[type="reset"] {
            background-color: #f44336;
            color: #fff;
        }
    </style>
</head>
<body>

    <%@include file="usernavbar.jsp" %> <!-- Include user navbar -->

    <h3>Update User Profile</h3>

    <h4><c:out value="${message}"></c:out></h4>

    <div class="form-container">
        <form method="post" action="updateuserprofile">
            <table>
                <tr>
                    <td><label for="uid">User ID</label></td>
                    <td><input type="number" id="uid" name="uid" readonly value="<%= user.getId() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="uname">Enter Name</label></td>
                    <td><input type="text" id="uname" name="uname" value="<%= user.getName() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="udob">Enter Date of Birth</label></td>
                    <td><input type="date" id="udob" name="udob" value="<%= user.getDateofbirth() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="ulocation">Enter Location</label></td>
                    <td><input type="text" id="ulocation" name="ulocation" value="<%= user.getLocation() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="uemail">Enter Email ID</label></td>
                    <td><input type="email" id="uemail" name="uemail" readonly value="<%= user.getEmail() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="upwd">Enter Password</label></td>
                    <td><input type="password" id="upwd" name="upwd" value="<%= user.getPassword() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="ucontact">Enter Contact</label></td>
                    <td><input type="number" id="ucontact" name="ucontact" value="<%= user.getContact() %>" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>
