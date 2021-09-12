<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customers</title>
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
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#6bbade",
		endColorstr="#e89ccd", GradientType=1);
}


</style>

</head>
<body>
	<h2 style="text-align: center;">Customer</h2>
	<br>
	<br>

	<table id="displaytable">

		<thead>

		</thead>
		<tbody>
			<c:forEach var="customer" items="${customer}">
				<tr>
					<td text-align="center">${customer.username}&nbsp;&nbsp;</td>

					<td text-align="center">${customer.password}&nbsp;&nbsp;</td>

					<td text-align="center">${customer.email}&nbsp;&nbsp;</td>
				</tr>


			</c:forEach>
		</tbody>
	</table>
</body>
</html>