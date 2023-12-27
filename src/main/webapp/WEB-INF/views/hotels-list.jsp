<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home page!!</title>
</head>
<body>
	<h1>Hotel Lists</h1>

	<br>
	<div align="center">
	
		<table border=1>
			<thead>
				<tr>
					<td>Hotel Id</td>
					<td>Hotel Name</td>
					<td>Hotel Location</td>
					<td>Hotel Ratings</td>
					<td>Swimming Pool</td>
					<td>Tour Guide</td>
					<td>Price</td>
					<td>Discount</td>
					<td>Operation</td>
				</tr>
			</thead>


			<c:forEach var="hotel" items="${hotels}">
				<tr>
					<td>${hotel.hotelId }</td>
					<td>${hotel.hotelName }</td>
					<td>${hotel.location }</td>
					<td>${hotel.ratings }</td>
					<td>${hotel.swimmingPool }</td>
					<td>${hotel.tourGuide }</td>
					<td>${hotel.price }</td>
					<td>${hotel.discount }</td>
					<td><a href="updateHotel?hotelId=${hotel.hotelId}">Edit</a>
						<a href="deleteHotel?hotelId=${hotel.hotelId}"
						onclick="if (!(confirm('Do you really want to delete this hotel record?'))) return false">Delete</a>
						
					</td>
				</tr>
			</c:forEach>

		</table>
		<a href="/Hotel_Booking/insertHotel">
		<button>Insert New Hotel</button></a>
		<a href="/Hotel_Booking/">
		<button>Take me to home Page</button></a>
	</div>
</body>
</html>