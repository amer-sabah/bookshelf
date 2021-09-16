<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Borrow Request</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

 <style type="text/css">
  .btn-continer{
     
      position: relative;
  }
  .btn-continer input{
      position: absolute;
      right: 0px
  }
  
</style>
<script type="text/javascript">
       function fun(){
    	   var customerName=document.getElementById("customerName").value;
    	   var customerEmail=document.getElementById("customerEmail").value;
    	   var customerPhoneNumber=document.getElementById("customerPhoneNumber").value;
    	   var numberDays=document.getElementById("numberDays").value;
    	   
   		    window.location.href = "http://localhost:8080/Bookshelf/borrowoperations/submit?"+
   		    		"name="+ customerName+
   		    		"&email="+customerEmail+
   		    		 "&number="+customerPhoneNumber+
   		    		 "&days="+numberDays;
   		    
   		    
    	   
       }
</script>

</head>
<body>
  
     <div style="width:80% ; margin: auto; margin-right: auto; margin-top:5% ;">
      <h3>Please Enter Your Information</h3>
         <div class="input-group mb-3" style="margin-top:20px">
       <span class="input-group-text" id="basic-addon1">Name</span>
       <input id="customerName" type="text" name="name" class="form-control" >
     </div>
   
      <div class="input-group mb-3">
       <span class="input-group-text" id="basic-addon1">Email</span>
       <input id="customerEmail" type="text" name="email" class="form-control">
      </div>
     <div class="input-group mb-3">
      <span class="input-group-text" id="basic-addon1">Phone Number</span>
      <input id="customerPhoneNumber" type="text" name="phone_number" class="form-control">
     </div>
   <div class="input-group mb-3">
      <span class="input-group-text" id="basic-addon1">Borrowing Days</span>
      <input id="numberDays" type="text" name="number_of_borrow_days" class="form-control">
   </div>
   <div class="input-group mb-3 btn-continer">
     <input type="submit" value="Submit" class="input-group-text"
        style="width:100px ;" onclick="fun()">
   </div>
  
     </div>
</body>
</html>