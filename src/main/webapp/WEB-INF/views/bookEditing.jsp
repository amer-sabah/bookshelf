<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ft" uri="tags"%>     
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center" style="border: solid 1px #dee2e6; width : 50%; top: 50%;left: 50%; position: absolute; transform: translate(-50%, -50%); padding: 30px; background-color: #F8F8FF; " class="mb-3">
	<h1> Name: ${book.getBook().getName() }</h1>
	<h1> Quantity: ${book.getQuantity()}</h1>
	<h1> Status: ${book.getStatus() }</h1>
	<form action="successfully increased" onsubmit="return submitForm(this)">
		<label class="form-label">New Quantity:</label> <input id="quantityInput" type="text" name="quantity"  class="form-control" style="width : 30%;">
			<button name="book" type="submit" value="${book.getId() }" class="btn btn-primary" style="margin-top: 30px">Submit</button>
	</form>
	
	</div>
	<script type="text/javascript">
	
	function submitForm(formObject) {
		
		var input = document.getElementById('quantityInput');
		

		
		if(input.value.length == 0){
			console.log('please, Enter Quantitya');
			alert('please, Enter Quantity');
			return false;
		}

		
	}

	
	</script>

</body>
</html>