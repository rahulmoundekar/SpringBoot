
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="jumbotron text-center">
		<h1>Spring Boot and Hibernate Integration</h1>
		<p>insert, update , delete and read (CURD Operation) in spring boot-Hibernate</p>
	</div>
	<div class="container">
		<form:form method="post" modelAttribute="customer"
			action="${pageContext.request.contextPath}/addCustomer">
			<table class="table table-striped">
				<tr>
					<th colspan="2">Add Customer</th>
				</tr>
				<tr>
					<form:hidden path="id" />
					<td><form:label path="customerName">Customer Name:</form:label></td>
					<td><form:input path="customerName" size="30" maxlength="30"
							class="form-control input-sm"></form:input></td>
				</tr>
				<tr>
					<td><form:label path="email">Email:</form:label></td>
					<td><form:input path="email" size="30" maxlength="30"
							class="form-control input-sm"></form:input></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" class="btn btn-success" value="Register"/></td>
				</tr>
			</table>
		</form:form>
		</br>
		<h3>Customer List</h3>
		<c:if test="${!empty listOfCustomers}">
			<table class="table table-striped">
				<tr>
					<th width="80">Id</th>
					<th width="120">Customer Name</th>
					<th width="120">Email</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
				<c:forEach items="${listOfCustomers}" var="customer">
					<tr>
						<td>${customer.id}</td>
						<td>${customer.customerName}</td>
						<td>${customer.email}</td>
						<td><a
							href="<c:url value='/updateCustomer/${customer.id}' />" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-edit"></span> Edit</a></td>
						<td><a
							href="<c:url value='/deleteCustomer/${customer.id}' />" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-remove"></span> Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
</body>
</html>
