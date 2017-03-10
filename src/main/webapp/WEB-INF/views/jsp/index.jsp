<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Gradle + Spring MVC</title>

<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
<script>
	function sumOfAll() {
		var totalWaranty = 0;
		$('#ItemsTable tr:gt(0)').each(function() {
			var reading = new Object();

// 			reading.name = $(this).find('td:first input').val();
// 			reading.value = $(this).find('td:last  input').val();

// 			console.log($(this).find('td:first input').val());

// 			console.log($(this).find('td:nth-child(0) input').val());
// 			console.log($(this).find('td:nth-child(1) input').val());

			console.log($(this).find('td:eq(0) input').val());
			
			var currentWaranty = $(this).find('td:eq(0) input').val();
			totalWaranty += parseInt(currentWaranty);
			console.log(totalWaranty);

		});

	}
</script>
</head>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Project Name</a>
		</div>
	</div>
</nav>

<div class="jumbotron">
	<div class="container">
		<h1>${title}</h1>
		<p>
			<c:if test="${not empty msg}">
				Hello ${msg}
			</c:if>

			<c:if test="${empty msg}">
				Welcome Welcome!
			</c:if>
		<p>
			<a class="btn btn-primary btn-lg" href="#" role="button">Learn
				more</a>
		</p>
	</div>
</div>

<div class="container">

	<div class="row">
		<div class="col-md-4">
			<h2>Heading</h2>
			<p>ABC</p>
			<p>
				<a class="btn btn-default" href="#" role="button">View details</a>
			</p>
		</div>
		<div class="col-md-4">
			<h2>Heading</h2>
			<p>ABC</p>
			<p>
				<a class="btn btn-default" href="#" role="button">View details</a>
			</p>
		</div>
		<div class="col-md-4">
			<h2>Heading</h2>
			<p>ABC</p>
			<p>
				<a class="btn btn-default" href="#" role="button">View details</a>
			</p>
		</div>
	</div>


	<hr>
	<footer>
		<p>&copy; Mkyong.com 2015</p>
	</footer>
</div>


<div class="mytable">
	<table id="ItemsTable" class="ItemsTable">
		<tbody>
			<tr>
				<th>Number1</th>
				<th>Number2</th>
			</tr>
			<tr>
				<td><input id="a" onblur="sumOfAll();"> </input></td>
				<td>1</td>
			</tr>
			<tr>
				<td><input id="b" onblur="sumOfAll();"> </input></td>
				<td>2</td>
			</tr>
		</tbody>
	</table>
</div>
<spring:url value="./resources/core/css/hello.js" var="coreJs" />
<spring:url value="./resources/core/css/bootstrap.min.js"
	var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>