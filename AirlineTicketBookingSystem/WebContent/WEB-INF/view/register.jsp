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
<CENTER><h1 style="color: white; padding-bottom: 20px; padding-top: 20px;">Registration Form</h1></CENTER> 
<r:form action="registrationsuccess" modelAttribute="loginattribute">
	
	<CENTER><table style="width:50%; border: 2px solid grey; z-index: 2;">
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
  		<td><input type="submit" value="Register"></td>
  	</tr>
  	</table> </CENTER>
  </r:form>
<%@ include file="footer.jsp" %>
</body>
</html>