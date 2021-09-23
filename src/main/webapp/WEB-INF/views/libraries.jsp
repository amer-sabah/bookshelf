<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Libraries</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>


</head>
<body>
   <div style="margin: auto; margin-right: auto; margin-top:5% ; width:70%" >
      <h1>Libraries : </h1>
   
      <c:forEach items="${libraries}" var="library">
        <div class="card" style="margin-top: 20px">
          <div class="card-header">
             ${ library.location}
          </div>
          <div class="card-body">
             <h5 class="card-title">${ library.library_name}</h5>
             <p class="card-text">${ library.description}</p>
             <a href="http://localhost:8080/Bookshelf/library/update?id=${ library.library_id}" class="btn btn-info">Update</a>
             <a href="http://localhost:8080/Bookshelf/library/inactivate?id=${ library.library_id}" class="btn btn-danger">Inactivate</a>

          </div>
        </div>
      </c:forEach>
   
   </div>
   
</body>
</html>