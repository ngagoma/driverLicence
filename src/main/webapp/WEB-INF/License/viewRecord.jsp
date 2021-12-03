<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<title>View a Person</title>
</head>
<body>
	<div class="container">
		<p id="dashboard"><a href="/licenses">Home</a></p>
		<h2>A Person View</h2>
		<p>First Name: <c:out value="${recordId.getPersons().getFirstName()}"></c:out></p>
		<p>Last Name: <c:out value="${recordId.getPersons().getLastName()}"></c:out></p>
		<p>ID: <c:out value="${recordId.IDNumber}"></c:out></p>
		<p>State: <c:out value="${recordId.state}"></c:out></p>
		<p>Expiration Date: <c:out value="${recordId.expiration_date}"></c:out></p>
	</div>

</body>
</html>