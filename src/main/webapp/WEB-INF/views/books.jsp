<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
<meta charset="windows-1256">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">

<style>
.w-50, .w-25, .fs-4 {
	margin-left: 0px;
	margin-top: 4px;
}

.col-3 {
	margin-bottom: 16px;
}
</style>

<script type="text/javascript">
	function search() {
		var text = document.getElementById("searchText").value;
		window.location.href = "http://localhost:8080/Bookshelf/book/search?library="
				+ ${library_id}	+"&name=" + text;
	}
	
</script>


</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="row ">
			<div class="col-4" style="margin-top: 16px; margin-bottom: 16px">
				<a style="text-decoration: none; color: blue"
					href="http://localhost:8080/Bookshelf/book/library?id=${library_id}"
					class="display-6">${library_name}</a>
			</div>
			<div class="col-8">
				<div class="input-group mb-3 w-75 p-3">

					<input id="searchText" type="text" class="form-control"
						placeholder="Search">
					<button id="searchBtn" type="button" class="btn btn-primary"
						onclick="search()">Search</button>

				</div>
			</div>
		</div>
	</div>
	<c:if test="${empty(books)}">
		<h3 style="margin: 32px">Not found any books.</h3>
	</c:if>

	<div class="container">
		<div class="row">
			<c:forEach items="${books}" var="bookInLibrary">
				<c:set var="book" value="${bookInLibrary.getBook() }"></c:set>
				<div class="col-12" style="margin-bottom: 8px">
					<div class="card">
						<div class="card-body  d-flex flex-column">
							<h5 class="card-title">${book.getName() }</h5>
							<div class="card-subtitle text-muted d-flex bd-highlight " >
								<div class="p-2 flex-grow-1 bd-highlight">${book.getCategory().getName() }</div>
								<div class="p-2 bd-highlight"> <a href="http://localhost:8080/Bookshelf/book/?id=${book.getId() }&library=${library_id}" class="btn btn-outline-success ">Open Book page</a></div>
							</div>
						</div>
					</div>
				</div>

			</c:forEach>
		</div>
	</div>





</body>
</html>
