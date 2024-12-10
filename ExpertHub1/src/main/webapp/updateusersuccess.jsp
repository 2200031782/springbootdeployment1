<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update User Success</title>
    <style>
        /* Body styling */
        body {
            font-family: Arial, sans-serif;
            background: url('https://img.freepik.com/premium-photo/3d-abstract-background_493604-1338.jpg?semt=ais_hybrid') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
            text-align: center;
        }

        /* Message container styling */
        .message-container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 600px;
            width: 100%;
            text-align: center;
        }

        /* Success icon styling */
        .success-icon {
            color: green;
            font-size: 36px;
            vertical-align: middle;
            margin-bottom: 10px; /* Space between icon and message */
        }

        /* Message text styling */
        .message-text {
            font-weight: bold; /* Bold font for the message */
            font-size: 18px; /* Slightly larger font size for emphasis */
        }

        /* Back button styling */
        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #8A2BE2; /* Dark violet color for the button */
            color: white;
            text-decoration: none;
            font-weight: bold;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .back-link:hover {
            background-color: #5D3FD3; /* Slightly darker violet on hover */
        }
    </style>
</head>
<body>

    <!-- Message Container -->
    <div class="message-container">
        <div class="success-icon">&#x2714;</div> <!-- Green checkmark icon -->
        <div class="message-text"><c:out value="${message}" /></div> <!-- Bold message text -->
        <br>
        <a href="updateuser" class="back-link">Back</a>
    </div>

</body>
</html>
