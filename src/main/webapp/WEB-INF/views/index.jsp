<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="ft" uri="tags"%>
<html>
<head>
<title>Bookshelf-Home Page</title>

<script type="text/javascript">
	function search() {
		var text = document.getElementById("searchText").value;
		window.location.href = "http://localhost:8080/Bookshelf/book/mainsearch?&name="
				+ text;
	}
</script>


</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<br>


	<div class="input-group mb-3 w-50"
		style="margin-left: 25%; margin-top: 16px">
		<input id="searchText" type="text" class="form-control"
			placeholder="Search">
		<button id="searchBtn" type="button" class="btn btn-primary"
			onclick="search()">Search</button>
	</div>
	<br>
	<h4 style="margin-left: 10%; margin-top: 16px">Most popular</h4>


	<div class="container " >
		<div class="row" style="width: 80%;margin-left: 8%;">
			<c:forEach items="${ popularBooks}" var="book">
				<div class="col-3 w-25" style="margin-bottom: 8px">
					<a class="card h-100 text-dark bg-light" href="http://localhost:8080/Bookshelf/book/main?id=${book.getId() }" style="text-decoration:none" >
						<div class="card-body ">
							<h5 class="card-title">${book.getName() }</h5>
							<div class="card-subtitle text-muted">
								${book.getCategory().getName() }</div>
							<div>${book.getDescription().substring(0,40)}...</div>
						</div>
					</a>
				</div>
			</c:forEach>

		</div>
	</div>



	<h4 style="margin-left: 10%; margin-top: 16px">New books</h4>
	<div class="container ">
		<div class="row" style="width: 80%;margin-left:8%;">
			<c:forEach items="${newBooks}" var="book">
				<div class="col-3 w-25" style="margin-bottom: 8px">
					<a class="card h-100 text-dark bg-light" href="http://localhost:8080/Bookshelf/book/main?id=${book.getId() }" style="text-decoration:none" >
						<div class="card-body ">
							<h5 class="card-title">${book.getName() }</h5>
							<div class="card-subtitle text-muted">
								${book.getCategory().getName() }</div>
							<div>${book.getDescription().substring(0,40)}...</div>
						</div>
					</a>
				</div>
			</c:forEach>

		</div>
	</div>

<br>
<br>

<ft:footer/>
</body>
</html>