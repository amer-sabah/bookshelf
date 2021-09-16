<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
</head>
<body>
	<div class="container" style="padding: 30px">
		<div class="row" style="margin-top: 30px;">
			<c:forEach var="library" items="${libraries}">
				<div class="col-md-3" style="margin: 30px">
					<br>
					<div class="card"
						style="height: 200px; width: 300px; background-color: #F8F8FF;">
						<div class="card-body">
							<h5 class="card-title text-center">${library.getLibrary_name()}</h5>
							<hr>
							<h5 class="card-title text-center text-muted">${library.getLocation()}</h5>
							<p class="card-text text-center text-muted">${library.getDescription()}</p>

						</div>
						<div class="col text-center">
<!-- 							<a href="increaseQuantity?id=${library.getLibrary_id()}"
								class="btn btn-outline-primary me-2"> Select</a>
								 -->
								 <a href="library?id=${library.getLibrary_id()}"
								 class="btn btn-outline-primary me-2"> Visit library</a>
						</div>
						<br>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>