<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="ff" %>
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
<ff:form action="payment" modelAttribute="passengersattribute">
	
	<table style="width:80%">
  <tr>
    <th>Number of Additional Passengers:</th>
    <td><ff:input path="noofpassenger" /></td>
  
    </tr>
  <tr>
    <th>Additional Passenger 1:</th>
    <td><ff:input path="additional1" /></td>  
  </tr>
  <tr>
    <th>Additional Passenger 2:</th>
    <td><ff:input path="additional2" /></td>  
  </tr>
  <tr>
    <th>Additional Passenger 3:</th>
    <td><ff:input path="additional3" /></td>  
  </tr>
  <tr>
    <th>Additional Passenger 4:</th>
    <td><ff:input path="additional4" /></td>  
  </tr>
  <tr>
    <th>Total Amount:</th>
    <td><span id="totalamount" ><ff:input path="totalamount" /></span></td>  
  </tr>
  <tr>
  <td></td>
  <td><input type="submit" value="Pay Now"></td>
  </tr>
  
</table>
		
</ff:form>

<script>

	function calculateTotal(){
		var amount = document.getElementById('amount').textContent; 
	    var noofpassenger = document.getElementById('noofpassenger').value;
	    var totalamount = document.getElementById('totalamount'); 
	    var total = (parseInt(amount) * parseInt(noofpassenger));
	    console.log(parseInt(amount),parseInt(noofpassenger),total);
	    
	    totalamount.innerHTML = total;
	}
	
</script>
<%@ include file="footer.jsp" %>
</body>
</html>

