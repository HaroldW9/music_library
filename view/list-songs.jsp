<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<title>Song List</title>

	<link type="text/css" 
	      rel="stylesheet" 
	      href="${pageContext.request.contextPath}/resources/css/style2.css" />
	      
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
  <style>
    .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0px;
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
  </style>
</head>

<body style="padding: 60px 60px; background-color: gray">

	<div>
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
    </div>

	<div id="wrapper">
		<div id="header" style="width: 100%">
			<h2>Song Library</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!-- put new button: Add Song -->
		
			<input type="button" value="Add Song"
				   onclick="window.location.href='showFormForAdd'; return false;"
				   class="add-button"
			/>

			<!--  add our html table here -->
			<table style="background-color: white">
				<tr>
					<th>Title</th>
					<th>Artist</th>
					<th>Album</th>
					<th>Price</th>
					<th>Action</th>
				</tr>
				
				<!-- loop over and print our songs -->
				<c:forEach var="tempSong" items="${songs}">
				
					<!-- construct an "update" link with song id -->
					<c:url var="updateLink" value="/song/showFormForUpdate">
						<c:param name="songId" value="${tempSong.id}" />
					</c:url>		
					
					<!-- construct an "delete" link with song id -->
					<c:url var="deleteLink" value="/song/delete">
						<c:param name="songId" value="${tempSong.id}" />
					</c:url>
				
					<tr>
						<td> ${tempSong.title} </td>
						<td> ${tempSong.artist} </td>
						<td> ${tempSong.album} </td>
						<td> ${tempSong.price} </td>
						
						<td>
							<!-- display the update link -->
							<a href="${updateLink}" style="padding-right:10px">Update</a>
							
							<a href="${deleteLink}"
							   style="color:red"
							   onclick="if (!(confirm('Are you sure you want to delete this song?'))) return false">Delete</a>
						</td>
						
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>


</body>

</html>