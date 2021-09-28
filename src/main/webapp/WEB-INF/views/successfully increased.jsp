<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ft" uri="tags"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Successfully</title>

<style type="text/css">

	.box {
	border: solid 1px #dee2e6; 
	width : 50%;
	background-color: #F8F8FF;
	margin-left: 25%;
	margin-top: 15%;
	padding: 30px;
}




</style>
</head>
<body >
<jsp:include page="header.jsp"></jsp:include>
	<div align="center" class="box">
		
		<h3>Book: ${bookName}</h3>
		<h3>Book Status: ${bookStatus}</h3>
		<h3>Old Quantity: ${quantityBefore}</h3>
		<h3>New Quantity: ${quantityAfter}</h3>
	</div>
	<ft:footer/>
</body>
</html>