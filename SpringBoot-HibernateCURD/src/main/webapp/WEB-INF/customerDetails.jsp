
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
</head>
<body>
	<form:form method="post" modelAttribute="customer"
		action="${pageContext.request.contextPath}/addCustomer">
		<table>
			<tr>
				<th colspan="2">Add Customer</th>
			</tr>
			<tr>
				<form:hidden path="id" />
				<td><form:label path="customerName">Customer Name:</form:label></td>
				<td><form:input path="customerName" size="30" maxlength="30"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="email">Email:</form:label></td>
				<td><form:input path="email" size="30" maxlength="30"></form:input></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" class="blue-button" /></td>
			</tr>
		</table>
	</form:form>
	</br>
	<h3>Customer List</h3>
	<c:if test="${!empty listOfCustomers}">
		<table class="tg">
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
					<td><a href="<c:url value='/updateCustomer/${customer.id}' />">Edit</a></td>
					<td><a href="<c:url value='/deleteCustomer/${customer.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>
