<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Library Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

<script type="text/javascript">
  function save(){
    var libraryName= document.getElementById("libraryName").value;
    var location= document.getElementById("location").value;
    var description= document.getElementById("description").value;
    
    window.location.href = "http://localhost:8080/Bookshelf/library/submitUpdate?"+
		"libraryName="+ libraryName+
		"&location="+location+
		 "&description="+description;
  }
</script>
</head>
<body>
   
   
      <div style="width: 70%; margin-left: auto; margin-right: auto; margin-top:5% ;" >
        <h3>Fill your info to update library:</h3>
       
       <div class="form-floating mb-3">
        <input type="text" id="libraryName" class="form-control" id="floatingInput" 
               placeholder="Library name">
        <label for="floatingInput" >Library name</label>
       </div> 
       
       <div class="form-floating mb-3">
        <input type="text" id="location" class="form-control" id="floatingInput" 
               placeholder="Location" >
        <label for="floatingInput" >Location</label>
       </div>
       <div class="form-floating mb-3">
        <input type="text" id="description" class="form-control" id="floatingInput" 
               placeholder="Description">
        <label for="floatingInput" >Description</label>
       </div>
  
       <div class="form-floating mb-3" style="position: relative;">
         <button class="btn btn-primary" 
              style="width:50% ; position: absolute; right: 25%" onclick="save()"> Save </button>
       </div>
       
        <c:choose>
           <c:when test="${success ==true }">
              <div class="alert alert-success" role="alert" id="error" style="margin-top: 70px">
                Changes submited successfuly
              </div>
           </c:when>
         </c:choose>
      </div>
   
</body>
</html>