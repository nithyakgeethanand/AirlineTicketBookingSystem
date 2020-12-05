<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="ff" %>
<html>
<head>
<%@ include file="title.jsp" %>
<%@ include file="header.jsp" %>
<meta charset="ISO-8859-1">

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

span {
  margin: 0;
  position: absolute;
  top: 65%;
  left: 16%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}
</style>

</head>
<body>
<h3>Login Form</h3>
<ff:form action="logindetails" modelAttribute="loginattribute">
	
	<table style="width:80%">
  <tr>
    <th>Username:</th>
    <td><ff:input path="username" required="required" /></td>
    </tr>
  <tr>
    <th>Password:</th>
    <td><ff:password path="password" required="required" /></td>  
  </tr>
  <tr>
  <td></td>
  <td><input type="submit" value="Login"></td>
  </tr>
  <tr>
  <td>New USER??</td>
  <td><a href="#" onclick="myFunction()">Sign Up</a>
  </td>
  </tr>
</table>
<script>
	function myFunction(){
		window.location.href = ("register");
	}
</script>

		
</ff:form>
<%@ include file="footer.jsp" %>
</body>
</html>