<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
body {
	font-family: 'Poppins', sans-serif;
	background: rgb(107, 186, 222);
	background: -moz-linear-gradient(90deg, rgba(107, 186, 222, 1) 0%,
		rgba(232, 156, 205, 1) 100%);
	background: -webkit-linear-gradient(90deg, rgba(107, 186, 222, 1) 0%,
		rgba(232, 156, 205, 1) 100%);
	background: linear-gradient(90deg, rgba(107, 186, 222, 1) 0%,
		rgba(232, 156, 205, 1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#6bbade",
		endColorstr="#e89ccd", GradientType=1);
}

.but {
	min-width: 9ch;
	min-height: 40px;
	background-color: #485F77;
	color: #f2f2f2;
	font-size: 17px;
	border: 0;
	position: absolute;
	transition: .5s ease;
	top: 85%;
	left: 90%;
}

table {
	border-spacing: 0;
	width: 50%;
	margin-left: auto;
	margin-right: auto;
}

tr {
	position: relative;
	display: block;
	padding: 10px 20px;
	margin-bottom: 10px;
	background-color: #fff;
	border: 1px solid rgba(0, 0, 0, .125);
	border-top-left-radius: .25rem;
	border-top-right-radius: 5.25rem;
	border-bottom-left-radius: 5.25rem;
	border-bottom-right-radius: .25rem;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}
</style>

</head>
<body>
	<h2 style="text-align: center;">Buy Book</h2>
	<br>


	<table id="displaytable">

		<thead>

		</thead>
		<tbody>
			<tr>
				<td text-align="center"><b>Library Name :</b>&nbsp;&nbsp;${buy.library.getLibrary_name()}&nbsp;&nbsp;</td>
			<tr>
				<td text-align="center"><b>Library Location :</b>&nbsp;&nbsp;${buy.library.getLocation()}&nbsp;&nbsp;</td>
			</tr>
			<tr>
			<tr>
				<td text-align="center"><b>Book Name :</b>&nbsp;&nbsp;
					${buy.book.getName()}&nbsp;&nbsp;</td>

				<td text-align="center"><b> Auther :</b>&nbsp;&nbsp;
					${buy.book.getAuthor()}&nbsp;&nbsp;</td>
				<td text-align="center"><b>Category :</b>&nbsp;&nbsp;
					${buy.book.category.getName()}&nbsp;&nbsp;</td>

				<td text-align="center"><b>Price :</b>&nbsp;&nbsp;
					${buy.book.getPrice()}&nbsp;&nbsp;</td>

				<td text-align="center"><b>Description :</b>&nbsp;&nbsp;
					${buy.book.getDescription()}&nbsp;&nbsp;</td>
			</tr>

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