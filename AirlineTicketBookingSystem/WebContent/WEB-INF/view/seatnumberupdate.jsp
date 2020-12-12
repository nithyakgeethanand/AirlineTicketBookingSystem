<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="r" %>
<html>
<head>
<%@ include file="title.jsp" %>
<%@ include file="header.jsp" %>
<meta charset="ISO-8859-1">

</head>
<body>
<h1>Update Seat Number</h1>  
<r:form action="chart" modelAttribute="seatnumberupdateattribute">
	
	<table style="width:80%">
  	<tr>
    	<td>Flight Number:</td>
    	<td><c:out value="${chartfnumber}"/></td>
    </tr>
  	
   
    <tr>
    	<td>Date:</td>
    	<td><c:out value="${chartfdate}" /></td>
    </tr>
    <tr>
    	<td>User Name:</td>
    	<td><c:out value="${chartfusername}"/></td>
    </tr>
    
    <tr>
    	<td>Number of Additional Passengers:</td>
    	<td><c:out value="${chatfaddno}" /></td>																						
    </tr>	
    <tr>
    	<td>Seat Number:</td>
    	<td><r:input path="seatnumber" value="${flight.seatnumber}" /></td>																						
    </tr>	
    																																																		
  	<tr>
  		<td></td>
  		<td><input type="submit" value="Update"></td>
  	</tr>
  	</table> 
  </r:form>
<%@ include file="footer.jsp" %>
</body>
</html>