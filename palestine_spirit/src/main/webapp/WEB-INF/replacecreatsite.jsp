<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form method="POST" action="/createsite2" modelAttribute="site" >
		<p>
			<form:label path="name" style="margin-right: 22px;">Site name: </form:label>
			<form:input path="name" />
			<form:errors path="name" />

		</p>
		<p>
			<form:label path="location" style="margin-right: 5px;">Site location: </form:label>
			<form:input path="location" />
			<form:errors path="location" />

		</p>
		<p>
			<form:label path="desc" style="margin-right: 10px;">Description: </form:label>
			<form:textarea path="desc" />
			<form:errors path="desc" />

		</p>

		<p>
			<form:select path="cit">
				<c:forEach items="${cities}" var="list">
					<form:option value="${list.id}"> ${list.name} </form:option>
				</c:forEach>
			</form:select>
		</p>
					<form:label path="extraimage1" style="margin-right: 10px;">Description: </form:label>
					<form:input path="extraimage1" />
					<form:label path="extraimage2" style="margin-right: 10px;">Description: </form:label>
					<form:input path="extraimage2" />
					<form:label path="extraimage3" style="margin-right: 10px;">Description: </form:label>
					<form:input path="extraimage3" />
					<form:label path="extraimage4" style="margin-right: 10px;">Description: </form:label>
					<form:input path="extraimage4" />
				<input type="submit" value="Create a new city" class="btn btn-primary" style="margin-top: 10px;"/>
		
		</form:form>
		<h1>asd</h1>

</body>
</html>