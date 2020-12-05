<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
<style>
td {
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 20px;
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
<h3>List of Flights are as follows.</h3>   
<table>

<tr>
	
    <th>Flight Number</th>
    <th>Flight Name</th> 
    <th>Source</th>
    <th>Destination</th>
    <th>Date of Travel</th> 
    <th>Time</th>
    <th>Airport Name</th>
    <th>Ticket Rate</th> 
  </tr>
<c:forEach items="${flightlist}" var="flight">
    <tr>
        <td><c:out value="${flight.f_no}"/></td>
        <td><c:out value="${flight.f_name}"/></td>
        <td><c:out value="${flight.f_source}"/></td>
        <td><c:out value="${flight.f_destination}"/></td>
        <td><c:out value="${flight.date}"/></td>
        <td><c:out value="${flight.f_time}"/></td>
        <td><c:out value="${flight.airportname}"/></td>
        <td><c:out value="${flight.amount}"/></td>
        <td><a href="/AirlineTicketBookingSystem/bookdetails?flight=${flight.f_no}&&bookdate=${flight.date}" >Book</a></td>
       
    </tr>
</c:forEach>
</table>

<script>
function saveSelected(radio){
	if(document.getElementById(radio).checked){
		document.getElementById("dynamicName").value = radio.value;
	}
}
</script>	
	<!-- <script>
	function myFunction(){
		var f_no;
		console.log("flight details",f_no);
		/* for(var flight: flightlist) {
			if(document.getElementById(flight.f_no).checked){
				f_no = flight.f_no;
			}
			
		} */
		console.log("flight number",f_no);
		window.location.href = ("bookdetails");
	}
</script> -->
<%@ include file="footer.jsp" %>
</body>
</html>