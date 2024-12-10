<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Login</title>
    <link rel="stylesheet" href="style.css">
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;600;700&display=swap");

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Roboto', sans-serif;
}

body {
    background: #000;
}

body::before {
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    opacity: 0.5;
    width: 100%;
    height: 100%;
    background: url("https://img.freepik.com/free-vector/dark-paper-layers-wallpaper-with-golden-details_23-2148390681.jpg?semt=ais_hybrid");
    background-position: center;
    background-size: cover; /* Ensures background image covers the area */
}

  
     
nav {
    position: fixed;
    padding: 25px 60px;
    z-index: 1;
}

nav a img {
    width: 167px;
}

.form-wrapper {
    position: absolute;
    left: 50%;
    top: 55%;
    border-radius: 4px;
    padding: 40px;
    width: 350px;
    transform: translate(-50%, -50%);
    background: rgba(0, 0, 0, .75);
}

.form-wrapper h2 {
    color: #fff;
    font-size: 1.5rem;
}

   h4 {
            text-align: center;
            color: red; /* Red color for error message */
        }

.form-wrapper form {
    margin: 25px 0 30px;
}

form .form-control {
    height: 40px;
    position: relative;
    margin-bottom: 12px;
}

.form-control input {
    height: 100%;
    width: 100%;
    background: #333;
    border: none;
    outline: none;
    border-radius: 4px;
    color: #fff;
    font-size: 1rem;
    padding: 0 16px;
}

.form-control input:is(:focus, :valid) {
    background: #444;
    padding: 14px 16px 0;
}

.form-control label {
    position: absolute;
    left: 16px;
    top: 50%;
    transform: translateY(-50%);
    font-size: 0.9rem;
    pointer-events: none;
    color: #8c8c8c;
    transition: all 0.1s ease;
}

.form-control input:is(:focus, :valid)~label {
    font-size: 0.75rem;
    transform: translateY(-130%);
}

form button {
    width: 100%;
    padding: 12px 0;
    font-size: 1rem;
    background: skyblue; /* Changed to sky blue */
    color: #fff;
    font-weight: 500;
    border-radius: 4px;
    border: none;
    outline: none;
    margin: 20px 0 10px;
    cursor: pointer;
    transition: 0.1s ease;
}

form button:hover {
    background: deepskyblue; /* Hover effect for sky blue */
}

.form-wrapper a {
    text-decoration: none;
}

.form-wrapper a:hover {
    text-decoration: underline;
}

.form-wrapper :where(label, p, small, a) {
    color: #b3b3b3;
}

form .form-help {
    display: flex;
    justify-content: space-between;
}

form .remember-me {
    display: flex;
}

form .remember-me input {
    margin-right: 5px;
    accent-color: #b3b3b3;
}

form .form-help :where(label, a) {
    font-size: 0.9rem;
}

.form-wrapper p a {
    color: #fff;
}

.form-wrapper small {
    display: block;
    margin-top: 15px;
    color: #b3b3b3;
}

.form-wrapper small a {
    color: #0071eb;
}

@media (max-width: 740px) {
    body::before {
        display: none;
    }

    nav, .form-wrapper {
        padding: 20px;
    }

    nav a img {
        width: 140px;
    }

    .form-wrapper {
        width: 90%;
        top: 40%;
    }

    .form-wrapper form {
        margin: 20px 0 30px;
    }
}
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <div class="form-wrapper">
        <h2>Sign In</h2>
        <h4>
        <c:out value="${message}"></c:out>
    </h4>
       <form method="post" action="checkproflogin">
            <div class="form-control">
                <input type="email" id="pemail" name="pemail" required>
        <label for="pemail">Enter your Email</label>       
            </div>
            <div class="form-control">
                <input type="password" id="ppwd" name="ppwd"  required>
               <label for="ppwd">Enter Password</label>
            </div>
            <button type="submit">Sign In</button>
            <div class="form-help"> 
                <div class="remember-me">
                    <input type="checkbox" id="remember-me">
                    <label for="remember-me">Remember me</label>
                </div>
            </div>
        </form>
        <p>New to ExpertHub? <a href="profreg">Register now</a></p>
    </div>
</body>
</html>