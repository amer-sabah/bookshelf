<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Page</title>

<style>
  .top-container{
     margin-top: 50px;
     background-color: #E8E7E6; 
     padding:10px
  }
  .container{
    margin-top: 20px;
  }
  
  .container label {
    
    display :inline-block;
    width : 100px;
    height :25px;
    padding : 5px;
  }
  
  .inpt{
     width : 250px;
     height :26px;
  }
  
  .container select{
    width : 200px;
    height :25px;
  }
  .btn{
    background-color: #717470; 
    width : 100px;
    height :30px;
  }
  
</style>
</head>
<body>
   <h1>All Library in system</h1>
   
   <table border="2px" >
      <tr >
        <th>ID</th>
        <th>Name</th>
        <th>Location</th>
        <th>Owner ID</th>
        <th>Owner Name</th>
      </tr>
      <c:forEach items="${libraries}" var="library">
        <tr> 
           <td> ${ library.library_id} </td>
           <td> ${ library.library_name} </td>
           <td> ${ library.location} </td>
           <td> ${ library.owner.person_id} </td>
           <td> ${ library.owner.name} </td>
        </tr>
      </c:forEach>
   </table>
   
   <div class="top-container">
      <form:form name="addLibrary" method="POST">
       <div class="container">
        <label >Owner name</label>
        <input type="text" name="name" class="inpt">
       </div>
       <div class="container">
        <label >Email</label>
        <input type="text" name="email" class="inpt">
       </div> 
       <div class="container">
        <label >Phone number</label>
        <input type="text" name="phone_number" class="inpt">
       </div>
       <div class="container">
        <label >Library name</label>
        <input type="text" name="library_name" class="inpt">
       </div> 
       <div class="container">
        <label >Location</label>
        <input type="text" name="location" class="inpt">
       </div>
       <div class="container">
        <label>Description</label>
        <input type="text" name="description" class="inpt">
       </div>
       <div class="container">
         <input type="submit" value="Submit" class="btn"/>
       </div>
      </form:form>
   </div>
</body>
</html>