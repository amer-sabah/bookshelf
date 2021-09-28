<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="ft" uri="tags"%>
<!DOCTYPE html SYSTEM "about:legacy-compat">
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>${buy.book.getName()}book</title>
<link href="../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<script src="../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="../webjars/jquery/3.0.0/js/jquery.min.js"></script>
<style>
.but {
	min-width: 9ch;
	min-height: 40px;
	background-color: orange;
	color: #f2f2f2;
	font-size: 17px;
	border: 0;
	position: absolute;
	transition: .5s ease;
	top: 90%;
	left: 90%;
}
.checked {
	color: orange;
}

table, .book {
	border-spacing: 0;
	width: 50%;
	margin-left: auto;
	margin-right: auto;
}

tr, .book {
	position: relative;
	display: block;
	padding: 12px 25px;
	margin-bottom: 10px;
	background-color: #fff;
	
	border: 1px solid rgba(0, 0, 0, .125);
}


</style>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	
		<br />
		<h3 style="text-align: center; font-weight: bold;">${buy.book.getName()}</h3>
		<br>


	


		<div class="book">
		<div style="text-align: center;">
<c:choose>
						<c:when
							test="${ bookRatingRepository.findRateByBookID(param.book_id)  == 1 }">
							<span class="fa fa-star checked" style=""></span><span
								class="fa fa-star "></span><span class="fa fa-star "></span><span
								class="fa fa-star"></span><span class="fa fa-star"></span>
						</c:when>

						<c:when
							test="${ bookRatingRepository.findRateByBookID(param.book_id) == 2 }">
							<span class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span class="fa fa-star "></span><span
								class="fa fa-star"></span><span class="fa fa-star"></span>
						</c:when>

						<c:when
							test="${ bookRatingRepository.findRateByBookID(param.book_id)  == 3 }">
							<span class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span class="fa fa-star"></span><span
								class="fa fa-star"></span>
						</c:when>

						<c:when
							test="${ bookRatingRepository.findRateByBookID(param.book_id)  == 4 }">
							<span class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span class="fa fa-star"></span>
							
						</c:when>

						<c:when
							test="${ bookRatingRepository.findRateByBookID(param.book_id)  == 5 }">
							<span class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span><span
								class="fa fa-star checked"></span>
						</c:when>
						<c:otherwise>
							<span class="fa fa-star "></span><span
								class="fa fa-star "></span><span class="fa fa-star "></span><span
								class="fa fa-star "></span><span class="fa fa-star "></span>
						</c:otherwise>
					</c:choose>

</div>


	
			<br>
			<h5 style="text-align: center; font-weight: bold; display: inline">Author
				:</h5>
			<p style="display: inline">${buy.book.getAuthor()}</p>

			<br />

			<h5 style="text-align: center; font-weight: bold; display: inline">Category
				:</h5>
			<p style="display: inline">${buy.book.category.getName()}</p>

			<br> <br>
			<h5 style="text-align: center; font-weight: bold; display: inline">Description
				:</h5>
			<p style="display: inline">${buy.book.getDescription()}</p>

			<br /> <br />
			<h5 style="text-align: center; font-weight: bold;">Price
				${buy.book.getPrice()}</h5>

			<br />

		</div>


		<h6 style="text-align: center;">
			<b>Library </b>&nbsp;&nbsp;${buy.library.getLibrary_name()}
			&nbsp;&nbsp;/&nbsp;&nbsp;${buy.library.getLocation()}&nbsp;&nbsp;
		</h6>


		<br>
		<br>
		<form action="Add">
			<input type="hidden" id="person_id" name="person_id"
				value='${param.person_id}'> <input type="hidden"
				id="book_id" name="book_id" value='${param.book_id}'>
			<c:choose>
				<c:when test="${buy.status== 'buy'}">
					<button class="but" type='submit' onclick="buy()">${buy.status}</button>
				</c:when>
			</c:choose>

		</form>
		<c:choose>
			<c:when test="${buy.status== 'borrow'}">
				<button class="but" type='submit' onclick="borrow(${param.book_id})">${buy.status}</button>
			</c:when>
		</c:choose>

		<script>
		function buy() {

			alert("Book purchased successfully ..! ");
			window.location.href = "http://localhost:8080/Bookshelf/";
		}
		
		function borrow(id){
			window.location.href = "http://localhost:8080/Bookshelf/borrowoperations?id="+id;
		}
	</script>
		<br>
		<br><br>
		<br>
<br>
		<br><br>
		<br>		<ft:footer />
</body>
</html>
