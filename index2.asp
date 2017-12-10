<html>
  <head>
    <link rel="stylesheet" type="text/css" href="css/slide.css">
    <link rel="stylesheet" type="text/css" href="css/wrap.css">
  </head>
  <body>
    <!--#include file="header2.asp"-->
    <br>
    <div class="slideshow-container">

    <div class="mySlides fade">
      <div class="numbertext">1 / 5</div>
      <center><img src="images/hos.jpg" height="400" width="600"></center>

    </div>

    <div class="mySlides fade">
      <div class="numbertext">2 / 5</div>
      <center><img src="images/rate.jpg" height="400" width="600"></center>

    </div>

    <div class="mySlides fade">
      <div class="numbertext">3 / 5</div>
      <center><img src="images/5.jpg" height="400" width="600"></center>
      </div>

    	<div class="mySlides fade">
      <div class="numbertext">4 / 5</div>
      <center><img src="images/6.jpg" height="400" width="600"></center>
      </div>

      <div class="mySlides fade">
      <div class="numbertext">5/ 5</div>
      <center><img src="images/7.jpg" height="400" width="600"></center>
      </div>







      </div>
    <br>

    <div style="text-align:center">
      <span class="dot"></span>
      <span class="dot"></span>
      <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
    </div>

    <br><br>

    <div class="wrap">

    <div class="fleft">
      <center><p style="font-family:Verdana, Geneva, sans-serif; font-weight:bold;">Sign Up For Appointment</p></center>
      <center><img src="images/signup.jpeg" height="300" width="300"></center>
      <br>
      <center><input type="button" value="Click Here" style="background:gold; " onclick="window.location='patientRegistration.asp'" /></center>

    </div>
    <div class="fcenter">
      <center><p style="font-family:Verdana, Geneva, sans-serif; font-weight:bold;">Find Doctor</p></center>
      <center><img src="images/doctor3.png" height="300" width="300"></center>
      <br>
      <center><input type="button" value="Click Here" style="background:gold; " onclick="window.location='showDoctors.asp'" /></center>

    </div>
    <div class="fright">
      <center><p style="font-family:Verdana, Geneva, sans-serif; font-weight:bold;">About Us</p></center>
      <center><img src="images/medical.png" height="300" width="300"></center>
      <br>
      <center><input type="button" value="Click Here" style="background:gold; " onclick="window.location='about.asp'" /></center>

    </div>
    </div>

    <script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
           slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex> slides.length) {slideIndex = 1}
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";
        dots[slideIndex-1].className += " active";
        setTimeout(showSlides, 2000); // Change image every 2 seconds
    }

    </script>
  </body>
</html>
