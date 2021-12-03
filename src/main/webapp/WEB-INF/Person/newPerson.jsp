<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<title>New Person</title>
	<link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
	
	<div class="container border">
	

		<div class="jumbotron">
		  <h1 class="display-4">Welcome to the Driver License Application</h1>
		  <p class="lead">Here we will create People and generate a licence for them </p>
		  <hr class="my-4">
		  <p>Click on one of the buttons below to get started</p>
		  <a class="btn btn-primary btn-md" href="/" role="button">Home</a>

		</div>
		<hr>
		<h1>New Person</h1>
		<form:form method="POST" action="/persons/new" modelAttribute="person">
					<p class="form-group">
						<form:label path="firstName">First Name:</form:label>
						<form:errors path="firstName"/>
						<form:input type="text" path="firstName"/>
					</p>
					<p class="form-group">
						<form:label path="lastName">Last Name:</form:label>
						<form:errors path="lastName"/>
						<form:input type="text" path="lastName"/>
					</p >
				<button>Create</button>
			</form:form>
	</div>


</body>
</html>