<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Profile - Mike Jhonson</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 20px;
        }
        .profile-container {
            max-width: 800px;
            background-color: #fff;
            margin: auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .profile-header {
            margin-bottom: 20px;
        }
        .profile-header img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            margin-bottom: 15px;
        }
        .profile-details {
            text-align: left;
            margin-top: 20px;
        }
        .profile-details h3, .profile-details p {
            margin: 10px 0;
        }
        .rating {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 10px;
        }
        .rating .stars {
            color: #f4c150;
        }
        .hire-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4070f4;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            border: none;
        }
        .hire-button:hover {
            background-color: #3056c6;
        }
    </style>
</head>
<body>

<div class="profile-container">
    <div class="profile-header">
        <img src="https://media.licdn.com/dms/image/v2/C5603AQFZfI3KFYs1Mw/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1526314227708?e=2147483647&v=beta&t=uae3d4Am1cIkn6xDDXvzaLwVsYmhNaE3GBybwi9unq4" alt="johnson">
        <h2>Jhonson</h2>
        <p><i class="fas fa-briefcase"></i> Data Analyst</p>
    </div>
    <div class="profile-details">
        <h3>Skills</h3>
        <p> Python, R, SQL, Tableau, Power BI, Excel, Machine Learning.</p>

        <h3>Experience</h3>
        <p> 5+ years in data analysis, specializing in data visualization, statistical modeling, and predictive analytics.</p>

        <h3>Payment Rate</h3>
        <p>₹280 per hour</p>

        <h3>Ratings</h3>
        <div class="rating">
            <span class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </span>
            <span> 4.5/5</span>
        </div>
    </div>
    <form action="moneypay" method="post">
        <input type="hidden" name="professionalId" value="john-doe-id">
         <a href="moneypay" class="nav_link">
        <button type="submit" class="hire-button">Hire</button></a>
    </form>
</div>

</body>
</html>
