<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="ft" uri="tags"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Books in Library</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

<script type="text/javascript">
  
 function Delete(id){
	 window.location.href = "http://localhost:8080/Bookshelf/addBooks/deleteBook?bookId="+id;
 }   
    
</script>
</head>

<body>

<jsp:include page="header.jsp"></jsp:include>
	<br>
	<br>

  <c:forEach items="${booklist}" var="bookInLibrary">
     <div class="card" style="width: 18rem;">
      <div class="card-body">
        <h5 class="card-title">${bookInLibrary.getBook().getName()}</h5>
        <button type="button" class="btn btn-danger" onclick="Delete(${bookInLibrary.id})">delete</button>
       </div>
     </div>
  </c:forEach>
 
 <ft:footer/>
</body>


</html>