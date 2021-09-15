<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Library Requestes</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

<script type="text/javascript">
   function  accept(id) {
	  window.location.href = "http://localhost:8080/Bookshelf/library/requestes/accept?id="+id;
   }
   
   function  reject(id) {
		  window.location.href = "http://localhost:8080/Bookshelf/library/requestes/reject?id="+id;
   }
</script>
</head>
<body>
   <h1>Requestes : </h1>
   
   <table class="table table-striped" >
      <tr class="table-striped" >
        <th>ID</th>
        <th>Name</th>
        <th>Location</th>
        <th>Owner ID</th>
        <th>Owner Name</th>
        <th>Operation</th>
      </tr>
      <c:forEach items="${libraries}" var="library">
        <tr> 
           <td id="ID"> ${ library.library_id} </td>
           <td> ${ library.library_name} </td>
           <td> ${ library.location} </td>
           <td> ${ library.owner.person_id} </td>
           <td> ${ library.owner.name} </td>
           <td>
              <button onclick="accept(${ library.library_id})" 
                      class="btn btn-success">Accepted</button>
              <button onclick="reject(${ library.library_id})" 
                      class="btn btn-danger">Reject</button>
           </td>
        </tr>
      </c:forEach>
   </table>
   
</body>
</html>