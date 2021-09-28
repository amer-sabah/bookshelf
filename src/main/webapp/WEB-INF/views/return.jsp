<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
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

<table class="table table-hover" >
	<thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">Book id</th>
      <th scope="col">Book Name</th>
      <th scope="col">Library Name</th>
      <th scope="col">#Days</th>
      <th scope="col">Customer Name</th>
      <th scope="col"></th>
    </tr>
  </thead>

	<c:forEach var="book" items="${borrowedBooks}">
		
		<tbody>
			 <tr>
      <th scope="row">${book.getId() }</th>
      <td>${book.getBook().getId() }</td>
      <td>${book.getBook().getBook().getName() }</td>
      <td>${book.getBook().getLibrary().getLibrary_name() }</td>
      <td>${book.getNumber_of_borrow_days() }</td>
      <td>${book.getCustomer().getName() }</td>
      <td><button class="btn btn-outline-success" value="${book.getId() }" name="returnedBook" onclick="returnBook(this)" > return </button></td>
    </tr>
		 
			
							
		</tbody>
		
	</c:forEach>
	</table>
<!----> 	<ft:footer/> 
	<script type="text/javascript">
		
		function returnBook(returnButton) {
			
			window.location.href = "http://localhost:8080/Bookshelf/borrowoperations/returned?returnedBook=" + returnButton.value;
			
		}
	
	</script>

</body>
</html>