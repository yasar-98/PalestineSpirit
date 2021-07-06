<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">

<title>Insert title here</title>
</head>
<body>

	<table class="table table-dark">
		<thead>
			<tr>
				<th scope="col">site</th>
				<th scope="col">fees</th>
				<th scope="col">capacity</th>
				<th scope="col">date</th>
				<th scope="col">ACTION</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${alltours}" var="tour">
				<tr>
					<th><c:out value="${tour.site.name }"></c:out></th>
					<th><c:out value="${tour.fees }"></c:out></th>
					<th><c:out value="${tour.capacity }"></c:out></th>
					<th><fmt:formatDate value="${tour.date}" pattern="yyyy-MM-dd" /></th>
					<th><c:choose>
							<c:when test="${ tour.travellers.contains(user)}">
								<span>Joining <a href="/tours/${ tour.id }/a/cancel">Cancel</a></span>
							</c:when>
							<c:otherwise>
								<a href="/tours/${ tour.id }/a/join">Join</a>
							</c:otherwise>

						</c:choose></th>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>