<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Music Library-Home</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <style>
  body {
    font: 400 15px/1.8 Lato, sans-serif;
    color: #777;
  }
  h3 {
    margin: 10px 0 30px 0;
    letter-spacing: 10px;      
    font-size: 20px;
    color: #111;
  }
  .container {
    padding: 80px 120px;
  }
  
  .carousel-inner img {
    width: 100%; /* Set width of carousel image to 100% */
    margin: auto;
  }
  .carousel-caption h3 {
    color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }  
  .navbar {
    font-family: Montserrat, sans-serif;
    margin-bottom: 0;
    background-color: #2d2d30;
    border: 0;
    font-size: 11px !important;
    letter-spacing: 4px;
    opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
    color: #fff !important;
  }
  .navbar-nav li.active a {
    color: #fff !important;
    background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
  }
  .open .dropdown-toggle {
    color: #fff;
    background-color: #555 !important;
  }
  .dropdown-menu li a {
    color: #000 !important;
  }
  .dropdown-menu li a:hover {
    background-color: red !important;
  }
  footer {
    background-color: #2d2d30;
    color: #f5f5f5;
    padding: 32px;
  }
  footer a {
    color: #f5f5f5;
  }
  footer a:hover {
    color: #777;
    text-decoration: none;
  }  
  </style>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="home.html" style="padding-left:5px"><img src="${pageContext.request.contextPath}/resources/images/musicLogo.png" style="display:inline; width: 25px; height:25px; padding-right:5px"/>MUSIC LIBRARY</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="http://localhost:8091/MusicLibrary/user/home">HOME</a></li>
        <li><a href="http://localhost:8091/MusicLibrary/user/login">LOGIN</a></li>
        <li><a href="http://localhost:8091/MusicLibrary/user/showFormForAdd">SIGN UP</a></li>
        <li><a href="http://localhost:8091/MusicLibrary/song/list">SONGS</a></li>
        <li><a href="http://localhost:8091/spring-crm-rest/api/customers">B2B</a></li> <!-- Refers to spring-crm-rest -->
        <li><a href="http://localhost:9090/login">ADMIN</a></li>
      </ul>
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="${pageContext.request.contextPath}/resources/images/johnLegendAllOfMe.gif" alt="John Legend playing piano gif" width="1200" height="700">
        <div class="carousel-caption">
          <h3>Feel the Nostalgia!</h3>
          <p>Take yourself back to the golden era of R&B music and relive the good times!</p>
        </div>      
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/beyonceHD.gif" alt="Beyonce dancing gif" width="1200" height="700">
        <div class="carousel-caption">
          <h3>Just Dance!</h3>
          <p>Create playlists of your favorite R&B hits and get the party started!</p>
        </div>      
      </div>
    
      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/usherHD.gif" alt="Following Usher gif" width="1200" height="700">
        <div class="carousel-caption">
          <h3>Come Join Us!</h3>
          <p>Register by signing up to have full access to all of the 2000s R&B music you desire!</p>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>

<!-- Container (The Band Section) -->
<div id="band" class="container text-center">
  <h3>MUSIC LIBRARY</h3>
  <p><em>We love music!</em></p>
  <p>Come and relive the 2000s by listening to your favorite R&B artists of that decade. Sign up and feel the nostalgia of hit 
    songs like "Try Again" by Aaliyah, Mary J Blige's hit song "No More Drama", "Ordinary People" by John Legend and many more!</p>
  <br>
</div>

<!-- Image of R&B Albums -->
<img src="${pageContext.request.contextPath}/resources/images/Early2000sR&B.jpg" style="width:100%">

<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="home.html" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span> <!-- Add up arrow in footer -->
  </a><br><br> <!-- 2 line breaks -->
  <p>Copyright &copy; <script>document.write(new Date().getFullYear())</script> Music Library</p>
</footer>

<script src="script.js"></script>
</body>
</html>