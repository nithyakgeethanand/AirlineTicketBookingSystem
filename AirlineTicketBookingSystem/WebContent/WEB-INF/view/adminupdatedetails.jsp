<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "a" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="r" %>
<html>
<style>
th {
	padding-left: 10px;
}
td {
	padding-top: 5px;
	padding-bottom: 10px;
	padding-left: 20px;
}

</style>
<head>
<%@ include file="title.jsp" %>
<%@ include file="header.jsp" %>
<meta charset="ISO-8859-1">
</head>
<body>

<h1>Update Flight Details</h1>  
<r:form action="admin" modelAttribute="adminupdateattribute">
	
	<table style="width:80%">
  	<tr>
    	<td>Flight Number:</td>
    	<td><a:out value="${selectflight.f_no}"/></td>
    </tr>
  	<tr>
    	<td>Flight Name:</td>
    	<td><a:out value="${selectflight.f_name}" /></td>
    </tr>
    <tr>
    	<td>Flight Source:</td>
    	<td><a:out value="${selectflight.f_source}" /></td>
    </tr>
    <tr>
    	<td>Flight Destination:</td>
    	<td><a:out value="${selectflight.f_destination}" /></td>
    </tr>
    <tr>
    	<td>Date:</td>
    	<td><r:input path="date" value="${selectflight.date}"/></td>
    </tr>
    
    <tr>
    	<td>Flight Time:</td>
    	<td><r:input path="f_time" value="${selectflight.f_time}" /></td>																						
    </tr>	
    <tr>
    	<td>Airport Name:</td>
    	<td><a:out value="${selectflight.airportname}" /></td>																						
    </tr>	
    <tr>
    	<td>Amount:</td>
    	<td><r:input path="amount" value="${selectflight.amount}"/></td>																						
    </tr>																																																									
  	<tr>
  		<td></td>
  		<td><input type="submit" value="Update Details"></td>
  	</tr>
  	</table> 
  </r:form>
<%@ include file="footer.jsp" %>

</body>
</html>