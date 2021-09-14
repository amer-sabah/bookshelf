<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="windows-1256">
<title>Book search</title>
</head>
<body>

	<c:forEach items="${books}" var="book">
		<h2>${book}</h2>
	</c:forEach>

</body>
</html>