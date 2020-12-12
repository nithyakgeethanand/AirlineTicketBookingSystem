<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="ff" %>
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
<%@ include file="header.jsp" %>
<meta charset="ISO-8859-1">

</head>
<body>
<CENTER><h3 style="color: white; padding-bottom: 20px; padding-top: 20px;">Payment </h3>
<ff:form action="paymentsuccess" modelAttribute="paymentattribute">
	
	<table style="width:80%">
  	<tr>
    	<th>Card Number:</th>
    	<td><ff:input path="cardno" required="required" /></td>
    </tr>
  	<tr>
    	<th>Card Holder Name:</th>
    	<td><ff:input path="cardholdername" required="required" /></td>
    </tr>
    <tr>
    	<th>Month:</th>
    	<td><ff:select path="month" required="required">
           <option>01</option>
           <option>02</option>   
           <option>03</option>
           <option>04</option>
           <option>05</option>
           <option>06</option>   
           <option>07</option>
           <option>08</option>
           <option>09</option>   
           <option>10</option>
           <option>11</option>
           <option>12</option>
       </ff:select></td>
    </tr>
    <tr>
    	<th>Year:</th>
    	<td><ff:select path="year" required="required" >
    	 <option>2020</option>
           <option>2021</option>   
           <option>2022</option>
           <option>2023</option>
           <option>2024</option>
           <option>2025</option>   
           <option>2026</option>
           <option>2027</option>
           <option>2028</option>   
           <option>2029</option>
           <option>2030</option>
    	</ff:select></td>
    	
    </tr>
    <tr>
    	<th>CVV Number:</th>
    	<td><ff:password path="cvvno" required="required" /></td>																						
    </tr>																																								
  	<tr>
  	<td></td>
  	<td><input type="submit" value="Payment & Book"></td>
  	</tr>
  	</table> </CENTER>
  </ff:form>
  <%@ include file="footer.jsp" %>
</body>
</html>