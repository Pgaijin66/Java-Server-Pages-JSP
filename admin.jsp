<!DOCTYPE html>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>      


<html>
<head>
	<title>Vmovies</title>
	<title>Vmovies</title>
	<meta http-equiv="Contect-Type" content="text/html" charset="utf-8" />
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>
<body>


<div class="container">
		<h1 class="text-center">Welcome to Vmovies</h1>

		<table class="table table-hover">
			<thead>
				<tr>
					<th><h3 class="text">Movies</h3></th>
					<th><h3 class="text">Download</h3></th>
				</tr>
				
			</thead>
			<tbody>
				<tr>
					<td><h4>Journey to mars</h4></td>
					<td><input type="submit" class="btn btn-primary" value="Download"/></td>
				</tr>
				<tr>
					<td><h4>How I met your mother</h4></td>
					<td><input type="submit" class="btn btn-primary" value="Download"/></td>
				</tr>
				<tr>
					<td><h4>Brothers</h4></td>
					<td><input type="submit" class="btn btn-primary" value="Download"/></td>
				</tr>
				<tr>
					<td><h4>Step up 3D</h4></td>
					<td><input type="submit" class="btn btn-primary" value="Download"/></td>
				</tr>
				<tr>
					<td><h4>Dragon ball Z</h4></td>
					<td><input type="submit" class="btn btn-primary" value="Download"/></td>
				</tr>
				<tr>
					<td><h4>Shawshank redemption</h4></td>
					<td><input type="submit" class="btn btn-primary" value="Download"/></td>
				</tr>
				<tr>
					<td><h4>Game of throne</h4></td>
					<td><input type="submit" class="btn btn-primary" value="Download"/></td>
				</tr>
				<tr>
					<td><h4>Intern</h4></td>
					<td><input type="submit" class="btn btn-primary" value="Download"/></td>
				</tr>
				<tr>
					<td><h4>Flash 2016</h4></td>
					<td><input type="submit" class="btn btn-primary" value="Download"/></td>
				</tr>
				<tr>
					<td><h4>KNHB</h4></td>
					<td><input type="submit" class="btn btn-primary" value="Download"/></td>
				</tr>

			</tbody>
		</table>
		<% 
		out.print("Your IP address is : ");

		%>

		<h4><b><%
		out.print(request.getRemoteAddr());
		%></b></h4>
		<span class="pull-left"><a href="/web/upload.jsp"><h4>Upload Movie</h4></a></span>
			
	
		
</div>
	<div class="model-content">
<div class="modal-footer">
	<div clas="col-xs-12">
	<form action="/web/index.jsp" method="POST">

		<button class="btn btn-danger" >Log out</button>
		</form>
	</div>
</div>
</div>




 <h4 class="text-center">&copy <b>Prabesh Thapa</b></h4>





</body>
</html>