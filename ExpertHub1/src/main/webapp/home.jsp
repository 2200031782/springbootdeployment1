<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Expert Hub</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'><link rel="stylesheet" href="./style.css">
      <style>
  
    * {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  background: #fff;
  color: #000;
  font-size: 15px;
  line-height: 1.5;
}

a {
  color: #262626;
  text-decoration: none;
}

ul {
  list-style: none;
}

.container {
  width: 90%;
  max-width: 1100px;
  margin: auto;
}

/* Nav */
.main-nav {
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 60px;
  padding: 20px 0;
  font-size: 13px;
}

.main-nav .logo {
  width: 110px;
}

.main-nav ul {
  display: flex;
}

.main-nav ul li {
  padding: 0 10px;
}

.main-nav ul li a {
  padding-bottom: 2px;
}

.main-nav ul li a:hover {
  border-bottom: 2px solid #262626;
}

.main-nav ul.main-menu {
  flex: 1;
  margin-left: 20px;
}

.menu-btn {
  cursor: pointer;
  position: absolute;
  top: 20px;
  right: 30px;
  z-index: 2;
  display: none;
}

.btn {
  cursor: pointer;
  display: inline-block;
  border: 0;
  font-weight: bold;
  padding: 10px 20px;
  background: #262626;
  color: #fff;
  font-size: 15px;;
}

.btn:hover {
  opacity: 0.9;
}

.dark {
  color: #fff;
}

.dark .btn {
  background: #f4f4f4;
  color: #333;
}

/* Showcase */
.showcase {
  width: 100%;
  height: 400px;
  background: url('https://i.ibb.co/zGSDGCL/slide1.png') no-repeat center center/cover;
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  justify-content: flex-end;
  padding-bottom: 50px;
  margin-bottom: 20px;
}

.showcase h2, .showcase p {
  margin-bottom: 10px;
}

.showcase .btn {
  margin-top: 20px;
}

/* Home cards */
.home-cards {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-gap: 20px;
  margin-bottom: 40px;
}

.home-cards img {
  width: 100%;
  margin-bottom: 20px;
}

.home-cards h3 {
  margin-bottom: 5px;
}

.home-cards a {
  display: inline-block;
  padding-top: 10px;
  color: #0067b8;
  text-transform: uppercase;
  font-weight: bold;
}

.home-cards a:hover i {
  margin-left: 10px;
}

/* Xbox */
.xbox {
  width: 100%;
  height: 350px;
  background: url('https://images.unsplash.com/photo-1513530534585-c7b1394c6d51?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8d29ya2luZyUyMG9uJTIwY29tcHV0ZXJ8ZW58MHx8MHx8fDA%3D') no-repeat center center/cover;
  margin-bottom: 20px;
}

.xbox .content {
  width: 40%;
  padding: 50px 0 0 30px;
}

.xbox p, .carbon p {
  margin: 10px 0 20px;
}

/* Carbon */
.carbon {
  width: 100%;
  height: 350px;
  background: url('https://i.ibb.co/72cgtsz/carbon.jpg') no-repeat center center/cover;
}

.carbon .content {
  width: 55%;
  padding: 100px 0 0 30px;
}

/* Follow */
.follow {
  display: flex;
  align-items: center;
  justify-content: flex-start;
  margin: 30px 0 30px;
}

.follow * {
  margin-right: 10px;
}

/* Links */
.links {
  background: #f2f2f2;
  color: #616161;
  font-size: 12px;
  padding: 35px 0;
}

.links-inner {
  max-width: 1100px;
  margin: 0 auto;
  padding: 0 20px;
  display: grid;
  grid-template-columns: repeat(6, 1fr);
  grid-gap: 10px;
  align-items: flex-start;
  justify-content: center;
}

.links li {
  line-height: 2.8;
}

/* Footer */
.footer {
  background: #f2f2f2;
  color: #616161;
  font-size: 12px;
  padding: 20px 0;
}

