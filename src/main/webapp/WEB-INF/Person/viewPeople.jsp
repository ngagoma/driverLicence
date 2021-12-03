
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
		<div class="jumbotron">
		  <h1 class="display-4">List Of People</h1>
	<!-- 	  <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
	 -->	  <hr class="my-4">
	<!-- 	  <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
	 -->	  <a class="btn btn-primary btn-sm" href="/licenses/view" role="button">View License</a>
		</div>
		<table class="table table-striped table-hover container">
			   <thead>
			    <tr>
			      <th scope="col">First Name</th>
			      <th scope="col">Last name</th>
			      <th scope="col">Action</th>
			    </tr>
			  </thead>
			
				  
			 <tbody>
				  <c:forEach items="${listOfPerson}" var="item">
				    <tr>

				      <td><a href="/persons/${item.id}"><c:out value="${item.firstName}"/></a></td>
				      <td><c:out value="${item.lastName}"/></td>
				      <td>
				      	<a href="/persons/edit/${item.id}">Edit</a>
				      	<a href="/persons/delete/${item.id}">Delete</a>
				      </td>
				     
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