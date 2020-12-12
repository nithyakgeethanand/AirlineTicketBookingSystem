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
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
</head>
<body>
<CENTER>
<<h1 style="color: white; padding-bottom: 20px; padding-top: 20px;">Update Flight Details</h1>  
<r:form action="admin" modelAttribute="adminupdateattribute">
	
	<table style="width:80%; border: 2px solid grey; z-index: 2;">
  	<tr>
    	<th>Flight Number:</th>
    	<td><a:out value="${selectflight.f_no}"/></td>
    </tr>
  	<tr>
    	<th>Flight Name:</th>
    	<td><a:out value="${selectflight.f_name}" /></td>
    </tr>
    <tr>
    	<th>Flight Source:</th>
    	<td><a:out value="${selectflight.f_source}" /></td>
    </tr>
    <tr>
    	<th>Flight Destination:</th>
    	<td><a:out value="${selectflight.f_destination}" /></td>
    </tr>
    <tr>
    	<th>Date:</th>
    	<td><r:input path="date" value="${selectflight.date}" id="datepicker"/></td>
    </tr>
    
    <tr>
    	<th>Flight Time:</th>
    	<td><r:input path="f_time" value="${selectflight.f_time}" /></td>																						
    </tr>	
    <tr>
    	<th>Airport Name:</th>
    	<td><a:out value="${selectflight.airportname}" /></td>																						
    </tr>	
    <tr>
    	<th>Amount:</th>
    	<td><r:input path="amount" value="${selectflight.amount}"/></td>																						
    </tr>																																																									
  	<tr>
  		<td></td>
  		<td><input type="submit" value="Update Details"></td>
  	</tr>
  	</table> 
  </r:form>
  </CENTER>
<%@ include file="footer.jsp" %>

</body>
</html>