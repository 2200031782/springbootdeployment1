<!DOCTYPE html>
<html>
<head>
    <title>Hired Users</title>
</head>
<body>
    <h2>Users Who Have Hired You</h2>
    
    <c:if test="${not empty hiredUsers}">
        <table border="1">
            <thead>
                <tr>
                    <th>User Name</th>
                    <th>Email</th>
                    <th>Contact</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${hiredUsers}">
                    <tr>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                        <td>${user.contact}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

    <c:if test="${empty hiredUsers}">
        <p>No users have hired you yet.</p>
    </c:if>
</body>
</html>
