<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<title>New License</title>
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
		<h1>New License</h1>
		<h3>${message}</h3>
		<form:form method="POST" action="/licenses/new" modelAttribute="license">
			  <form:select path="persons">
				  <div class="form-group">
				    <form:option value = "">Select a Person</form:option>
				    <c:forEach items="${personObj}" var="person">
	                	<form:option value = "${person.id}">${person.firstName} ${person.lastName}</form:option>
	                </c:forEach>
		  		  </div>
	  		 </form:select> 
	  		 <div class="form-group">
			    <form:label path="IDNumber">ID Number:</form:label>
				<form:errors path="IDNumber"/>
				<form:input type="text" path="IDNumber"/>
			 </div>
			 <div class="form-group">
			    <form:label path="state">State:</form:label>
				<form:errors path="state"/>
				<form:input type="text" path="state"/>
			 </div>
			 <div class="form-group">
			    <form:label path="expiration_date">Expiration Date:</form:label>
				<form:errors path="expiration_date"/>
				<form:input type="date" path="expiration_date"/>
			 </div>
			 <button class="btn_position">Create A License</button>
  		</form:form>
  		
  		<p><a href="/licenses/view">View Dashboard</a></p>
  	</div>
	
	
	

</body>
</html>