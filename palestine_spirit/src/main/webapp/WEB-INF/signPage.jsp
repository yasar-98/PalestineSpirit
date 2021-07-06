<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	    <!--===============================================================================================-->	
		<link rel="icon" type="image/png" href="/imgs/icons/favicon.ico"/>
		<!--===============================================================================================-->
			<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
		<!--===============================================================================================-->
			<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
		<!--===============================================================================================-->
			<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
		<!--===============================================================================================-->
			<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
		<!--===============================================================================================-->	
			<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
		<!--===============================================================================================-->
			<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
		<!--===============================================================================================-->
			<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
		<!--===============================================================================================-->	
			<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
		<!--===============================================================================================-->
			<link rel="stylesheet" type="text/css" href="css/util.css">
			<link rel="stylesheet" type="text/css" href="css/main1.css">
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Login/Register</title>
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/tour.gif);">
					<span class="login100-form-title-1">
						Sign Up
					</span>
				</div>
    
	<div class="container">
		<form:form class="user-form" action="/register" method="post"
			modelAttribute="registration">
			
			<div class="form-group">
				<form:label path="username" >Username</form:label>
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
			
				<p>Register as : </p>
				<form:radiobutton name="role" path="role" value="1" checked="checked"/> 
				Tourist 
				<form:radiobutton name="role" path="role" value="2"/> Guide
			
			<form:errors path="role" class="red"/>
			<br><br>
			<button class="btn btn-secondary">Register</button>

		</form:form>
		<br>
		<br>
		<div class="wrap-input100 validate-input m-b-26"></div>
		<form action="/login" class="user-form" method="post" >
			<h2 style="text-align: center;">Login</h2>
			
			<div class="form-group">
				<label for="email">Email</label> <input type="email" name="email"
					id="email" class="form-control" />
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					name="password" id="password" class="form-control" />
					<span class="red">${ error }</span>
			</div>
			
			<button class="btn btn-info">Login</button>

		</form>
	</div>
</body>
</html>


