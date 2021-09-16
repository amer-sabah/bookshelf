<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Increase Quantity</title>
</head>
<body>
	<div align="center" style="border: solid 1px #dee2e6; width : 50%; top: 50%;left: 50%; position: absolute; transform: translate(-50%, -50%); padding: 30px; background-color: #F8F8FF; " class="mb-3">
		<h2>Library: ${library}</h2>


		<form action="successfully increased" onsubmit="return submitForm(this)">
			

			<select id="selectBook" name="book" class="form-select form-select-sm"  style="width : 30%; margin : 30px"
				aria-label="Default select example">
				<option value="-1" selected="selected">Select Book</option>
				<c:forEach var="book" items="${books}">

					<option value="${book.getId()}"><c:out
							value="${book.getBook().getName()}"></c:out>
						(${book.getStatus()})
					</option>

				</c:forEach>


			</select>
			<label class="form-label">Quantity:</label> <input id="quantityInput" type="text" name="quantity"  class="form-control" style="width : 30%;">
			<input type="submit" value="Submit" class="btn btn-primary" style=" margin-top : 30px">
		</form>
	</div>
	
	<script type="text/javascript">
	
		function submitForm(formObject) {
			
			var input = document.getElementById('quantityInput');
			
			if(formObject['selectBook'].value == -1){
				
				console.log('please, Choose a Book');
				alert('please, Choose a Book');
				return false;
				
			}
			
			if(input.value.length == 0){
				console.log('please, Enter Quantitya');
				alert('please, Enter Quantity');
				return false;
			}
			console.log(input.value);
			
		}
	
	</script>

</body>
</html>