<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "a" %>
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


<meta charset="ISO-8859-1">

</head>
<body>
<CENTER><h3 style="color: white; padding-bottom: 20px; padding-top: 20px;">List of Flight details </h3></CENTER>
<CENTER><table style="width:80%; border: 2px solid grey; z-index: 2;">

<tr>
	
    <th>Flight Number</th>
    <th>Flight Name</th> 
    <th>Source</th>
    <th>Destination</th>
    <th>Date of Travel</th> 
    <th>Time</th>
    <th>Airport Name</th>
    <th>Ticket Rate</th> 
    <th></th>
    <th></th>
    <th></th>
  </tr>
<a:forEach items="${flightlist}" var="flight">
    <tr>
    	
        <td><a:out value="${flight.f_no}"/></td>
        <td><a:out value="${flight.f_name}"/></td>
        <td><a:out value="${flight.f_source}"/></td>
        <td><a:out value="${flight.f_destination}"/></td>
        <td><a:out value="${flight.date}"/></td>
        <td><a:out value="${flight.f_time}"/></td>
        <td><a:out value="${flight.airportname}"/></td>
        <td><a:out value="${flight.amount}"/></td>
        <td><a href="/AirlineTicketBookingSystem/flightdelete?flight=${flight.f_no}&&bookdate=${flight.date}" style="border: 1px; background: #3399ff; padding: 5px 10px; border-radius: 4px;">Delete</a></td>
        <td><a href="/AirlineTicketBookingSystem/flightupdate?flight=${flight.f_no}&&bookdate=${flight.date}" style="border: 1px; background: #3399ff; padding: 5px 10px; border-radius: 4px;">Update</a></td>
        <td><a href="/AirlineTicketBookingSystem/flightchart?flight=${flight.f_no}&&bookdate=${flight.date}" style="border: 1px; background: #3399ff; padding: 5px 10px; border-radius: 4px;">Chart</a></td>
      
    </tr>
</a:forEach>

<tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>
<a href="#" onclick="myFunctionAdd()" style="border: 1px; background: #3399ff; padding: 5px 10px; border-radius: 4px;">Add</a>
</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>

</table></CENTER>

	<script>
	function myFunctionAdd(){
		window.location.href = ("adminadddetails");
	}
</script>


<%@ include file="footer.jsp" %>
</body>
</html>