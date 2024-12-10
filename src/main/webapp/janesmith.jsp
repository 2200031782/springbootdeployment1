<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Profile - Jenny </title>
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
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7vnLzz6kFC_7PcYnaHG68WjyUIKhE-YZJsA&s" alt="Jane Smith">
        <h2>Jenny Lectures</h2>
        <p><i class="fas fa-briefcase"></i> Senior graphic Designer</p>
    </div>
    <div class="profile-details">
        <h3>Skills</h3>
        <p>Adobe Photoshop, Illustrator, InDesign, Sketch, Figma, HTML, CSS.</p>

        <h3>Experience</h3>
        <p>6+ years in graphic design, focusing on branding, UI/UX, and digital illustrations.</p>

        <h3>Payment Rate</h3>
        <p>₹250 per hour</p>

        <h3>Ratings</h3>
        <div class="rating">
            <span class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </span>
            <span> 4/5</span>
        </div>
    </div>
   <form action="moneypay" method="post">
        <input type="hidden" name="professionalId" value="john-doe-id">
         <a href="moneypay" class="nav_link"></a>
        <button type="submit" class="hire-button">Hire</button>
    </form>
</div>

</body>
</html>
