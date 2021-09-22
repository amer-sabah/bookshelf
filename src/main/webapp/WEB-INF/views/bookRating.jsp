<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<title>Rate A Book</title>

<style>
  .top-container{
     margin-top: 3px;
     background-color: #F7FFB0 ;
     padding:5px;
  }
  .container{
    margin-top: 90px;
  }
  
  .container label {
    
    display :inline-block;
    width : 100px;
    height :25px;
    padding : 5px;
  }
  
  .inpt{
     width : 250px;
     height :28px;
  }
  
  .container select{
    width : 200px;
    height :25px;
  }
  .btn{
    background-color: #03DBC5; 
    width : 100px;
    height :30px;
  }
 



</style>
<script type="text/javascript">
      
      
      
      
</script>

<head>
<meta charset="windows-1256">
<title>Rate Book</title>
</head>
<body>
   <h1 class="fo">Tell us about your experience</h1>
   
   
   
   <div class="top-container">
      <form:form name="rateBook" method="POST" modelAttribute="booksRatingDto">
       <div class="container">
        <form:label  path="rate"><h4>Rate</h4></form:label>
        <form:input path="rate" type="text" name="rate" class="inpt" placeholder="Rate a book from 1 to 5 "/>
       </div>
       <div class="container">
        <form:label  path="feedback" ><h4>Feedback</h4></form:label>
        <form:input path="feedback" type="text" name="feedback" class="inpt" placeholder="Type your opinion in this book"/>
       </div> 
       

       <div class="container">
         <input type="submit" value="Submit" class="btn"/>
       </div>
      </form:form>
   </div>
</body>
</html>