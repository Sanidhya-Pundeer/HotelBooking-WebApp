<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin-Login</title>
</head>
<body>
	<h3>ADMIN LOGIN</h3>
	<form:form action="login" method="post" modelAttribute="admin">
	<label for="adminId">Admin UserId</label>
	<form:input type="text" path="adminId"/>
	<p style="color: red">${err}</p>
	<label for="adminPass">Admin Password</label>
	<form:input type="password" path="adminPass"/>
	<p style="color: red">${error}</p>
	<br>
	<br>
	<input type="submit" value="login">
	</form:form>
	<a href="/Hotel_Booking/">
	<br>
	<button>Take me to home page</button></a>
</body>
</html>