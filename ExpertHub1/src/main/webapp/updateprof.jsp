<%@page import="com.klef.jfsd.sdpproject.model.Professional"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Professional prof = (Professional) session.getAttribute("prof");
if(prof == null) {
    response.sendRedirect("profsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Professional</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/premium-photo/3d-abstract-background_493604-1338.jpg?semt=ais_hybrid') no-repeat center center fixed; /* Background image */
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

        .form-group {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }

        .form-group label {
            font-weight: bold;
            flex-basis: 40%; /* Label takes 40% width */
        }

        .form-group input {
            flex-basis: 55%; /* Input field takes 55% width */
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
    <%@include file="profnavbar.jsp" %>

    <div class="content">
        <h4>
            <c:out value="${message}"></c:out>
        </h4>

        <h3><u>Update Professional Profile</u></h3>
        
        <form method="post" action="updateprofprofile">
            <div class="form-container">
                <div class="form-group">
                    <label for="pid">Professional ID</label>
                    <input type="number" id="pid" name="pid"  readonly value="<%= prof.getId() %>" required/>
                </div>
                <div class="form-group">
                    <label for="pname">Enter Name</label>
                    <input type="text" id="pname" name="pname" value="<%= prof.getName() %>" required/>
                </div>
                <div class="form-group">
                    <label>Select Gender</label>
                    <div>
                        <input type="radio" id="male" name="pgender" value="MALE" <%= prof.getGender().equals("MALE") ? "checked" : "" %> required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="pgender" value="FEMALE" <%= prof.getGender().equals("FEMALE") ? "checked" : "" %> required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="pgender" value="OTHERS" <%= prof.getGender().equals("OTHERS") ? "checked" : "" %> required/>
                        <label for="others">Others</label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="pdob">Enter Date of Birth</label>
                    <input type="date" id="pdob" name="pdob" value="<%= prof.getDateofbirth() %>" required/>
                </div>
                <div class="form-group">
        <label for="pskills">Enter Skills</label>
        <input type="text" id="pskills" name="pskills" value="<%= prof.getSkills() %>"required/>
                </div>
                <div class="form-group">
                    <label for="psalary">Enter Salary</label>
                    <input type="number" id="psalary" name="psalary" step="0.01" value="<%= prof.getSalary() %>" required/>
                </div>
                <div class="form-group">
                    <label for="plocation">Enter Location</label>
                    <input type="text" id="plocation" name="plocation" value="<%= prof.getLocation() %>" required/>
                </div>
                <div class="form-group">
                    <label for="pemail">Enter Email ID</label>
                    <input type="email" id="pemail" name="pemail" readonly value="<%= prof.getEmail() %>" required/>
                </div>
                <div class="form-group">
                    <label for="ppwd">Enter Password</label>
                    <input type="password" id="ppwd" name="ppwd" value="<%= prof.getPassword() %>" required/>
                </div>
                <div class="form-group">
                    <label for="pcontact">Enter Contact</label>
                    <input type="number" id="pcontact" name="pcontact" value="<%= prof.getContact() %>" required/>
                </div>
                 <div class="form-group">
                    <label for="profimage">Update Resume</label>
                    <input type="file" id="profimage" name="profimage" value="<%= prof.getImage() %>" required/>
                </div>
                <div class="button-container">
                    <input type="submit" value="Update"/>
                    <input type="reset" value="Clear"/>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
