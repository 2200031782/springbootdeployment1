<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            background-image: url('https://img.freepik.com/free-vector/abstract-watercolor-pastel-background_87374-139.jpg?w=360'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
        }

         .form-container {
    max-width: 450px; /* Increased width */
    margin: 60px auto; /* Ensure it appears below the navbar */
    padding: 25px; /* Added a little extra padding */
    background-color: rgba(255, 255, 255, 0.4); /* Increased transparency */
     /* White background with transparency */
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}
         
        

        h3 {
            font-size: 24px; /* Increased font size for the title */
            margin-bottom: 25px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 14px;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="date"],
        input[type="email"],
        input[type="password"],
        input[type="number"] {
            width: 100%;
            padding: 12px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 12px 20px;
            font-size: 14px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            background-color: #4070f4;
            color: white;
        }

        input[type="reset"] {
            background-color: #ccc;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            opacity: 0.9;
        }

        .validation {
            font-size: 12px;
            margin-top: 8px;
        }

        .tick {
            display: inline-block;
            width: 15px;
            height: 15px;
            border: 1px solid #ccc;
            border-radius: 2px;
            background-color: white;
            position: relative;
            margin-right: 5px;
        }

        .tick.checked {
            background-color: green;
        }

        .error {
            color: red;
            font-size: 12px;
        }
    </style>
</head>
<body>
     <h3>User Registration</h3>
    <div class="form-container">
        <%@include file="mainnavbar.jsp" %>
        <h3>User Registration</h3>
        <form method="post" action="insertuser" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="uname">Enter Name</label>
                <input type="text" id="uname" name="uname" required/>
            </div>
            <div class="form-group">
                <label for="udob">Enter Date of Birth</label>
                <input type="date" id="udob" name="udob" required/>
            </div>
            <div class="form-group">
                <label for="ulocation">Enter Location</label>
                <input type="text" id="ulocation" name="ulocation" required/>
            </div>
            <div class="form-group">
                <label for="uemail">Enter Email ID</label>
                <input type="email" id="uemail" name="uemail" required onchange="validateEmail()"/>
                <div id="emailError" class="error"></div>
            </div>
            <div class="form-group">
                <label for="upwd">Enter Password</label>
                <input type="password" id="upwd" name="upwd" required onkeyup="validatePassword()"/>
                <div class="validation">
                    <span class="tick" id="lengthCheck"></span>
                    Password must contain at least 6 characters<br/>
                    <span class="tick" id="specialCharCheck"></span>
                    Must contain a special character
                </div>
            </div>
            <div class="form-group">
                <label for="ucontact">Enter Contact</label>
                <input type="number" id="ucontact" name="ucontact" required/>
            </div>
            <div class="button-container">
                <input type="submit" value="Register"/>
                <input type="reset" value="Clear"/>
            </div>
        </form>
    </div>

    <script>
        function validateEmail() {
            const email = document.getElementById('uemail').value;
            const emailError = document.getElementById('emailError');
            if (!email.endsWith('@gmail.com')) {
                emailError.textContent = 'Invalid email';
            } else {
                emailError.textContent = '';
            }
        }

        function validatePassword() {
            const password = document.getElementById('upwd').value;
            const lengthCheck = document.getElementById('lengthCheck');
            const specialCharCheck = document.getElementById('specialCharCheck');

            lengthCheck.classList.toggle('checked', password.length >= 6);
            specialCharCheck.classList.toggle('checked', /[!@#$%^&*(),.?":{}|<>]/.test(password));
        }

        function validateForm() {
            validateEmail();
            return true;
        }
    </script>
</body>
</html>
