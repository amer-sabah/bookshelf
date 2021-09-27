<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
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
      <th scope="col">Book Name</th>
      <th scope="col">Book Quantity</th>
      <th scope="col">Book Status</th>
      <th scope="col">Book Rating</th>
      <th scope="col"></th>

    </tr>
  </thead>

	<c:forEach var="book" items="${books}">

		<tr>
      <th scope="row">${book.getId() }</th>
      <td>${book.getBook().getName() }</td>
      <td>${book.getQuantity() }</td>
      <td>${book.getStatus() }</td>
      <td>5 Stars</td>
      <td><button name="book" class="btn btn-outline-success" value="${book.getId() }" onclick="editBook(this)"> Edit </button></td>
      </tr>
		
	
	</c:forEach>
</table>
 <script type="text/javascript">
 
 	function editBook(editButton) {
 		
 		window.location.href = "http://localhost:8080/Bookshelf/book/edit?book_id=" + editButton.value;
 		
		
	}
 
 </script>

</body>
</html>