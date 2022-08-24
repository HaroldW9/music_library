<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Add Song to Playlist</title>
	
	<link type="text/css" 
	      rel="stylesheet" 
	      href="${pageContext.request.contextPath}/resources/css/style.css">
	
	<link type="text/css" 
	      rel="stylesheet" 
	      href="${pageContext.request.contextPath}/resources/css/add-user-style.css">
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Song Administrator</h2>
		</div>
	</div>

	<div id="container">
		<h3>Add Song to Playlist</h3>
	
		<form:form action="saveSong" modelAttribute="song" method="POST">
		
			<!-- need to associate this data with song id -->
			<form:hidden path="id" />
		
			<table>
				<tbody>
					<tr>
						<td><label>Title:</label></td>
						<td><form:input path="title" /></td>
					</tr>
				
					<tr>
						<td><label>Artist:</label></td>
						<td><form:input path="artist" /></td>
					</tr>

					<tr>
						<td><label>Album:</label></td>
						<td><form:input path="album" /></td>
					</tr>
					
					<tr>
						<td><label>Price:</label></td>
						<td><form:input path="price" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/user/list/songs">Back to List</a>
		</p>
	
	</div>

</body>

</html>