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
		<p id="dashboard"><a href="/persons/view">Home</a></p>
<!-- 		<h2>A Person View</h2> -->
		<h1><c:out value="${aPerson.firstName} ${aPerson.lastName}"></c:out></h1>
		<p>License Number: <c:out value="${aPerson.getLicenses().getIDNumber()}"></c:out></p>
		<p>State: <c:out value="${aPerson.getLicenses().getState()}"></c:out></p>
		<p>Expiration Date: <c:out value="${aPerson.getLicenses().getExpiration_date()}"></c:out></p>
	</div>

</body>
</html>