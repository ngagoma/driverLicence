
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
				
			<form:form method="POST" action="/persons/edit" modelAttribute="personId">
				<form:input type="hidden" path="id"/>
					<div>
						<a href="/persons/view">Home</a>
					</div>
				
					<p class="main">
						<form:label path="firstName">First Name:</form:label>
						<form:errors path="firstName"/>
						<form:input type="text" path="firstName"/>
					</p>
					<p class="main">
						<form:label path="lastName">Last Name:</form:label>
						<form:errors path="lastName"/>
						<form:input type="text" path="lastName"/>
					</p >
			
				<button>Update</button>
			</form:form>
			
		</div>
		
	</div>
</body>
</head>