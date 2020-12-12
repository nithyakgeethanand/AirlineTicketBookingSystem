<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>

<style>
table {
  
  border-collapse: collapse;
}
td {
	padding-top: 10px; 
	padding-bottom: 10px; 
	/* padding-left: 20px; */ 
}
th {
	padding-left: 20px;
}
</style>
<head>
<%@ include file="title.jsp" %>
<meta charset="ISO-8859-1">

</head>
<body>
<%@ include file="header.jsp" %>
<CENTER><h3 style="color: white; padding-bottom: 20px; padding-top: 20px; margin-bottom: 20px;">Payment Success !!!!!</h3>

	


<%@ include file="commonflightdetails.jsp" %>
<table style="width:90%; border: 0 2px 2px 2px solid grey; z-index: 2;">
<tr>
	<th>No of Additional Persons:</th>
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
	<td><span style="font-weight: 700; font-size: 24px;"><c:out value="${additionalinfo.totalamount}" /></span></td>	
</tr>
<tr> 
<th></th>
<td><a href="javascript:window.print()" style="border: 1px; background: #3399ff; padding: 5px 10px; border-radius: 4px; margin-bottom: 20px; ">Print this page</a>
</td>
</tr>
</table>
</CENTER>


<%@ include file="footer.jsp" %>
</body>
</html>