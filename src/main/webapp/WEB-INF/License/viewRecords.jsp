
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>View Language</title>
    <meta charset="ISO-8859-1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
	<div class="container border">
		<h1>All Licenses Records</h1>
		<table class="table table-striped table-hover container">
			   <thead>
			    <tr>
			      <th scope="col">ID Number</th>
			      <th scope="col">First Name</th>
			      <th scope="col">Last Name</th>
			      <th scope="col">State</th>
			      <th scope="col">Expiration Date</th>
<!-- 			      <th scope="col">Action</th> -->
			    </tr>
			  </thead>
				  
			 <tbody>
				  <c:forEach items="${allRecords}" var="item">
				    <tr>
						
				      <td><c:out value="${item.IDNumber}"/></td>
				       <td><c:out value="${item.getPersons().getFirstName()}"/></td>
				       <td><c:out value="${item.getPersons().getLastName()}"/></td>
				      <td><c:out value="${item.state}"/></td>
				      <td><c:out value="${item.expiration_date}"/></td>
<%-- 				      <td>
				      	<a href="/licences/${item.id}">Edit</a>
				      	<a href="/licences/delete/${item.id}">Delete</a>
				      </td> --%>
				     
				    </tr>
				  </c:forEach>
			</tbody>
		</table>
		<p>
			<a href="/persons/new">Add New Person</a> | 
			<a href="/licenses/new">Add New License</a>
		</p>
	</div>
</body>
</head>