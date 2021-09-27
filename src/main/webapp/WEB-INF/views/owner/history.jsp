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

.col-6 {
	margin-bottom: 16px;
}
.btn-check, .btn{
	margin-left: 8px;
	margin-right: 8px;
}
</style>

<script type="text/javascript">
	var filter = "bookName";
	function search() {
		var text = document.getElementById("searchText").value;
		window.location.href = "http://localhost:8080/Bookshelf/owner/history/search?library="
				+${library_id}+"&name=" + text + "&filter=" + filter;

	}

	function selectFilter(id) {
		filter = id;
	}

	function displayBorrowHistory() {
		var col = document.getElementById('borrowCol');
		col.innerHTML += "<c:forEach items='${borrow}' var='i'>"
				+ "<a href=\"#\" class=\"list-group-item list-group-item-action\" aria-current=\"true\">"
				+ "<div class=\"d-flex w-100 justify-content-between\">"
				+ "<h5 class=\"mb-1\">${i.getBook().getBook().getName() }</h5>"
				+ "<small>${i.getAcccept() }</small>"
				+ "</div> <div class=\"d-flex w-100 justify-content-between\">"
				+ "<p class=\"mb-1\">${i.getCustomer().getName() }</p> </div></a></c:forEach>";

	}
</script>



<title>${library_name }-history</title>
</head>
<body style="background-color: #E8F5E9" onload="displayBorrowHistory()">

	<div class="container">
		<div class="row ">
			<div class="col-4" style="margin-top: 16px; margin-bottom: 16px">
				<a style="text-decoration: none; color: black"
					href="http://localhost:8080/Bookshelf/book/library?id=${library_id}"
					class="display-6">${library_name }</a>

			</div>
			<div class="col-8">
				<div class="input-group mb-3 w-100 p-3">

					<input id="searchText" type="text" class="form-control"
						placeholder="Search">
					<button id="searchBtn" type="button" class="btn btn-success"
						onclick="search()">Search</button>

					<input type="radio" class="btn-check" name="searchFilter"
						id="bookName" autocomplete="off"
						onclick="selectFilter('bookName') " checked> <label
						class="btn btn-outline-secondary" for="bookName">Book name</label>
					<input type="radio" class="btn-check" name="searchFilter"
						id="customerName" autocomplete="off"
						onclick="selectFilter('customerName')"> <label
						class="btn btn-outline-secondary" for="customerName">Customer
						name</label>



				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row ">
			<div class="col-6 list-group" id="borrowCol">
				<h4 style="text-align: center">
					<span class="badge w-50 rounded-pill bg-primary">Borrow
						history</span>
				</h4>
				<c:if test="${empty(borrow)}">
					<h4 style="margin: 32px">The history is empty.</h4>
				</c:if>

			</div>

			<div class="col-6 list-group">
				<h4 style="text-align: center">
					<span class="badge  w-50 rounded-pill bg-warning">Buy
						history</span>
				</h4>
				<c:if test="${empty(buy)}">
					<h4 style="margin: 32px">The history is empty.</h4>
				</c:if>
				<c:forEach items="${buy }" var="i">
					<a href="#" class="list-group-item list-group-item-action"
						aria-current="true">
						<div class="d-flex w-100 justify-content-between">
							<h5 class="mb-1">${i.getBooksLibrary().getBook().getName() }</h5>
							<small>${i.getBuy_date() }</small>
						</div>
						<p class="mb-1">${i.getPerson().getName() }</p>
					</a>
				</c:forEach>
			</div>
		</div>
	</div>

<a href="http://localhost:8080/Bookshelf/owner/history/sort?library=1&sortby=customerName&asc=-1">Click here to sort!</a>

	<!-- Bootstrap scripts   ************************************************* -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
		crossorigin="anonymous"></script>


</body>
</html>