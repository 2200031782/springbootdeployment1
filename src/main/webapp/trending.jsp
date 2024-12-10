<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trending Skills & Professionals</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        
        header {
            background-color: #00acc1;
            padding: 15px 0;
            text-align: center;
            color: #ffffff;
        }

        header h1 {
            margin: 0;
        }

        .search-bar {
            margin: 20px auto;
            width: 80%;
            max-width: 500px;
        }

        .search-bar input[type="text"] {
            width: 80%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 5px 0 0 5px;
            outline: none;
        }

        .search-bar input[type="submit"] {
            padding: 8px 15px;
            border: none;
            background-color: #00acc1;
            color: #ffffff;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
        }

        .skills-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }

        .skill-card {
            background-color: #ffffff;
            width: 300px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            text-align: center;
        }

        .skill-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .skill-card h3 {
            margin: 0;
            padding: 10px;
            color: #333;
        }

        .skill-card p {
            padding: 0 10px;
            color: #777;
            font-size: 14px;
        }

        .view-professionals-btn {
            display: block;
            margin: 15px auto;
            padding: 10px 20px;
            background-color: #00acc1;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }

        .footer {
            background-color: #333;
            color: #ffffff;
            text-align: center;
            padding: 10px;
            margin-top: 20px;
        }

        .footer a {
            color: #00acc1;
            text-decoration: none;
        }
    </style>
</head>
<body>

<header>
    <h1>Explore Trending Skills and Find Top Professionals</h1>
</header>

<div class="search-bar">
    <form action="userreg" method="get">
        <input type="text" name="search" placeholder="Search for a skill or professional...">
       
        <input type="submit" value="Search">
        
    </form>
</div>

<div class="skills-container">
    <!-- Skill Card 1 -->
    <div class="skill-card">
        <img src="https://api.reliasoftware.com/uploads/web_development_is_important_176fa0618e.jpg" alt="Web Development">
        <h3>Web Development</h3>
        <p>Discover top web developers skilled in creating modern, responsive websites and applications.</p>
        <a href="userreg.jsp" class="view-professionals-btn">View Professionals</a>
    </div>

    <!-- Skill Card 2 -->
    <div class="skill-card">
        <img src="https://assets.techrepublic.com/uploads/2023/12/tr_20231215-what-is-data-science.jpg" alt="Data Science">
        <h3>Data Science</h3>
        <p>Find experts in data science, machine learning, and AI to handle all your data needs.</p>
        <a href="userreg" class="view-professionals-btn">View Professionals</a>
    </div>

    <!-- Skill Card 3 -->
    <div class="skill-card">
        <img src="https://mir-s3-cdn-cf.behance.net/projects/404/55b9cb140074961.Y3JvcCwxOTk5LDE1NjQsMCw1MTQ.jpg" alt="Graphic Design">
        <h3>Graphic Design</h3>
        <p>Hire talented designers to create stunning visuals for your business or personal projects.</p>
        <a href="userreg" class="view-professionals-btn">View Professionals</a>
    </div>

    <!-- Skill Card 4 -->
    <div class="skill-card">
        <img src="https://img.freepik.com/free-photo/digital-marketing-with-icons-business-people_53876-94833.jpg?semt=ais_hybrid" alt="Digital Marketing">
        <h3>Digital Marketing</h3>
        <p>Connect with digital marketers who can help you grow your brand and reach a larger audience.</p>
        <a href="userreg" class="view-professionals-btn">View Professionals</a>
    </div>

    <!-- Skill Card 5 -->
    <div class="skill-card">
        <img src="https://www.theforage.com/blog/wp-content/uploads/2022/12/what-is-cybersecurity.jpg" alt="Cybersecurity">
        <h3>Cybersecurity</h3>
        <p>Protect your data and network with the help of certified cybersecurity professionals.</p>
        <a href="userreg" class="view-professionals-btn">View Professionals</a>
    </div>
</div>

<footer class="footer">
    <p>&copy; 2024 Expert Hub. All rights reserved.</p>
    <p><a href="privacy.jsp">Privacy Policy</a> | <a href="terms.jsp">Terms of Use</a></p>
</footer>

</body>
</html>
