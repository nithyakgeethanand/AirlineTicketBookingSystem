<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="r" %>
<html>
<head>
<%@ include file="title.jsp" %>
<meta charset="ISO-8859-1">

</head>
<body>
<h1>Add Flights Form</h1>  
<r:form action="admin" modelAttribute="adminaddattribute">
	
	<table style="width:80%">
  	<tr>
    	<td>Flight Number:</td>
    	<td><r:input path="f_no" /></td>
    </tr>
    <tr>
  		<td></td>
  		<td><input type="submit" value="Delete Details" ></td>
  	</tr>
      	</table> 
  </r:form>
</body>
</html>