
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Update Language</title>
    <meta charset="ISO-8859-1">
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/css/style.css"/>
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		
		<div id="message">
				<p id="update_msg"><c:out value="${message}"/></p>
			</div>
		
		<div id="editview">
				
			<form:form method="POST" action="/licenses/edit" modelAttribute="license">
				<form:input type="hidden" path="id"/>
					<div>
						<a href="/licenses/view">Home</a>
					</div>
				
					<p class="main">
						<form:label path="IDNumber">ID Number:</form:label>
						<form:errors path="IDNumber"/>
						<form:input type="text" path="IDNumber"/>
					</p>
					<p class="main">
						<form:label path="state">Last Name:</form:label>
						<form:errors path="state"/>
						<form:input type="text" path="state"/>
					</p >
					<div class="form-group">
					    <form:label path="expiration_date">Expiration Date:</form:label>
						<form:errors path="expiration_date"/>
						<form:input type="date" path="expiration_date"/>
					 </div>
			
				<button>Update</button>
			</form:form>
			
		</div>
		
	</div>
</body>
</head>