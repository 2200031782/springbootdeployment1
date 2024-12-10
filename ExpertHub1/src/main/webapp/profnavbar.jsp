<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
  <title>Expert Hub</title>
  <style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Poppins", sans-serif;
    }

    :root {
      --white-color: #fff;
      --blue-color: #4070f4;
      --sky-blue-color: #87ceeb;
      --grey-color: #707070;
      --grey-color-light: #aaa;
      --background-light: #e7f2fd;
      --background-dark: #333;
      --text-light: #333;
      --text-dark: #f2f2f2;
    }

    body {
      background-color: var(--background-light);
      color: var(--text-light);
      transition: background-color 0.5s ease, color 0.5s ease;
    }

    body.dark {
      background-color: var(--background-dark);
      color: var(--text-dark);
    }

    .navbar {
      position: fixed;
      top: 0;
      width: 100%;
      left: 0;
      background-color: var(--white-color);
      display: flex;
      align-items: center;
      padding: 15px 30px;
      z-index: 1000;
      box-shadow: 0 0 2px var(--grey-color-light);
    }

    .logo_item {
      display: flex;
      align-items: center;
      column-gap: 10px;
      font-size: 22px;
      font-weight: 500;
      color: var(--sky-blue-color);
    }

    .navbar img {
      width: 35px;
      height: 35px;
      border-radius: 50%;
      margin-right: 10px;
    }

    .navbar_content {
      display: flex;
      align-items: center;
      margin-left: auto;
    }

    .navbar_content i {
      cursor: pointer;
      font-size: 20px;
      color: var(--grey-color);
      margin-left: 20px;
    }

    .sidebar {
      background-color: var(--white-color);
      width: 260px;
      position: fixed;
      top: 0;
      left: 0;
      height: 100%;
      padding: 80px 20px;
      z-index: 100;
      overflow-y: scroll;
      box-shadow: 0 0 1px var(--grey-color-light);
      transform: translateX(-100%);
      transition: transform 0.3s ease;
    }

    .sidebar.open {
      transform: translateX(0);
    }

    .menu_items {
      padding: 0;
      list-style: none;
    }

    .navlink_icon {
      display: flex;
      align-items: center;
    }

    .sidebar .nav_link {
      display: flex;
      align-items: center;
      padding: 8px 15px;
      border-radius: 8px;
      text-decoration: none;
      color: var(--grey-color);
      margin-bottom: 10px;
    }

    .nav_link:hover {
      color: var(--white-color);
      background: var(--blue-color);
    }

    .navlink {
      font-size: 14px;
      margin-left: 5px;
    }

    @media screen and (max-width: 768px) {
      #sidebarOpen {
        font-size: 25px;
        display: block;
        margin-right: 10px;
        cursor: pointer;
        color: var(--grey-color);
      }
      .sidebar.close {
        left: -100%;
      }
    }
  </style>
</head>
<body>
  <!-- navbar -->
  <nav class="navbar">
    <div class="logo_item">
      <i class="bx bx-menu" id="sidebarOpen"></i>
      <img src="https://media.licdn.com/dms/image/v2/D4D0BAQH-SCi7Fb52Sw/company-logo_200_200/company-logo_200_200/0/1704973214414/scent_hill_ltd_logo?e=2147483647&v=beta&t=6M9MaCnT0AfvyQt_U8oNznoJ1y0FnrqgGFldBxceWVA" alt="">
      Expert Hub
    </div>
    <div class="navbar_content">
      <i class="bx bx-moon" id="darkLight"></i>
    </div>
  </nav>

  <!-- sidebar -->
<!-- Sidebar -->
<nav class="sidebar">
    <ul class="menu_items">
        <li class="item">
            <a href="profhome" class="nav_link">
                <span class="navlink_icon">
                    <i class="bx bx-home-alt"></i>
                    <span class="navlink">Professional Home</span>
                </span>
            </a>
        </li>
        <li class="item">
            <a href="profprofile" class="nav_link">
                <span class="navlink_icon">
                    <i class="bx bxs-user-circle"></i>
                    <span class="navlink">Profile</span>
                </span>
            </a>
        </li>
        <li class="item">
            <a href="updateprof" class="nav_link">
                <span class="navlink_icon">
                    <i class="bx bxs-pencil"></i>
                    <span class="navlink">Update Profile</span>
                </span>
            </a>
        </li>
        <li class="item">
            <a href="profcontactus" class="nav_link">
                <span class="navlink_icon">
                    <i class="bx bxs-phone"></i>
                    <span class="navlink">Contact Us</span>
                </span>
            </a>
        </li>
        <li class="item">
            <a href="proflogout" class="nav_link">
                <span class="navlink_icon">
                    <i class="bx bx-log-out"></i>
                    <span class="navlink">Logout</span>
                </span>
            </a>
        </li>
    </ul>
</nav>


  <!-- JavaScript -->
  <script>
    // Sidebar toggle
    const sidebar = document.querySelector('.sidebar');
    const sidebarOpen = document.getElementById('sidebarOpen');
    sidebarOpen.onclick = () => sidebar.classList.toggle('open');

    // Dark mode toggle
    const darkLight = document.getElementById('darkLight');
    darkLight.onclick = () => {
      document.body.classList.toggle('dark');
      darkLight.classList.toggle('bx-moon');
      darkLight.classList.toggle('bx-sun');
    };
  </script>
</body>
</html>