.footer-inner {
  max-width: 1100px;
  margin: 0 auto;
  padding: 0 20px 0 20px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.footer div {
  margin-bottom: 20px;
  display: flex;
  align-items: center;
}

.footer div i {
  margin-right: 10px;
}

.footer ul {
  display: flex;
  flex-wrap: wrap;
}

.footer li {
  margin-right: 30px;
  margin-bottom: 20px;
}

@media(max-width: 700px) {
  .menu-btn {
    display: block;
  }

  .menu-btn:hover {
    opacity: 0.5;
  }

  .main-nav ul.right-menu {
    margin-right: 50px;
  }

  .main-nav ul.main-menu {
    display: block;
    position: absolute;
    top:0;
    left: 0;
    background: #f2f2f2;
    width: 50%;
    height: 100%;
    border-right: #ccc 1px solid;
    opacity: 0.9;
    padding: 30px;
    transform: translateX(-500px);
    transition: transform 0.5s ease-in-out;
  }

  .main-nav ul.main-menu li {
    padding: 10px;
    border-bottom: #ccc solid 1px;
    font-size: 14px;
  }

  .main-nav ul.main-menu li:last-child {
    border-bottom: 0;
  }

  .main-nav ul.main-menu.show {
    transform: translateX(-20px);
  }

  .home-cards {
    grid-template-columns: repeat(2, 1fr);
  }

  .xbox .content p {
    display: none;
  }

  .xbox .content h2 {
    margin-bottom: 20px;
  }

  .carbon .content {
    width: 85%;
  }

  .links .links-inner {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media(max-width: 500px) {
  .home-cards {
    grid-template-columns: 1fr;
  }

  .links .links-inner {
    grid-template-columns: 1fr;
  }

  .links .links-inner ul {
    margin-bottom: 20px;
  }
}
.carousel-container {
      position: relative;
      overflow: hidden;
      width: 100%;
      max-width: 800px;
      margin: auto;
    }

    .carousel-slide {
      display: flex;
      transition: transform 0.5s ease-in-out;
      width: 100%;
    }

    .carousel-slide img {
      width: 100%;
      flex: 0 0 100%;
    }

    .next-icon {
      position: absolute;
      top: 50%;
      right: 10px;
      transform: translateY(-50%);
      font-size: 30px;
      cursor: pointer;
      color: #262626;
    }
  </style>
</head>
<body>
<!-- partial:index.partial.html -->
<div class="menu-btn">
    <i class="fas fa-bars fa-2x"></i>
  </div>

  <div class="container">
    <!-- Nav -->
    <nav class="main-nav">
      <img src="https://media.licdn.com/dms/image/v2/D4D0BAQH-SCi7Fb52Sw/company-logo_200_200/company-logo_200_200/0/1704973214414/scent_hill_ltd_logo?e=2147483647&v=beta&t=6M9MaCnT0AfvyQt_U8oNznoJ1y0FnrqgGFldBxceWVA" alt="Experthub" class="logo">

      <ul class="main-menu">
        <li><a href="/">Home</a></li>
        <li><a href="userlogin">User Login</a></li>
        <li><a href="proflogin">Professional Login</a></li>
        <li><a href="adminlogin">Admin Login</a></li>
        <li><a href="userreg">User Registration</a></li>
         <li><a href="profreg">Professional Registration</a></li>
        <li><a href="faq">FAQ</a></li>
        <li><a href="customersupport">Support</a></li>
      </ul>
 
   
      <ul class="right-menu">
        <li>
          <a href="userlogin">
            <i class="fas fa-search"></i>
          </a>
        </li>
       
      </ul>
    </nav>

    <!-- Showcase -->
    <header class="showcase">
      <h2>Search professionals</h2>
      <p>
        Hire The Top Professionals
      </p>
      <a href="userlogin" class="btn">
        Search Now <i class="fas fa-chevron-right"></i>
      </a>
    </header>

    <!-- Home cards 1 -->
    <section class="home-cards">
      <div>
        <img src="https://i.ibb.co/LZPVKq9/card1.png" alt="">
        <h3>Trending today</h3>
       <p>
         "Discover trending professionals making waves with their exceptional skills and in-demand services."
Connect with the most sought-after professionals who set the standard in their fields."
       </p>
        <a href="trending">Learn More <i class="fas fa-chevron-right"></i></a>
      </div>
      <div>
        <img src="https://i.ibb.co/KjGFHVJ/card2.png" alt="" />
        <h3>Highly Rated</h3>
       <p> 
       "Connect with highly rated professionals committed to delivering the best service experience."
Find trusted experts with outstanding ratings and a proven record of excellence."
       </p>
        <a href="#">Learn More <i class="fas fa-chevron-right"></i></a>
      </div>
      <div>
        <img src="https://t4.ftcdn.net/jpg/06/18/92/55/360_F_618925574_b3n9JfcmFr5GNa10SvNdpDFyHL5D3dIw.jpg" alt="" />
        <h3>Pay Securely</h3>
        <p>
          We offer payment options including ,pay later, and fraud detection 
          to safeguard your financial information.
        </p>
        <a href="payment">Learn More <i class="fas fa-chevron-right"></i></a>
      </div>
      <div>
        <img src="https://png.pngtree.com/png-vector/20220519/ourmid/pngtree-review-us-user-rating-concept-png-image_4668524.png" alt="" />
        <h3>Rate and Review</h3>
        <p>
          
          Rate our freelancer's work and leave a review. your feedback
          helps keep our talent pool high quality and our community thriving.
        </p>
        <a href="rating">Learn More <i class="fas fa-chevron-right"></i></a>
      </div>
    </section>

    <!-- Xbox -->
    <section class="xbox">
      <div class="content">
        <h2>Hire the Professonals</h2>
        <p>Join us today to connect with skilled professionals and find the right services tailored to your needs</p>
          <a href="userreg" class="btn">
            Join Now <i class="fas fa-chevron-right"></i>
          </a>
      </div>
    </section>


      <!-- Follow -->
      <section class="follow">
        <p>Follow Expert Hub</p>
        <a href="https://facebook.com">
          <img src="https://i.ibb.co/LrVMXNR/social-fb.png" alt="Facebook">
        </a>
        <a href="https://twitter.com">
          <img src="https://i.ibb.co/vJvbLwm/social-twitter.png" alt="Twitter">
        </a>
        <a href="https://linkedin.com">
          <img src="https://i.ibb.co/b30HMhR/social-linkedin.png" alt="Linkedin">
        </a>
      </section>
    </div>
     
      <!-- Footer -->
      <footer class="footer">
        <div class="footer-inner">
          <div><i class="fas fa-globe fa-2x"></i> English (United States)</div>
          <ul>
            <li><a href="#">Sitemap</a></li>
                    <li><a href="customersupport">Contact Expert Hub</a></li>
                    <li><a href="#">Privacy & cookies</a></li>
                    <li><a href="#">Terms of use</a></li>
                    <li><a href="#">Trademarks</a></li>
                    <li><a href="#">Safety & eco</a></li>
                    <li><a href="#">About our ads</a></li>
                    <li><a href="#">&copy; Expert Hub 2024</a></li>
          </ul>
        </div>
      </footer>
<!-- partial -->
  <script  src="./script.js"></script>

</body>
</html>