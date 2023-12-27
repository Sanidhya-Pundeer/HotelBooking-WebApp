<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User-Login</title>
</head>
<body>
	<h3>USER LOGIN</h3>
	<form:form action="loginUser" method="post" modelAttribute="user">
	<label for="userId">UserId</label>
	<form:input type="text" path="userId"/>
	<p style="color: red">${err}</p>
	<label for="userPass">User Password</label>
	<form:input type="password" path="userPass"/>
	<p style="color: red">${error}</p>
	<br>
	<br>
	<input type="submit" value="login">
	</form:form>
	
<a href="/Hotel_Booking/register">
<br>
<button>New User Sign Up</button></a>
<a href="/Hotel_Booking/">
<button>Take me to home page</button></a>
</body>
</html>