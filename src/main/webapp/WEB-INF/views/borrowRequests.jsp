<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Borrow Requestes</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

<script type="text/javascript">
   function  accept(id) {
	  window.location.href = "http://localhost:8080/Bookshelf/borrowoperations/request/accept?id="+id;
   }
   
   function  reject(id) {
		  window.location.href = "http://localhost:8080/Bookshelf/borrowoperations/request/reject?id="+id;
   }
</script>
</head>
<body>
     <div style="width:80% ; margin: auto; margin-right: auto; margin-top:5% ; background-color: ">
      <h2>Borrowing Requests</h2>
      <table class="table table-striped"  style="margin-top:20px" >
      <tr class="table-striped" >
        <th>#</th>
        <th>Customer Name</th>
        <th>Customer Email</th>
        <th>Phone Number</th>
        <th>Number Of Days</th>
        <th></th>
      </tr>
      <c:forEach items="${requests}" var="request">
      <tr> 
           <td> ${request.id} </td>
           <td> ${ request.customer.name} </td>
           <td> ${ request.customer.email} </td>
           <td> ${ request.customer.phone_number} </td>
           <td> ${ request.number_of_borrow_days } </td>
           <td>
              <button onclick="accept(${ request.id})" 
                      class="btn btn-outline-warning">Accept</button>
              <button onclick="reject(${ request.id})" 
                      class="btn btn-outline-info">Reject</button>
           </td>
        </tr>
      </c:forEach>
     </table>
     
     </div>
   
  
   
</body>
</html>