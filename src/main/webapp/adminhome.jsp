<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    <style>
        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Full screen setup */
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            min-height: 100vh;
            font-family: Arial, sans-serif;
            background-color: #000; /* Black background */
            color: #fff;
            text-align: center;
        }

        /* Gallery container */
        .gallery {
            display: flex;
            gap: 10px;
            align-items: center;
            justify-content: center;
            flex-wrap: nowrap;
            overflow: hidden;
            padding: 20px;
        }

        /* Image styling with rounded corners and overlay effect */
        .gallery img {
            width: 180px; /* Control image size */
            height: 350px; /* Fixed height for uniformity */
            object-fit: cover;
            border-radius: 40px; /* Rounded corners */
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5); /* Shadow effect */
        }

        /* Hover effect for images */
        .gallery img:hover {
            transform: scale(1.05); /* Slight zoom */
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.7); /* Enhanced shadow */
        }

        /* Title styling */
        .title {
            font-size: 3em;
            margin-top: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
            color: #FFD700; /* Gold color for the title */
        }

        /* Sidebar (hidden by default) */
        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: -250px; /* Hidden initially */
            background-color: #333;
            padding-top: 20px;
            transition: 0.3s;
            z-index: 1;
        }

        /* Sidebar links */
        .sidebar a {
            padding: 10px 20px;
            text-decoration: none;
            font-size: 1.2em;
            color: #fff;
            display: block;
            transition: 0.2s;
        }

        .sidebar a:hover {
            background-color: #575757;
        }

        /* Menu button */
        .menu-btn {
            position: fixed;
            top: 20px;
            left: 20px;
            font-size: 1.5em;
            background: none;
            color: #FFD700; /* Gold color for the icon */
            border: none;
            cursor: pointer;
            z-index: 2;
            transition: 0.3s;
        }

        .menu-btn:hover {
            color: #ffdf00; /* Lighter gold on hover */
        }
    </style>
</head>
<body>
       <%@ include file="adminnavbar.jsp" %>
    <!-- Menu button with hamburger icon -->
    <button class="menu-btn" onclick="toggleSidebar()">
        &#9776; <!-- Hamburger icon using Unicode character -->
    </button>

    <!-- Sidebar (admin navbar) -->
    <div class="sidebar" id="sidebar">
        <%@ include file="adminnavbar.jsp" %> <!-- Admin navbar content here -->
    </div>

    <!-- Gallery container with images -->
    

    <!-- Title below images -->
    <h1 class="title">Welcome Creators</h1>

    <script>
        // JavaScript function to toggle the sidebar
        function toggleSidebar() {
            const sidebar = document.getElementById("sidebar");
            if (sidebar.style.left === "-250px") {
                sidebar.style.left = "0"; // Show sidebar
            } else {
                sidebar.style.left = "-250px"; // Hide sidebar
            }
        }
    </script>
</body>
</html>
