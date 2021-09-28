<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<head>
	<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="ISO-8859-1">
	<style type="text/css">
	
	 .customIcon{
	 	font-size:24px;
 	 	width:40px;
  		height:40px;
  		line-height:40px;
 		display:inline-block;
  		text-align:center;
 		border-radius:50%;
  		border:1px solid #ccc;
  		margin:0 30px;
  		color:inherit;
  		opacity:0.75;
	 }
	 
	 
	 .snapIcon :hover {
		color: #cccc00;
		opacity: 0.9;
}
 .instaIcon :hover {
		color: #cd486b;
		opacity: 0.9;
}



	</style>
</head>

<body>
<div align="center">
        <footer>
            <div style="padding-bottom:30px;padding-top:30px;">
            	<a href="https://www.instagram.com" target="_blank" class="customIcon instaIcon"><i class="icon ion-social-instagram "></i></a>
            	<a href="https://www.snapchat.com" target="_blank" class="customIcon snapIcon"><i class="icon ion-social-snapchat "></i></a>
            	<a href="https://www.twitter.com" target="_blank" class="customIcon"><i class="icon ion-social-twitter"></i></a>
            	<a href="https://web.facebook.com" target="_blank" class="customIcon"><i class="icon ion-social-facebook"></i></a>
            </div>
            <ul class="list-inline" style="">
                <li class="list-inline-item" ><a href="http://localhost:8080/Bookshelf/" class="text-muted" style="text-decoration: none">Home</a></li>
                <li class="list-inline-item"><a href="#" class="text-muted" style="text-decoration: none">About</a></li>
                <li class="list-inline-item"><a href="#" class="text-muted" style="text-decoration: none">Privacy Policy</a></li>
            </ul>
            <p >Bookshelf © 2021</p>
        </footer>
    </div>
    

</body>


