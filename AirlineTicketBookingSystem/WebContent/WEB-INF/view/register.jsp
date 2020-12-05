<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="r" %>
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
<h1>Registration Form</h1>  
<r:form action="registrationsuccess" modelAttribute="loginattribute">
	
	<table style="width:80%">
  	<tr>
    	<th>First Name:</th>
    	<td><r:input path="firstname" required="required"/></td>
    </tr>
  	<tr>
    	<th>Last Name:</th>
    	<td><r:input path="lastname" required="required" /></td>
    </tr>
    <tr>
    	<th>User Name:</th>
    	<td><r:input path="username" required="required"/></td>
    </tr>
    <tr>
    	<th>Password:</th>
    	<td><r:password path="password" required="required"/></td>
    </tr>
    <tr>
    	<th>Email:</th>
    	<td><r:input path="emailid" required="required"/></td>
    </tr>
    
    <tr>
    	<th>Phone Number:</th>
    	<td><r:input path="phoneno" required="required"/></td>																						
    </tr>	
    <tr>
    	<th>Address:</th>
    	<td><r:input path="address" required="required"/></td>																						
    </tr>																																																
  	<tr>
  		<th></th>
  		<td><input type="submit" value="Payment & Book"></td>
  	</tr>
  	</table> 
  </r:form>
<%@ include file="footer.jsp" %>
</body>
</html>