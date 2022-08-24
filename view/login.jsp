<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Music Library-Login</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <style>
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
    body {
      background-image: url("../resources/images/Aesthetic2000sR&B.jpg");
    }
  </style>
</head>

<body>
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

  <div id="container">
    <div class="banner">
      <h2>Login to Your Account</h2>
    </div>

    <div class="input-group">
      <label for="email">Email</label>
      <input id="txtEmail" type="email" placeholder="ex. H0712Dub@gmail.com" name="email" />
      <i class="fas fa-check-circle"></i>
      <i class="fas fa-exclamation-circle"></i>
      <small>Error Message</small>
    </div>

    <div class="input-group">
      <label for="password">Password</label>
      <input id="txtPassword" type="password" placeholder="Password" name="password" />
      <i class="fas fa-check-circle"></i>
      <i class="fas fa-exclamation-circle"></i>
      <small>Error Message</small>
    </div>

    <button type="submit" class="button">Submit</button>

  </div>

<script src="script.js"></script>

</body>
</html>