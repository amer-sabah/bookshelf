<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--  -->
<%@ taglib prefix="ft" uri="tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>${books.get(0).getLibrary().getLibrary_name() }Books</title>
<style>
.checked {
	color: orange;
}

span {
	margin: 5px;
}
</style>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div align="center" style="margin-top: 100px;">


		<table class="table table-hover"
			style="margin-top: 50px; margin-left: 50px; width: 55%; border: solid 1px #dee2e6">


			<c:forEach var="book" items="${books}">

				<tr>
					<td>${book.getBook().getName() }</td>
					<td>${book.getStatus() }</td>
					<c:choose>
						<c:when
							test="${bookRatingRepository.findRateByBookID(book.getId()) == 1 }">
							<td><span class="fa fa-star checked" style=""></span><span
								class="fa fa-star "></span><span class="fa fa-star "></span><span
								class="fa fa-star"></span><span class="fa fa-star"></span></td>
						</c:when>

						<c:when
							test="${bookRatingRepository.findRateByBookID(book.getId()) == 2 }">
							<td><span class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span class="fa fa-star "></span><span
								class="fa fa-star"></span><span class="fa fa-star"></span></td>
						</c:when>

						<c:when
							test="${bookRatingRepository.findRateByBookID(book.getId()) == 3 }">
							<td><span class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span class="fa fa-star"></span><span
								class="fa fa-star"></span></td>
						</c:when>

						<c:when
							test="${bookRatingRepository.findRateByBookID(book.getId()) == 4 }">
							<td><span class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span class="fa fa-star"></span>
							</td>
						</c:when>

						<c:when
							test="${bookRatingRepository.findRateByBookID(book.getId()) == 5 }">
							<td><span class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span></td>
						</c:when>
						<c:otherwise>
							<td><span class="fa fa-star "></span><span
								class="fa fa-star "></span><span class="fa fa-star "></span><span
								class="fa fa-star "></span><span class="fa fa-star "></span></td>
						</c:otherwise>
					</c:choose>


					<td><button name="book" class="btn btn-outline-primary"
							value="${book.getId() }" onclick="editBook(this)"
							style="margin-right: -30px;">Edit</button></td>
				</tr>


			</c:forEach>

		</table>
		<a class="btn btn-outline-primary"
			href="http://localhost:8080/Bookshelf/addBooks/" role="button">Add
			Book</a>
	</div>
	<!---->
	<ft:footer />
	<script type="text/javascript">
		function editBook(editButton) {

			window.location.href = "http://localhost:8080/Bookshelf/book/edit?book_id="
					+ editButton.value;

		}

	
	</script>


</body>
</html>