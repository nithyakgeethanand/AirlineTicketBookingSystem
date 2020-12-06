<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<html>
<head>
<%@ include file="title.jsp" %>
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
<style>

table {
  
  border-collapse: collapse;
}
td {
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 20px;
}
th {
	padding-left: 20px;
}
#submitbutton {
	margin-left: 300px;
	margin-top: 40px;
}


</style>
</head>
<body>
<%@ include file="header.jsp" %>


<h1>Welcome To Airline Reservation</h1>
<%-- <img src="/resources/images/header.jpg" alt="flight" style="width:400px;height:400px">
<img src='<c:url value="/images/header.jpg"></c:url>' />  --%>
<h6>Please enter the details for Booking</h6>

<f:form action="flights" modelAttribute="flightinfoattribute">
<table style="width:80%">
  <tr>
    <th>Source:</th>
    <td><f:select style="width:200px; height:35px;" path="f_source" required="required" >
    	<option>--select--</option>
    	<option>Trivandrum</option>
    	<option>Chennai</option>
    	<option>Bangalore</option>
    	<option>Goa</option>
    	<option>Kolkata</option>
    	<option>Hyderabad</option>
    	<option>Chandigarh</option>
    	<option>Kochi</option>
    	<option>Jammu</option>
    	<option>Mangalore</option>
    </f:select></td>
    </tr>
  <tr>
    <th>Destination:</th>
    <td><f:select style="width:200px; height:35px;" path="f_destination" required="required">
    	<option>--select--</option>
    	<option>Mumbai</option>
    	<option>Pune</option>
    	<option>Delhi</option>
    	<option>Trivandrum</option>
    	<option>Chennai</option>
    	<option>Bangalore</option>
    	<option>Goa</option>
    	<option>Kolkata</option>
    	<option>Hyderabad</option>
    	<option>Chandigarh</option>
    	<option>Kochi</option>
    </f:select></td>
    
  </tr>
  <tr>
    <th>Date:</th>
    <td><f:input style="width:200px; height:35px;" value="mm/dd/yyyy" path="date" id="datepicker" required="required"/></td>
    
  </tr>
</table>
<tr>
  <td></td>
  <td><input id="submitbutton" type="submit" value="Find Flights"></td>
  </tr>
		
	</f:form>
	<%@ include file="footer.jsp" %>
</body>
</html>