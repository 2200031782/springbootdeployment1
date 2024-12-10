<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Professional Status</title>
    <link rel="stylesheet" type="text/css" href="navbar.css">
    <style>
        /* Fixed navbar styling */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            background-color: violet; /* Adjust as needed */
            padding: 10px 0;
            text-align: center;
        }

       /* Body styling with background image */
body {
    background: url('https://t4.ftcdn.net/jpg/01/16/88/37/360_F_116883786_wuckft1sNw1ouQfJ6FuquZnxea3qBlxy.jpg') no-repeat center center fixed; /* Add your image URL here */
    background-size: cover; /* Ensure background image covers the full page */
    background-position: center; /* Center the image */
    background-attachment: fixed; /* Ensure the background stays fixed while scrolling */
    font-family: Arial, sans-serif;
    margin: 0;
    padding-top: 80px; /* Create space for the navbar */
    text-align: center;
}

      /* Scrollable content area */
.main-content {
    max-width: 100%; /* Allow full width */
    margin: 0 auto;
    padding: 20px;
     background-color: rgba(255, 255, 255, 0.4);
    overflow-x: auto; /* Enable horizontal scrolling */
    margin-top: 20px; /* Ensure space between navbar and content */
}

/* Table styling */
table {
    width: 100%; /* Table takes full width of the container */
    border-collapse: collapse;
    margin: 0 auto;
}

th, td {
    padding: 10px;
    border: 1px solid #ddd;
    text-align: left; /* Align text to the left */
}

th {
    background-color: #f2f2f2;
}
      
    </style>
</head>
<body>

    <%@include file="adminnavbar.jsp" %>
    
    <h3 align="center">Update Professional Status</h3>
      <div class="main-content">

    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>SALARY</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${proflist}" var="prof">
            <tr>
                <td><c:out value="${prof.id}"/></td>
                <td><c:out value="${prof.name}"/></td>
                <td><c:out value="${prof.gender}"/></td>
                <td><c:out value="${prof.dateofbirth}"/></td>
                <td><c:out value="${prof.salary}"/></td>
                <td><c:out value="${prof.location}"/></td>
                <td><c:out value="${prof.email}"/></td>
                <td><c:out value="${prof.contact}"/></td>
                <td><c:out value="${prof.status}"/></td>
                <td>
                    <a href='<c:url value="updatestatus?id=${prof.id}&status=Accepted"></c:url>'>Accept</a>
                    <a href='<c:url value="updatestatus?id=${prof.id}&status=Rejected"></c:url>'>Reject</a>
                </td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
