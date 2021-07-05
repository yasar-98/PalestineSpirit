<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/main.css" />
<meta charset="ISO-8859-1">
<title>Event Planner</title>
</head>
<body>
	<div class="container">
		<form:form class="user-form" action="/register" method="post"
			modelAttribute="registration">
			<h2>Register</h2>
			<div class="form-group">
				<form:label path="username">User Name</form:label>
				<form:errors path="username" class="red"/>
				<form:input class="form-control" path="username" />
			</div>
			<div class="form-group">
				<form:label path="phoneNumber">Phone Number</form:label>
				<form:errors path="phoneNumber" class="red" />
				<form:input class="form-control" path="phoneNumber" />
			</div>
			<div class="form-group">
				<form:label path="email">Email</form:label>
				<form:errors path="email" class="red"/>
				<form:input type="email" class="form-control" path="email" />
			</div>
			<div class="form-group">
				<form:label path="password">Password</form:label>
				<form:errors path="password" class="red"/>
				<form:password class="form-control" path="password" />
			</div>
			<div class="form-group">
				<form:label path="passwordConfirmation">Confirm Password</form:label>
				<form:errors path="passwordConfirmation" class="red"/>
				<form:password class="form-control" path="passwordConfirmation" />
			</div>
			<div class="wrap-input100 validate-input m-b-26">
				<form:radiobutton name="role" path="role" value="1" checked="checked"/> 
				Tourist 
				<form:radiobutton name="role" path="role" value="2"/> Guide
			</div>
			<form:errors path="role" class="red"/>
			<div class="flex-sb-m w-full p-b-30"></div>

			<button class="btn btn-secondary">Register</button>

		</form:form>
		<br>

		<form action="/login" class="user-form" method="post">
			<h2>Login</h2>
			<span class="red">${ error }</span>
			<div class="form-group">
				<label for="email">Email</label> <input type="email" name="email"
					id="email" class="form-control" />
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					name="password" id="password" class="form-control" />
			</div>
			<button class="btn btn-info">Login</button>

		</form>
	</div>
</body>
</html>


