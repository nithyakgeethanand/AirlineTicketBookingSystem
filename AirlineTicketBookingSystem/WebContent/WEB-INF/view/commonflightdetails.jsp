<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<style>
table{
	border-collapse: collapse;
}
th {
	padding-left: 10px;
	text-align: left;
}
td {
	padding-top: 10px;
	/* padding-left: 50px; */
}
</style>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
<CENTER><table style="width:90%; border: 2px 2px 0 2px solid grey; z-index: 2;">
<tr>
	<th>First Name:</th>
	<td><c:out value="${user.firstname}"/></td>
</tr>
<tr>
	<th>Last Name:</th>
	<td><c:out value="${user.lastname}"/></td>
</tr>
<tr>
	<th>Phone Number:</th>
	<td><c:out value="${user.phoneno}"/></td>
</tr>
<tr>
	<th>Flight Number:</th>
	<td><c:out value="${selectedFlight.f_no}"/></td>
</tr>
<tr>
	<th>Flight Name:</th>
    <td><c:out value="${selectedFlight.f_name}"/></td>
</tr>
<tr>
	<th>Source:</th>
	<td><c:out value="${selectedFlight.f_source}"/></td>
</tr>
<tr>
	<th>Destination:</th>
	<td><c:out value="${selectedFlight.f_destination}"/></td>
</tr>

<tr>
	<th>Date of Travel:</th>
	<td><c:out value="${selectedFlight.date}"/></td>
</tr>
<tr>
	<th>Time:</th>
	<td><c:out value="${selectedFlight.f_time}"/></td>
</tr>
<tr>
	<th>Airport Name:</th>
	<td><c:out value="${selectedFlight.airportname}"/></td>
</tr>
<tr>
	<th>Amount per Person:</th>
	<td><span id="amount"><c:out value="${selectedFlight.amount}" /></span></td>	
</tr>
</table></CENTER>
</body>
</html>