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

<title>${library_name}-Books</title>
</head>
<body style="background-color:#E8F5E9">

	<c:set var="colors" scope="application">"#BC3067","#77E630","#02A2EE","#e54b30","#ff1985" </c:set>

	<div class="container">
		<div class="row ">
			<div class="col-4">
				<h3 class="display-6" style="margin: 16px">${library_name}</h3>
			</div>
			<div class="col-8">
				<div class="input-group mb-3 w-75 p-3">

					<input id="searchText" type="text" class="form-control"
						placeholder="Search">
					<button id="searchBtn" type="button" class="btn btn-success"
						onclick="search()">Search</button>

				</div>
			</div>
		</div>
	</div>
	<c:if test="${empty(books)}">
		<h3 style="margin:32px">There is no available books.</h3>
	</c:if>
	
	<div class="container">
		<div class="row">
			<c:forEach items="${books}" var="bookInLibrary">
				<c:set var="book" value="${bookInLibrary.getBook() }"></c:set>
				<div class="col-3">
					<div class="card h-100">
						<div class="card-body  d-flex flex-column">
							<h4 class="card-title">${book.getName() }</h4>
							<h6 class="card-subtitle mb-2 text-muted">${book.getCategory().getName() }</h6>
							<p class="card-text">By ${book.getAuthor() }</p>
							<div class="align-self-start mt-auto">
							<h6>Available copies: <c:out value="${bookInLibrary.getQuantity()}"></c:out></h6>
								<h5 class="card-title" style="color:#dc3545">$ ${book.getPrice() }</h5>
								<c:choose>
		 							<c:when test="${bookInLibrary.getStatus()== 'borrow'}">
										<a href="#" class="btn btn-primary  ">Borrow</a>
									</c:when>
									<c:otherwise>
										<a href="#" class="btn btn-warning ">Buy</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>

			</c:forEach>
		</div>
	</div>

</body>
</html>