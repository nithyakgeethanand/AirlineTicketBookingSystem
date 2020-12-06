<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%-- <%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %> --%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<style>
body {
	position:relative; 
    margin:0;
    padding:0;
    overflow:auto; 
 	color: white;
	background-image: url("/AirlineTicketBookingSystem/resources/images/flight_image.jpg");  
 /* background-color: #657ae0; */
 }
table { 
 
  border-collapse: collapse;
}


div {
  margin: 0;
  position: absolute;
  top: 70%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}

nav {
	height: 40px; 
    background: black;
    color: white; 	   
}
nav td {
		padding-left: 10px; 
	    padding-top: 7px;
	    color: white;
}
a:link {
  color: white;
  background-color: transparent;
  
}

a:visited {
  color: white;
  background-color: transparent;
 
} 
nav th {
	   	right: 10px;
	   	position: absolute;
	   }

img {
	height: 100%;
	width: 100%;
}
</style>

<body>
<nav>

  <table style="width:50%">
  <tr>
    <td><a href="/AirlineTicketBookingSystem">Home</a></td>
    <td><a href="/AirlineTicketBookingSystem/login">Login</a></td>
    <td><a href="/AirlineTicketBookingSystem/contactus">Contact Us</a></td>
    <td></td>
    <td></td>
    <th>Airline Ticket Booking System</th>
    </tr>  
</table>
</nav>
<!-- <img src="/AirlineTicketBookingSystem/resources/images/header.jpg" > -->

<%-- <a href="${pageContext.request.contextPath}/header"><img class="logo" src="${pageContext.request.contextPath}/resources/images/header.png" ></a> --%>
<%-- <img src="${pageContext.request.contextPath}/resources/images/header.jpg" / > --%>
<!-- <spring:url value="/resources/images/header.jpg" var="jpg" /> -->
</body>
</html>