<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form method="POST" action="/createtrip" modelAttribute="trip">
		<p>
			<form:label path="site">trip location:</form:label>
			<form:select path="site">
				<c:forEach items="${sites}" var="list">
					<form:option value="${list.id}"> ${list.name} </form:option>
				</c:forEach>
			</form:select>
		</p>

		<p>
			<form:label path="date">tour date:</form:label>
			<form:input type="date" path="date" />
			<form:errors path="date" />


		</p>
		<p>
			<form:label path="capacity">capacity:</form:label>
			<form:input path="capacity" />
			<form:errors path="capacity" />

		</p>
		<p>
			<form:label path="fees">fees:</form:label>
			<form:input path="fees" />
			<form:errors path="fees" />


		</p>
		<input type="submit" value="create trip" />
	</form:form>
</body>
</html>