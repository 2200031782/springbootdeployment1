
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f9f4;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }
        .container {
            text-align: center;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 400px;
        }
        .success-icon {
            width: 50px;
            height: 50px;
            background-color: #4CAF50;
            border-radius: 50%;
            display: inline-block;
            margin-bottom: 15px;
            position: relative;
        }
        .success-icon::before {
            content: '✔';
            color: white;
            font-size: 30px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .message {
            font-size: 18px;
            color: #333;
            margin-top: 15px;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="success-icon"></div>
        <h2>Professional Registered Successfully!</h2>
        <div class="message">
            <c:out value="${message}"></c:out>
        </div>
        <a href="proflogin">Login Here</a>
    </div>
</body>
</html>
