<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="windows-1256">
<title>${library_name}-Books</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">


<style>
.dropdown-menu a:hover {
	background-color: #0d6efd;
	color: white
}

.w-50, .w-25, .fs-4 {
	margin-left: 0px;
	margin-top: 4px;
}

.col-3 {
	margin-bottom: 16px;
}
</style>



</head>
<body>
	<div style="background-color: #d7d7d7; padding: 8px">
		<a href="http://localhost:8080/Bookshelf/"
			style="color: black; text-decoration: none; margin: 8px;"
			class="fs-2">BookShelf</a> <a
			href="http://localhost:8080/Bookshelf/library/"
			style="color: black; text-decoration: none; margin-left: 24px;"
			class="fs-5">Add your library</a> <a
			href="http://localhost:8080/Bookshelf/book/selectLibrary"
			style="color: black; text-decoration: none; margin-left: 24px;"
			class="fs-5">All libraries</a> <span class="dropdown"> <img
			class="btn dropdown-toggle rounded float-end"
			data-bs-toggle="dropdown"
			style="width: 45px; height: 45px; padding: 0px; margin-right: 24px"
			src="https://www.fridgio.co/assets/img/dashboard/user.png"/>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="#">Log in</a></li>
				<li><a class="dropdown-item" href="#">Sign up</a></li>

			</ul>
		</span>



	</div>



	<!-- Bootstrap scripts   ************************************************* -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
		crossorigin="anonymous"></script>

</body>
</html>