<%-- 
    Document   : login_page
    Created on : Mar 24, 2017, 10:23:27 AM
    Author     : Pratik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <style>
            .div1
            {
                background-color: #99ff66;
                
                
            }
            .b1
            {
                border-radius: 4px;
                //  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
                width: 10%;
                height: 5%;
                font-size: 20px;
                //background: rgb(28, 184, 65);
                display: inline-block;
                margin: 10px;
            }
            .b1:focus {
             outline: none
                }
                .b1:hover {
                background-color: #4CAF50; /* Green */
                color: white;
                font-size: 24px;
            }
            * {box-sizing:border-box}

/* Slideshow container */
.slideshow-container {
  width: 500px;
  position: relative;
  margin: auto;
}

.mySlides {
    display: none;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor:pointer;
  height: 13px;
  width: 13px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}
        </style>
        <script>
            var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}
        </script>
    </head>
    <body>
        <br><br>
        <div align="center" class="div1">
            <form name="loginform" action="validate_login.jsp">
                
            <h2>Handle:&nbsp;<input type="text" name="handle" value="" size="20" /></h2>
            <h2>Password:&nbsp;<input type="password" name="password" value="" size="20" /></h2>
            
            <input class="b1" type="submit" value="Login" name="login" />
        </form>
        </div>
        
         <div class="slideshow-container">
            <div class="mySlides fade">
    *           <div class="numbertext">1 / 3</div>
                    <img src="quote.jpg" style="width:100%">
               
            </div>
                
              <div class="mySlides fade">
                <div class="numbertext">2 / 3</div>
                    <img src="keepcalm.jpg" style="width:100%">
                
                </div>
             
            <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                    <img src="thinktwice.jpg" style="width:100%">
                
            </div>
                
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>
            <br>
                    
            <div style="text-align:center">
                <span class="dot" onclick="currentSlide(1)"></span>
              <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
                </div>
        </body>
</html>
