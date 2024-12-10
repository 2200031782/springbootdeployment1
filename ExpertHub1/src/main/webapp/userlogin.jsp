<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Login Form</title>
  <link rel="stylesheet" href="style.css">
  <style>
    @import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@200;300;400;500;600;700&display=swap");

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Open Sans", sans-serif;
    }

    body {
      display: flex;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
      width: 100%;
      padding: 0 10px;
    }

    body::before {
      content: "";
      position: absolute;
      width: 100%;
      height: 100%;
      background: url("https://static.vecteezy.com/system/resources/thumbnails/002/393/823/small/gradient-blue-background-free-vector.jpg"), rgba(0, 0, 0, 0.5); /* Add your background image URL here */
      background-position: center;
      background-size: cover;
    }

    .wrapper {
      width: 400px;
      border-radius: 8px;
      padding: 30px;
      text-align: center;
      border: 1px solid rgba(255, 255, 255, 0.5);
      backdrop-filter: blur(8px);
      -webkit-backdrop-filter: blur(8px);
      margin-top: 80px; /* Adjust this value to control how far down the form starts */
    }

    form {
      display: flex;
      flex-direction: column;
    }

    h2 {
      font-size: 2rem;
      margin-bottom: 10px; /* Reduce this value to bring the heading closer to the first input */
      color: #fff;
    }
    
    
        h4 {
            text-align: center;
            color: red; /* Red color for error message */
        }

    .input-field {
      position: relative;
      margin: 10px 0; /* Reduce the vertical margin to fit more elements within the form */
    }

    .input-field label {
      position: absolute;
      top: 50%;
      left: 0;
      transform: translateY(-50%);
      color: #fff;
      font-size: 16px;
      pointer-events: none;
      transition: 0.15s ease;
    }

    .input-field input {
      width: 100%;
      height: 40px;
      background: rgba(255, 255, 255, 0.2); /* Background color for input */
      border: none;
      outline: none;
      font-size: 16px;
      color: #fff;
      border-bottom: 2px solid #fff; /* Solid line for input */
    }

    .input-field input:focus~label,
    .input-field input:not(:placeholder-shown)~label { /* Changed to not(:placeholder-shown) */
      font-size: 0.8rem;
      top: -10px; /* Move the label above the input */
      transform: translateY(0); /* Reset transform for better alignment */
      color: #ccc; /* Optional: change color for the label when focused */
    }

    .input-field input:focus {
      border-bottom: 2px solid #ccc; /* Change the border color on focus */
    }

    .forget {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin: 25px 0 35px 0;
      color: #fff;
    }

    #remember {
      accent-color: #fff;
    }

    .forget label {
      display: flex;
      align-items: center;
    }

    .forget label p {
      margin-left: 8px;
    }

    .wrapper a {
      color: #efefef;
      text-decoration: none;
    }

    .wrapper a:hover {
      text-decoration: underline;
    }

    button {
      background: #fff;
      color: #000;
      font-weight: 600;
      border: none;
      padding: 12px 20px;
      cursor: pointer;
      border-radius: 3px;
      font-size: 16px;
      border: 2px solid transparent;
      transition: 0.3s ease;
    }

    button:hover {
      color: #fff;
      border-color: #fff;
      background: rgba(255, 255, 255, 0.15);
    }

    .register {
      text-align: center;
      margin-top: 30px;
      color: #fff;
    }
  </style>
</head>
<body>
  <%@include file="mainnavbar.jsp" %>
  <div class="wrapper">
    
      <h2>Login</h2>
      <h4>
         <c:out value="${message}"></c:out>
      </h4>
      <form method="post" action="checkuserlogin">
      <div class="input-field">
        <input type="email" id="uemail" name="uemail" required placeholder=" " />
        <label for="uemail">Enter your Email</label>
      </div>
      <div class="input-field">
        <input type="password" id="upwd" name="upwd" required placeholder=" " />
        <label for="upwd">Enter Password</label>
      </div>
      <div class="forget">
        <label for="remember">
          <input type="checkbox" id="remember">
          <p>Remember me</p>
        </label>
      </div>
      <button type="submit">Log In</button>
      <div class="register">
        <p>Don't have an account? <a href="userreg">Register</a></p>
      </div>
    </form>
  </div>
</body>
</html>
