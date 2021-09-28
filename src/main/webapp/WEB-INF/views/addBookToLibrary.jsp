<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="ft" uri="tags"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD BOOKS</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

<script type="text/javascript">
    function SearchBook() {
    	var text=document.getElementById("search").value;
    	window.location.href = "http://localhost:8080/Bookshelf/addBooks/searchbook?name="+text;
    }
    
    function AddBook(id){
    	window.location.href = "http://localhost:8080/Bookshelf/addBooks/addbook?libraryId=1&bookId="+id;
			
    }
    
    function submit(){

    	var text=document.getElementById("quantity").value;
       var text1=document.getElementById("status").value;
    	window.location.href = "http://localhost:8080/Bookshelf/addBooks/submit?quantity="+text
    			+"&status="+text1;
			
    }
    
    
</script>
</head>

<body>

<jsp:include page="header.jsp"></jsp:include>
	<br>
	<br>

  <form class="mb-3" style="width:70%;margin-left: auto; margin-right: auto; margin-top: 50px">
    	<input id="search" type="text" class="form-control" placeholder="Search for book" 
    	        style="width:80%; display: inline-block;">
        <button  type="button" class="btn btn-primary" onclick="SearchBook()"
                 style="display: inline-block;" >Search</button>
  </form>


  
  <c:forEach items="${ books }" var="book">
     <div class="card" style="width: 18rem; margin-left: auto; margin-right: auto; margin-top: 50px">
      <div class="card-body">
        <h5 class="card-title">${book.name}</h5>
        <p class="card-text">${book.author}</p>
        <p class="card-text">${book.description}</p>
        <button type="button" class="btn btn-primary" onclick="AddBook(${book.id})">Add</button>
       </div>
     </div>
  </c:forEach>
 
 
  <c:if test="${show}">
    <div style="width:70%;margin-left: auto; margin-right: auto; margin-top: 50px">
      <div class="input-group input-group-sm mb-3">
        <span class="input-group-text" id="inputGroup-sizing-sm">quantity</span>
        <input id="quantity" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
      </div>
      <div class="input-group input-group-sm mb-3">
        <span class="input-group-text" id="inputGroup-sizing-sm">status</span>
        <input id="status" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
      </div>
      <button type="submit" class="btn btn-primary" onclick="submit()">submit</button>
    </div>
  </c:if>
<br>
<br>

<ft:footer/>
	
</body>


</html>