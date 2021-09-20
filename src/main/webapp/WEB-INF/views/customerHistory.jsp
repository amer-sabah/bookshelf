<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books History</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<link href="../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<script src="../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="../webjars/jquery/3.0.0/js/jquery.min.js"></script>
<style>
body {
	font-family: 'Poppins', sans-serif;
	background: rgb(107, 186, 222);
	background: -moz-linear-gradient(90deg, rgba(107, 186, 222, 1) 0%,
		rgba(232, 156, 205, 1) 100%);
	background: -webkit-linear-gradient(90deg, rgba(107, 186, 222, 1) 0%,
		rgba(232, 156, 205, 1) 100%);
	background: linear-gradient(90deg, rgba(107, 186, 222, 1) 0%,
		rgba(232, 156, 205, 1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#6bbade",
		endColorstr="#e89ccd", GradientType=1);
}

table {
	width: 90%;
	margin-left: auto;
	margin-right: auto;
}

tr {
	background-color: #fff;
	border: 1px solid rgba(0, 0, 0, .125);
}

tr:nth-child(even) {
	background-color: #f2f2f2
}
</style>

</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	
	 <input
		type="button" style="padding: 0; border: none; background: none;
		color:#5D6D7E"class="nav-item nav-link"
		value="Borrow History" onclick='myfunction();'> &nbsp;&nbsp; 
		<input
		type="button" style="padding: 0; border: none; background: none; background-color:#CCD1D1;padding: 5px;" class="navbar-brand"
		value="All History" onclick='myfunction0();'>  &nbsp;&nbsp;
		<input
		type="button" type="button" style="padding: 0; border: none; background: none;
		color:#5D6D7E"class="nav-item nav-link"
		value="Buy History" onclick='myfunction1();'>
 &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;

	<form class="form-inline my-2 my-lg-0">
		<input type="text" id="my" class="form-control mr-sm-2"
			onkeyup="searchTableColumns()" placeholder="Search ..">

	</form>

	</nav>


	<br>

	<br>

	<div id="div1">
		<h2 style="text-align: center;">Buy History</h2>

		<table class="table"
			style="width: 95%; margin-left: auto; margin-right: auto;"
			id="myTable">

			<thead class="thead-dark"
				style='cursor: pointer; text-align: center;'>
				<tr>
					</th>
					<th onclick="sortTable(0)" title="Sort By Book Name ">Book</th>
					<th onclick="sortTable(1)" title="Sort By Library Name ">Library</th>
					<th onclick="sortTable(2)" title="Sort By Category Name ">Category</th>
					<th onclick="sortTable(3)" title="Sort By Price  ">Price</th>
					<th onclick="sortTable(4)" title="Sort By Date Name ">Date</th>
				</tr>
			</thead>
			<tbody style="text-align: center;">
				<c:forEach var="buy" items="${buyOperations}">
					<tr>
						<td>${buy.booksLibrary.book.getName()}</td>
						<td>${buy.booksLibrary.library.getLibrary_name()}</td>
						<td>${buy.booksLibrary.book.category.getName()}</td>
						<td>${buy.booksLibrary.book.getPrice()}</td>
						<td>${buy.getBuy_date()}</td>

					</tr>


				</c:forEach>


			</tbody>
		</table>

	</div>
	<br>

	<!-- 	<hr style="border: 1px solid black; text-align: center; margin: 60px;"> -->

	<div id="div2">
		<h2 style="text-align: center;">Borrow History</h2>

		<table class="table"
			style="width: 95%; margin-left: auto; margin-right: auto;"
			id="myTable2">

			<thead class="thead-dark"
				style='cursor: pointer; text-align: center;'>
				<tr>
					</th>
					<th onclick="sortTable2(0)" title="Sort By Book Name ">Book</th>
					<th onclick="sortTable2(1)" title="Sort By Library Name ">Library</th>
					<th onclick="sortTable2(2)" title="Sort By Category Name ">Category</th>

					<th onclick="sortTable2(3)" title="Sort By borrow days ">Borrow
						days</th>
					<th onclick="sortTable2(4)" title="Sort By Date ">Date</th>
					<th onclick="sortTable2(5)" title="Sort By Status ">Status</th>

				</tr>
			</thead>
			<tbody style="text-align: center;">

				<c:forEach var="borrow" items="${borrowOperations}">
					<tr>



						<td>${borrow.book.getBook().getName()}</td>
						<td>${borrow.book.getLibrary().getLibrary_name()}</td>
						<td>${borrow.book.getBook().getCategory().getName()}</td>

						<td>${borrow.number_of_borrow_days}</td>
						<c:choose>
							<c:when test="${borrow.getAcccept()!= null}">
								<td>${borrow.getAcccept()}</td>
							</c:when>

							<c:otherwise>
								<td style="text-align: center; color: blue">-</td>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${borrow.getStatus()== 'rejected'}">
								<td style="color: red">Rejected</td>
							</c:when>
							<c:when test="${borrow.getStatus()== 'accepted'}">
								<td style="color: green">Accepted</td>
							</c:when>
							<c:otherwise>
								<td style="color: blue">Pending</td>
							</c:otherwise>
						</c:choose>

					</tr>


				</c:forEach>

			</tbody>
		</table>
	</div>

	<script>
		function sortTable(n) {
			var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
			table = document.getElementById("myTable");
			switching = true;
			// Set the sorting direction to ascending:
			dir = "asc";
			/* Make a loop that will continue until
			no switching has been done: */
			while (switching) {
				// Start by saying: no switching is done:
				switching = false;
				rows = table.rows;
				/* Loop through all table rows (except the
				first, which contains table headers): */
				for (i = 1; i < (rows.length - 1); i++) {
					// Start by saying there should be no switching:
					shouldSwitch = false;
					/* Get the two elements you want to compare,
					one from current row and one from the next: */
					x = rows[i].getElementsByTagName("TD")[n];
					y = rows[i + 1].getElementsByTagName("TD")[n];
					/* Check if the two rows should switch place,
					based on the direction, asc or desc: */
					if (dir == "asc") {
						if (x.innerHTML.toLowerCase() > y.innerHTML
								.toLowerCase()) {
							// If so, mark as a switch and break the loop:
							shouldSwitch = true;
							break;
						}
					} else if (dir == "desc") {
						if (x.innerHTML.toLowerCase() < y.innerHTML
								.toLowerCase()) {
							// If so, mark as a switch and break the loop:
							shouldSwitch = true;
							break;
						}
					}
				}
				if (shouldSwitch) {
					/* If a switch has been marked, make the switch
					and mark that a switch has been done: */
					rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
					switching = true;
					// Each time a switch is done, increase this count by 1:
					switchcount++;
				} else {
					/* If no switching has been done AND the direction is "asc",
					set the direction to "desc" and run the while loop again. */
					if (switchcount == 0 && dir == "asc") {
						dir = "desc";
						switching = true;
					}
				}
			}
		}

		function sortTable2(n) {
			var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
			table = document.getElementById("myTable2");
			switching = true;
			// Set the sorting direction to ascending:
			dir = "asc";
			/* Make a loop that will continue until
			no switching has been done: */
			while (switching) {
				// Start by saying: no switching is done:
				switching = false;
				rows = table.rows;
				/* Loop through all table rows (except the
				first, which contains table headers): */
				for (i = 1; i < (rows.length - 1); i++) {
					// Start by saying there should be no switching:
					shouldSwitch = false;
					/* Get the two elements you want to compare,
					one from current row and one from the next: */
					x = rows[i].getElementsByTagName("TD")[n];
					y = rows[i + 1].getElementsByTagName("TD")[n];
					/* Check if the two rows should switch place,
					based on the direction, asc or desc: */
					if (dir == "asc") {
						if (x.innerHTML.toLowerCase() > y.innerHTML
								.toLowerCase()) {
							// If so, mark as a switch and break the loop:
							shouldSwitch = true;
							break;
						}
					} else if (dir == "desc") {
						if (x.innerHTML.toLowerCase() < y.innerHTML
								.toLowerCase()) {
							// If so, mark as a switch and break the loop:
							shouldSwitch = true;
							break;
						}
					}
				}
				if (shouldSwitch) {
					/* If a switch has been marked, make the switch
					and mark that a switch has been done: */
					rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
					switching = true;
					// Each time a switch is done, increase this count by 1:
					switchcount++;
				} else {
					/* If no switching has been done AND the direction is "asc",
					set the direction to "desc" and run the while loop again. */
					if (switchcount == 0 && dir == "asc") {
						dir = "desc";
						switching = true;
					}
				}
			}
		}

		function myfunction() {
			if (document.getElementById("div1").style.display === "block"
					|| document.getElementById("div2").style.display === "none") {
				document.getElementById("div1").style.display = "none";
				document.getElementById("div2").style.display = "block";
			} else
				document.getElementById("div1").style.display = "none";
		}

		function myfunction1() {
			if (document.getElementById("div2").style.display === "block"
					|| document.getElementById("div1").style.display === "none") {
				document.getElementById("div2").style.display = "none";
				document.getElementById("div1").style.display = "block";

			} else
				document.getElementById("div2").style.display = "none";
		}

		function myfunction0() {
			if (document.getElementById("div2").style.display === "none")
				document.getElementById("div2").style.display = "block";
			if (document.getElementById("div1").style.display === "none") {
				document.getElementById("div1").style.display = "block";
			}

		}
	</script>



	<script>
		function searchTableColumns() {
			// Declare variables 
			var input, filter, table, tr, i, j, column_length, count_td;
			column_length = document.getElementById('myTable2').rows[0].cells.length;
			input = document.getElementById("my");
			filter = input.value.toUpperCase();
			table = document.getElementById("myTable2");
			tr = table.getElementsByTagName("tr");
			for (i = 1; i < tr.length; i++) { // except first(heading) row
				count_td = 0;
				for (j = 0; j < column_length; j++) { // except first column
					td = tr[i].getElementsByTagName("td")[j];
					/* ADD columns here that you want you to filter to be used on */
					if (td) {
						if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
							count_td++;

						}
					}
				}
				if (count_td > 0) {

					tr[i].style.display = "";
				} else {

					tr[i].style.display = "none";
				}
			}

			var input, filter, table, tr, i, j, column_length, count_td;
			column_length = document.getElementById('myTable').rows[0].cells.length;
			input = document.getElementById("my");
			filter = input.value.toUpperCase();
			table = document.getElementById("myTable");
			tr = table.getElementsByTagName("tr");
			for (i = 1; i < tr.length; i++) { // except first(heading) row
				count_td = 0;
				for (j = 0; j < column_length; j++) { // except first column
					td = tr[i].getElementsByTagName("td")[j];
					/* ADD columns here that you want you to filter to be used on */
					if (td) {
						if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {

							count_td++;
						}

					}
				}
				if (count_td > 0) {
					{
						tr[i].style.display = "";

					}
				} else {
					tr[i].style.display = "none";
				}
			}

		}
	</script>
</body>
</html>
