<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html SYSTEM "about:legacy-compat">
<html>
<head>
<meta charset="ISO-8859-1">
<title>buy book</title>
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
	background-color: #485F77;
	color: #f2f2f2;
	font-size: 17px;
	border: 0;
	position: absolute;
	transition: .5s ease;
	top: 90%;
	left: 90%;
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

tr:nth-child(even), .book {
	background-color: #f2f2f2
}
</style>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<br />
	<h2 style="text-align: center;">Buy Book</h2>
	<br>


	<div class="book">

		<h4 style="text-align: center; font-weight: bold;">${buy.book.getName()}</h4>
		<br>

		<h6 style="text-align: center;">${buy.book.getDescription()}</h6>
		<h5 style="text-align: center; font-weight: bold; display: inline">Author
			:</h5>
		<p style="display: inline">${buy.book.getAuthor()}</p>

		<br />

		<h5 style="text-align: center; font-weight: bold; display: inline">Category
			:</h5>
		<p style="display: inline">${buy.book.category.getName()}</p>
		<br /> <br />
		<h5 style="text-align: center; font-weight: bold;">Price
			${buy.book.getPrice()}</h5>

		<br />

	</div>


	<table id="displaytable">

		<thead>

		</thead>
		<tbody>
			<tr>
				<td style="text-align: center;"><b>Library </b>&nbsp;&nbsp;${buy.library.getLibrary_name()}
					&nbsp;&nbsp;/&nbsp;&nbsp;${buy.library.getLocation()}&nbsp;&nbsp;</td>
			</tr>


		</tbody>
	</table>
	<form action="Add">
		<input type="hidden" id="person_id" name="person_id"
			value='${param.person_id}'> <input type="hidden" id="book_id"
			name="book_id" value='${param.book_id}'>

		<button class="but" type='submit' onclick="buy()">Buy</button>
	</form>
	<script>
		function buy() {

			alert("Book purchased successfully ..! ");
		}
	</script>
</body>
</html>
