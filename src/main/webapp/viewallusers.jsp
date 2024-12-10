<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Users</title>
    <style>
        /* Fixed navbar styling */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            background-color: violet; /* Adjust color as needed */
            padding: 10px 0;
            text-align: center;
        }

        /* Body styling with background image */
        body {
            background: url('https://t4.ftcdn.net/jpg/01/16/88/37/360_F_116883786_wuckft1sNw1ouQfJ6FuquZnxea3qBlxy.jpg') no-repeat center center fixed; /* Background image */
            background-size: cover; /* Ensure background image covers the full page */
            font-family: Arial, sans-serif;
            margin: 0;
            padding-top: 60px; /* Space for fixed navbar */
        }

        /* Center the main content */
        .main-content {
    display: flex;
    flex-direction: column;
    align-items: center;
    max-width: 80%;
    margin: 0 auto;
    padding: 20px;
    background-color: rgba(255, 255, 255, 0.4); /* Adjust transparency by changing the alpha value (0.4 is 40% opacity) */
    overflow-y: auto;
    border-radius: 10px; /* Optional: Rounded corners for the content box */
}

        /* Table styling */
        table {
            border-collapse: collapse;
            width: 100%; /* Table width to fit content */
            margin-top: 20px; /* Space above the table */
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        h3 {
            margin: 20px 0;
        }
    </style>
</head>
<body>

    <%@ include file="adminnavbar.jsp" %> <!-- Include your navbar -->
     <h3 align="center"><u>View All Users</u></h3> <!-- Move this line outside the card -->
     
    <div class="main-content">
        
        <p>Total Users = <c:out value="${usercount}"></c:out></p>
        <table>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>DATE OF BIRTH</th>        
                <th>LOCATION</th>
                <th>EMAIL</th>
                <th>CONTACT</th>
            </tr>
            <c:forEach items="${userlist}" var="user">
                <tr>
                    <td><c:out value="${user.id}"/></td>
                    <td><c:out value="${user.name}"/></td>
                    <td><c:out value="${user.dateofbirth}"/></td>
                    <td><c:out value="${user.location}"/></td>
                    <td><c:out value="${user.email}"/></td>
                    <td><c:out value="${user.contact}"/></td>
                </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>
