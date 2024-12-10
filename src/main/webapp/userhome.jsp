<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Home</title>
  <!-- Linking SwiperJS CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css">
  <style>
  /* Importing Google Font - Montserrat */
  @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');

  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Montserrat", sans-serif;
  }

  body {
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    min-height: 100vh;
    background: url("images/userhomebg.jpg") #030728 no-repeat center;
    background-size: cover;
  }

  h1 {
  font-size: 2.5rem;
  color: #fff;
  margin-bottom: 10px; /* Reduced margin */
  text-align: center;
  font-weight: bold;
}

.swiper {
  width: 90%;
  max-width: 1200px;
  padding: 20px 0; /* Reduced padding */
  position: relative;
}


  .swiper-slide {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    background: rgba(255, 255, 255, 0.2);
    border-radius: 10px;
    padding: 20px;
    color: #fff;
    text-align: center;
  }

  .swiper-slide img {
    width: 150px;
    height: 150px;
    border-radius: 50%;
    border: 3px solid #fff;
    margin-bottom: 20px;
  }

  .swiper-slide h2 {
    font-size: 1.8rem;
    margin-bottom: 10px;
    color: #fff; /* Name color changed to white */
  }

  .swiper-slide p {
    font-size: 1.1rem;
    color: #fff; /* Role color changed to white */
    margin-bottom: 20px;
  }

  .swiper-slide button {
    padding: 10px 20px;
    font-size: 1rem;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    background-color: #00acc1; /* Profile button color remains the same */
    color: #fff;
    font-weight: 500;
    transition: background 0.3s;
  }

  .swiper-slide button:hover {
    background-color: #028b8b; /* Hover color for the profile button */
    color: #fff;
    border: 1px solid #fff;
  }

  .swiper-pagination-bullet {
    background: #fff;
    height: 12px;
    width: 12px;
    opacity: 0.5;
  }

  .swiper-pagination-bullet-active {
    opacity: 1;
  }

  .swiper-button-prev,
  .swiper-button-next {
    color: #fff;
    width: 50px;
    height: 50px;
    background: rgba(0, 0, 0, 0.5);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    z-index: 10;
  }

  .swiper-button-prev {
    left: 10px;
  }

  .swiper-button-next {
    right: 10px;
  }

  .swiper-button-prev:hover,
  .swiper-button-next:hover {
    background: #4658ff;
  }
</style>
  
</head>
<body>
<%@include file="usernavbar.jsp" %>
    
  <h1>Top Professionals</h1>

  <div class="swiper">
    <div class="swiper-wrapper">
      <!-- Slide 1 -->
      <div class="swiper-slide">
        <img src="images/deepak.jpg" alt="Deepak">
        <h2>Deepak</h2>
        <p>Web Developer</p>
        <button onclick="window.location.href='userprofprofile?professionalId=1';">View Profile</button>
      </div>
      <!-- Slide 2 -->
      <div class="swiper-slide">
        <img src="images/52406.jpg" alt="Jayanth">
        <h2>Jayanth</h2>
        <p>Ethical Hacking</p>
        <button onclick="window.location.href='userprofprofile?professionalId=2';">View Profile</button>
      </div>
      <!-- Slide 3 -->
      <div class="swiper-slide">
        <img src="images/vishnu.jpg" alt="Vishnu">
        <h2>Vishnu</h2>
        <p>Java Developer</p>
        <button onclick="window.location.href='userprofprofile?professionalId=3';">View Profile</button>
      </div>
       <!-- Slide 4 -->
      <div class="swiper-slide">
        <img src="images/varshith.jpg" alt="Varshith">
        <h2>Roopesh</h2>
        <p>Graphic Designer</p>
        <button onclick="window.location.href='userprofprofile?professionalId=4';">View Profile</button>
      </div>
    </div>
    <!-- Pagination -->
    <div class="swiper-pagination"></div>
    <!-- Navigation buttons -->
    <div class="swiper-button-prev"></div>
    <div class="swiper-button-next"></div>
  </div>

  <!-- Linking SwiperJS Script -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
  <script>
  const swiper = new Swiper('.swiper', {
      loop: true,
      grabCursor: true,
      spaceBetween: 30,

      // Enable pagination
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },

      // Enable navigation buttons
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },

      // Responsive breakpoints
      breakpoints: {
        0: {
          slidesPerView: 1,
        },
        768: {
          slidesPerView: 2,
        },
        1024: {
          slidesPerView: 3,
        },
      },

      // Autoplay settings
      autoplay: {
        delay: 3000, // Delay between slides in milliseconds (3 seconds)
        disableOnInteraction: false, // Continue autoplay after user interaction
      },
    });
  </script>
</body>
</html>
