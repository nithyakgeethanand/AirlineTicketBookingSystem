<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>

<style>
span {
	font-weight: 700;
	font-size: 24px;
	padding-right: 25px;
}
</style>
<head>
<%@ include file="title.jsp" %>
<meta charset="ISO-8859-1">

</head>
<body>
<%@ include file="header.jsp" %>
<span>Payment Success !!!!!</span>

	<a href="javascript:window.print()">Print this page</a>

<%@ include file="commonflightdetails.jsp" %>
<table>
<tr>
	<th>Number of Additional Passengers:</th>
	<td><c:out value="${additionalinfo.noofpassenger}" /></td>	
</tr>
<tr>
	<th>Additional Passenger 1:</th>
	<td><c:out value="${additionalinfo.additional1}" /></td>	
</tr>
<tr>
	<th>Additional Passenger 2:</th>
	<td><c:out value="${additionalinfo.additional2}" /></td>	
</tr>
<tr>
	<th>Additional Passenger 3:</th>
	<td><c:out value="${additionalinfo.additional3}" /></td>	
</tr>
<tr>
	<th>Additional Passenger 4:</th>
	<td><c:out value="${additionalinfo.additional4}" /></td>	
</tr>
<tr>
	<th>Total Amount:</th>
	<td><c:out value="${additionalinfo.totalamount}" /></td>	
</tr>


</table>


<%@ include file="footer.jsp" %>
</body>
</html>