<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<style>
span {
	font-weight: 700;
	padding-left: 10px;
	padding-right: 20px;
	padding-bottom: 20px;
}
</style>
<head>
<%@ include file="title.jsp" %>
<%@ include file="header.jsp" %>
<meta charset="ISO-8859-1">

</head>
<body>
<h4 align="right">Welcome <a href="direction?id=${sessionScope.name}" >${sessionScope.name}</a></h4>
<h3>Here is the Booking Details</h3>
<%@ include file="commonflightdetails.jsp" %>

	<span>Continue Payment :</span>
 	<a href="#" onclick="myFunction()">Pay Now</a>


<script>
	function myFunction(){
		window.location.href = ("payment");
	}
</script>
<%@ include file="footer.jsp" %>
</body>
</html>

