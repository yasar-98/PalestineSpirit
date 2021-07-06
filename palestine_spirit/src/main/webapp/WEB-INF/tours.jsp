<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css" />
<title>Insert title here</title>
</head>
<body>
<h1>All Trips</h1>
<table class="table table-hover">
    <thead>
        <tr>
            <th>Location</th>
            <th>Date</th>
            <th>Capacity</th>
            <th>Fees</th>
            <th>Action</th>
           
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${tours}" var="tour">
        <tr>
            <td><c:out value="${site.location}"/></td>
            <td><c:out value="${tour.date}"/></td>
            <td><c:out value="${tour.capacity}"/></td>
            <td><c:out value="${tour.fees}"/></td>
            <td><a href="trips/${tour.id}/join">Join</a></td>
        </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>