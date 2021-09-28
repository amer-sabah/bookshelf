<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="ft" uri="tags"%>
<html>
<head>
<meta charset="windows-1256">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">

<title>${book.getName() }</title>
<script type="text/javascript">

function borrow(id){
	window.location.href = "http://localhost:8080/Bookshelf/borrowoperations?id="+id;
}

function buy(person_id,book_id){
	window.location.href = "http://localhost:8080/Bookshelf/buy?person_id="+person_id+"&&book_id="+book_id;
}

function changeButtons(status){
	
	if(v= 0)
	{
		document.getElementById("borrowBtn").disabled  = true;
		document.getElementById("buyBtn").disabled  = true;
		return;
	}
	if(status == 'borrow'){
		document.getElementById("borrowBtn").disabled  = false;
		document.getElementById("buyBtn").disabled  = true;
	}
	
	else
		{
		document.getElementById("borrowBtn").disabled  = true;
		document.getElementById("buyBtn").disabled  = false ;
	}
	
}

function selectLibrary(){
	var s =document.getElementById('selectLibrary');
	var v = s.options[s.selectedIndex].value;
	changeButtons(v);
	}
</script>

</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<div class="container ">
		<div class="row justify-content-around">
			<div class="col-3">
				<img class="w-75"
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRimBK7GWTp_BtzRTPTB1OAJQiPE4z5M4APFg&usqp=CAU" />
			</div>

			<div class="col-4 align-self-start">
				<h3>${book.getName()}</h3>
				<h4>${book.getAuthor()}</h4>
				<br>
				<p>
					<strong>Description:</strong>
				</p>
				<p>${book.getDescription() }</p>
			</div>


			<div class="col-4 h-100">
				<br> <br> <br>
				<div class="h2">$ ${book.getPrice() }</div>
				<br>
				<div>
					<c:if test="${reviews != 0}">
						<c:choose>
							<c:when test="${rate==5 }">
								<img class="w-50"
									src="https://eatbooks4breakfast.files.wordpress.com/2013/06/5-stars.jpg?w=300&h=57" />
							</c:when>
							<c:when test="${rate==4 }">
								<img class="w-50"
									src="https://eatbooks4breakfast.files.wordpress.com/2013/06/4-stars.jpg?w=300&h=57" />
							</c:when>
							<c:when test="${rate==3 }">
								<img class="w-50"
									src="https://eatbooks4breakfast.files.wordpress.com/2013/06/3-stars.jpg?w=300&h=57" />
							</c:when>
							<c:when test="${rate==2 }">
								<img class="w-50"
									src="https://eatbooks4breakfast.files.wordpress.com/2013/06/2-stars.jpg?w=300&h=57" />
							</c:when>
							<c:when test="${rate==1 }">
								<img class="w-50"
									src="https://eatbooks4breakfast.files.wordpress.com/2013/06/1-star.jpg?w=300&h=57" />
							</c:when>
						</c:choose>
					</c:if>
				</div>
				<br>
				<div>Reviews: ${reviews }</div>
				<c:if test="${reviews == 0}">
					<div>The book not rated jet!</div>

				</c:if>

				<br> <select class="form-select form-select-sm w-75"
					aria-label=".form-select-sm example" id="selectLibrary"
					onchange="selectLibrary()">
					<option value="0" selected>Choose library..</option>
					<c:forEach items="${books }" var="i">
						<option value="${i.getStatus() }">${i.getLibrary().getLibrary_name()}</option>
					</c:forEach>
				</select> <br>

				<button type="button" id="buyBtn" style="width: 5rem;"
					class="btn btn-success " onclick="buy(1,${book.getId()})"
					disabled>Buy</button>

				<button type="button" id="borrowBtn" style="width: 5rem;"
					class="btn btn-outline-success " onclick="borrow(${book.getId()})"
					disabled>Borrow</button>


			</div>


		</div>
	</div>
	<br>
	<br>
<ft:footer/>
</body>
</html>