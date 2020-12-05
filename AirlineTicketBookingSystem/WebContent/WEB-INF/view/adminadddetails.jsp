<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="r" %>
<html>
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
<h1>Add Flights Form</h1>  
<r:form action="admin" modelAttribute="adminaddattribute">
	
	<table style="width:80%">
  	<tr>
    	<td>Flight Number:</td>
    	<td><r:input path="f_no" /></td>
    </tr>
  	<tr>
    	<td>Flight Name:</td>
    	<td><r:input path="f_name" /></td>
    </tr>
    <tr>
    	<td>Flight Source:</td>
    	<td><r:input path="f_source" /></td>
    </tr>
    <tr>
    	<td>Flight Destination:</td>
    	<td><r:input path="f_destination" /></td>
    </tr>
    <tr>
    	<td>Date:</td>
    	<td><r:input path="date" id="datepicker"  /></td>
    </tr>
    
    <tr>
    	<td>Flight Time:</td>
    	<td><r:input path="f_time"  /></td>																						
    </tr>	
    <tr>
    	<td>Airport Name:</td>
    	<td><r:input path="airportname" /></td>																						
    </tr>	
    <tr>
    	<td>Amount:</td>
    	<td><r:input path="amount"  /></td>																						
    </tr>																																																									
  	<tr>
  		<td></td>
  		<td><input type="submit" value="Add Details" ></td>
  	</tr>
  	</table> 
  </r:form>
  <!-- <script>
	function myFunctionAdd(){
		window.location.href = ("admin");
	}
</script> -->
<%@ include file="footer.jsp" %>
</body>
</html>