<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
 
</head>
<body>
   
   
      <div style="width: 70%; margin-left: auto; margin-right: auto; margin-top:5% ;" >
        <h3>Fill your info to add library:</h3>
        <form:form name="addLibrary" method="POST">
       <div class="form-floating mb-3">
        <input type="text" name="name" class="form-control" id="floatingInput" 
               placeholder="Owner name">
        <label for="floatingInput" >Owner name</label>
       </div>
       
       <div class="form-floating mb-3">
        <input type="text" name="email" class="form-control" id="floatingInput" 
               placeholder="Email">
        <label for="floatingInput" >Email</label>
       </div>
        
       <div class="form-floating mb-3">
        <input type="text" name="phone_number" class="form-control" id="floatingInput" 
               placeholder="Phone number">
        <label for="floatingInput" >Phone number</label>
       </div>
       
       <div class="form-floating mb-3">
        <input type="text" name="library_name" class="form-control" id="floatingInput" 
               placeholder="Library name">
        <label for="floatingInput" >Library name</label>
       </div> 
       
       <div class="form-floating mb-3">
        <input type="text" name="location" class="form-control" id="floatingInput" 
               placeholder="Location" >
        <label for="floatingInput" >Location</label>
       </div>
       <div class="form-floating mb-3">
        <input type="text" name="description" class="form-control" id="floatingInput" 
               placeholder="Description">
        <label for="floatingInput" >Description</label>
       </div>
  
       <div class="form-floating mb-3" style="position: relative;">
         <input type="submit" value="Submit" class="btn btn-primary" 
              style="width:50% ; position: absolute; right: 25%" />
       </div>
       
      </form:form>
      
      </div>
   
</body>
</html>