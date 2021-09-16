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
<title>Home Page</title>
</head>
<body>

	<div class="container" style="padding: 30px">
		<div class="row" style="margin-top: 30px;">
				<div class="col-md-3" style="margin: 30px">
					<br>
					<div class="card"
						style="height: 200px; width: 300px; background-color: #F8F8FF;">
						<div class="card-body">
							<h5 class="card-title text-center">Add Library Page</h5>
							<hr>

						</div>
						<div class="col text-center">
<!-- 							<a href="increaseQuantity?id=${library.getLibrary_id()}"
								class="btn btn-outline-primary me-2"> Select</a>
								 -->
								 <a href="http://localhost:8080/Bookshelf/library/"
								 class="btn btn-outline-primary me-2"> Go to Page</a>
						</div>
						<br>
					</div>
					
				</div>
				<!-- ***************************************************************** -->
				
				<div class="col-md-3" style="margin: 30px">
					<br>
					<div class="card"
						style="height: 200px; width: 300px; background-color: #F8F8FF;">
						<div class="card-body">
							<h5 class="card-title text-center">Add Library Requests Page</h5>
							<hr>

						</div>
						<div class="col text-center">
<!-- 							<a href="increaseQuantity?id=${library.getLibrary_id()}"
								class="btn btn-outline-primary me-2"> Select</a>
								 -->
								 <a href="http://localhost:8080/Bookshelf/library/requestes"
								 class="btn btn-outline-primary me-2"> Go to Page</a>
						</div>
						<br>
					</div>
				</div>
				
				<!-- ***************************************************************** -->
		<div class="col-md-3" style="margin: 30px">
					<br>
					<div class="card"
						style="height: 200px; width: 300px; background-color: #F8F8FF;">
						<div class="card-body">
							<h5 class="card-title text-center">Select Library Page</h5>
							<hr>

						</div>
						<div class="col text-center">
<!-- 							<a href="increaseQuantity?id=${library.getLibrary_id()}"
								class="btn btn-outline-primary me-2"> Select</a>
								 -->
								 <a href="http://localhost:8080/Bookshelf/book/selectLibrary"
								 class="btn btn-outline-primary me-2"> Go to Page</a>
						</div>
						<br>
					</div>
				</div>
				
				<!-- ***************************************************************** -->
		<div class="col-md-3" style="margin: 30px">
					<br>
					<div class="card"
						style="height: 200px; width: 300px; background-color: #F8F8FF;">
						<div class="card-body">
							<h5 class="card-title text-center">Update Books Quantity Page</h5>
							<hr>

						</div>
						<div class="col text-center">
<!-- 							<a href="increaseQuantity?id=${library.getLibrary_id()}"
								class="btn btn-outline-primary me-2"> Select</a>
								 -->
								 <a href="http://localhost:8080/Bookshelf/book/increaseQuantity?id=2"
								 class="btn btn-outline-primary me-2"> Go to Page</a>
						</div>
						<br>
					</div>
				</div>
				
						<!-- ***************************************************************** -->
		<div class="col-md-3" style="margin: 30px">
					<br>
					<div class="card"
						style="height: 200px; width: 300px; background-color: #F8F8FF;">
						<div class="card-body">
							<h5 class="card-title text-center">Buy Operation Page</h5>
							<hr>

						</div>
						<div class="col text-center">
<!-- 							<a href="increaseQuantity?id=${library.getLibrary_id()}"
								class="btn btn-outline-primary me-2"> Select</a>
								 -->
								 <a href="http://localhost:8080/Bookshelf/buy?person_id=3&book_id=33"
								 class="btn btn-outline-primary me-2"> Go to Page</a>
						</div>
						<br>
					</div>
				</div>
		</div>
		
	</div>

</body>
</html>