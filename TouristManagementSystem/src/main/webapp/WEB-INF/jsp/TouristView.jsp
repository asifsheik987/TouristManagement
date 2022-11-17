<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
<title>Tourist Details</title>
</head>
<body>
	<div class="display-1" style="text-align:center">Tourist Management</div>
	<hr />
	<div class="col d-flex justify-content-center">
		<div class="col-6">
			<div class="card">
				<div class="card-header" style="text-align:center"><h3>Tourist Details</h3></div>
				<div class="card-body">
					<table class ="table table-bordered">
						<tr>
							<td>Tourist Id:</td>
							<td><c:out value="   ${tourist.getId()}"></c:out></td>
						</tr>
						<tr>
							<td>Tourist Name:</td>
							<td><c:out value="    ${tourist.getName()}"></c:out></td>
						</tr>
						<tr>
							<td>Tourist Address:</td>
							<td><c:out value="    ${tourist.getAddress()}"></c:out></td>
						</tr>
						<tr>
							<td>Tourist Date:</td>
							<td><c:out value="${tourist.getDate()}"></c:out></td>
						</tr>
						<tr>
							<td>Booking Amount:</td>
							<td><c:out value="${tourist.getBookingAmount()}"></c:out></td>
						</tr>
						<c:forEach var="contacts" items="${tourist.getContacts()}">
							<tr>
								<td>Phone Number:</td>
								<td>${contacts.getPhoneNumber()}</td>
							</tr>
						</c:forEach>
						<tr>
						</tr>
					</table>
					<hr />
					
					<div>
					     <a class="btn btn-secondary" href ="/addTourist" style="float:right">Return</a>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>