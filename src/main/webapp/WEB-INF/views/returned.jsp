<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center" style="border: solid 1px #dee2e6; width : 50%; top: 50%;left: 50%; position: absolute; transform: translate(-50%, -50%); padding: 30px; background-color: #F8F8FF; " class="mb-3">

	<h4>Book Name: ${returnedBook.getBook().getBook().getName() }</h4>
	<h4>New Quantity: ${returnedBook.getBook().getQuantity() }</h4>
	<h4>Returned Successfully</h4>
	</div>
</body>
</html>