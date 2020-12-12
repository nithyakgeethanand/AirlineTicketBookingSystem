<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="r" %>
<html>
<style>
th {
	padding-left: 10px;
}
td {
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 20px;
}
</style>
<head>
<%@ include file="title.jsp" %>
<%@ include file="header.jsp" %>
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
<meta charset="ISO-8859-1">
</head>
<body>
<CENTER>
<h1 style="color: white; padding-bottom: 20px; padding-top: 20px;">Add Flights Form</h1>  
<r:form action="admin" modelAttribute="adminaddattribute">
	
	<table style="width:80%; border: 2px solid grey; z-index: 2;">
  	<tr>
    	<th>Flight Number:</th>
    	<td><r:input path="f_no" /></td>
    </tr>
  	<tr>
    	<th>Flight Name:</th>
    	<td><r:input path="f_name" /></td>
    </tr>
    <tr>
    	<th>Flight Source:</th>
    	<td><r:input path="f_source" /></td>
    </tr>
    <tr>
    	<th>Flight Destination:</th>
    	<td><r:input path="f_destination" /></td>
    </tr>
    <tr>
    	<th>Date:</th>
    	<td><r:input path="date" id="datepicker"  /></td>
    </tr>
    
    <tr>
    	<th>Flight Time:</th>
    	<td><r:input path="f_time"  /></td>																						
    </tr>	
    <tr>
    	<th>Airport Name:</th>
    	<td><r:input path="airportname" /></td>																						
    </tr>	
    <tr>
    	<th>Amount:</th>
    	<td><r:input path="amount"  /></td>																						
    </tr>																																																									
  	<tr>
  		<td></td>
  		<td><input type="submit" value="Add Details" ></td>
  	</tr>
  	</table> 
  </r:form>
  </CENTER>
<%@ include file="footer.jsp" %>
</body>
</html>