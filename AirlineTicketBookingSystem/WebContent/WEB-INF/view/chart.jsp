<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="r" %>
<html>
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
</style>
<head>
<%@ include file="title.jsp" %>
<%@ include file="header.jsp" %>
<meta charset="ISO-8859-1">

</head>
<body>	

<CENTER><h3 style="color: white; padding-bottom: 20px; padding-top: 20px;">Booking Details</h3>

	<table style="width:80%; border: 2px solid grey; z-index: 2;">
  	<tr>
    	<th style="padding-top: 10px;">Flight Number:</th>
    	<th style="padding-top: 10px;"><c:out value="${chartfnumber}"/></th>
    </tr>
    <tr>
    	<th style="padding-bottom: 30px;">Date:</th>
    	<th style="padding-bottom: 30px;"><c:out value="${chartfdate}"/></th>
    
    </tr>
    <tr> 
    <th>Username</th>
    <th>No of Additional Passengers</th>
    <th>Seat Number</th>
   
    </tr> 
    
    
    <c:forEach items="${flights}" var="flight">
    <tr>
    	
    	<td><c:out value="${flight.username}"/></td>
   
        <td><c:out value="${flight.noofpassenger}"/></td>
    	
    	<td><c:out value="${flight.seatnumber}"/></td>
    
       	<td>
    	<a href="/AirlineTicketBookingSystem/updateseatnumber?flight=${chartfnumber}&&bookdate=${chartfdate}&&user=${flight.username}&&addno=${flight.noofpassenger}" style="border: 1px; background: #3399ff; padding: 5px 10px; border-radius: 4px;">Add Seat Number</a>
    	</td>
    </tr>
   
     	</c:forEach>
     	
     	<tr>
     	<td></td>
     	<td></td>
     	<td></td>
     	<td>
     	<a href="javascript:window.print()" style="border: 1px; background: #3399ff; padding: 5px 10px; border-radius: 4px;">Print this page</a>   
     	</td>
     	</tr>
  
     	
     	</table> </CENTER>
  
<%@ include file="footer.jsp" %>
</body>
</html>