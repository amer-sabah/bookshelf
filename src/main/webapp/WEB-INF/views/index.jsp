<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>     
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<link href="../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<script src="../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="../webjars/jquery/3.0.0/js/jquery.min.js"></script>
<title>Home Page</title>
</head>
<body style='
 background-image: url("https://images.unsplash.com/photo-1593814013328-6041acc27094?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJvb2tzaGVsZnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80");
  background-size: cover;'>

<nav class="navbar navbar-expand-lg navbar-light bg-light"> 

<h3> Book </h3>
 <h1 >Shelf</h1>
<br> &nbsp;&nbsp;&nbsp;
                                <a href="http://localhost:8080/Bookshelf/library/"
								class="nav-item nav-link" style="color:#5D6D7E">Libraries</a>
								
                                <a href="http://localhost:8080/Bookshelf/library/addLibrary"
								class="nav-item nav-link" style="color:#5D6D7E">Add Library</a>
								 
								  <a href="http://localhost:8080/Bookshelf/library/requestes"
								class="nav-item nav-link" style="color:#5D6D7E">Add Library Requests</a>
								 
								   <a href="http://localhost:8080/Bookshelf/book/selectLibrary"
								class="nav-item nav-link"style="color:#5D6D7E">Select Library</a>
								
								<a href="http://localhost:8080/Bookshelf/addBooks/"
								class="nav-item nav-link"style="color:#5D6D7E">Add book to Library</a>
								
								<a href="http://localhost:8080/Bookshelf/bookRating/"
								class="nav-item nav-link"style="color:#5D6D7E">Rate A Book</a>
								
								
								 
								  <a href="http://localhost:8080/Bookshelf/book/increaseQuantity?id=2"
								class="nav-item nav-link" style="color:#5D6D7E">Update Books Quantity</a>
								  <a href="http://localhost:8080/Bookshelf/History/?person_id=1"
							
								style="background-color:#CCD1D1;padding: 8px;"class="navbar-brand"
								>History</a>

	</nav>


</body>

</html>