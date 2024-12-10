<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notifications</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .notifications-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .notification-item {
            background-color: #fafafa;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 6px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .notification-item:hover {
            background-color: #f1f1f1;
        }
        .notification-item p {
            margin: 5px 0;
        }
        .notification-item .sender {
            font-weight: bold;
            color: #007BFF;
        }
        .notification-item .message {
            color: #555;
        }
    </style>
</head>
<body>

    <div class="notifications-container">
        <h2>Notifications</h2>
        <c:forEach var="message" items="${messages}">
            <div class="notification-item">
                <p class="sender">${message.name}</p>
                <p class="message">${message.content}</p>
                 <p class="message">${message.email}</p>
                 <p class="message">${message.timestamp}</p>
              
            </div>
        </c:forEach>
    </div>

</body>
</html>