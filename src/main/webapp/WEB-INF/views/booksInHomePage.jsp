<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="ft" uri="tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Search result</title>
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


	<div class="input-group mb-3 w-50"
		style="margin-left: 25%; margin-top: 16px">
		<input id="searchText" type="text" class="form-control"
			placeholder="Search">
		<button id="searchBtn" type="button" class="btn btn-primary"
			onclick="search()">Search</button>
	</div>
	

	<c:if test="${empty(books)}">
		<h3 style="margin: 32px">Not found any books.</h3>
	</c:if>

	<div class="container">
		<div class="row">
			<c:forEach items="${books}" var="book">
				<div class="col-12" style="margin-bottom: 8px">
					<div class="card">
						<div class="card-body  d-flex flex-column">
							<h5 class="card-title">${book.getName() }</h5>
							<div class="card-subtitle text-muted d-flex bd-highlight ">
								<div class="p-2 flex-grow-1 bd-highlight">${book.getCategory().getName() }</div>
								<div class="p-2 bd-highlight">
									<a
										href="http://localhost:8080/Bookshelf/book/main?id=${book.getId() }"
										class="btn btn-outline-success ">Open Book page</a>
								</div>
							</div>
						</div>
					</div>
				</div>

			</c:forEach>
		</div>
	</div>
<br>
<br>
<ft:footer/>
</body>
</html>