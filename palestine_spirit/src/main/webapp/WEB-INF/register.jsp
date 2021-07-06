<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
    <!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/imgs/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main1.css">
<!--===============================================================================================-->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <h1>Register!</h1>
    <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(imgs/tour.gif);">
					<span class="login100-form-title-1">
						Sign Up
					</span>
				</div>
    <p><form:errors path="user.*"/></p>
    
    <form:form method="POST" action="/registration" modelAttribute="user">
            <p>
            <form:label path="username">username:</form:label>
            <form:errors path="username"/>
            <form:input type="username" path="username"/>
        </p>
            <p>
            <form:label path="email">Email:</form:label>
      		<form:errors path="email"/>
            <form:input type="email" path="email"/>
        </p>
            <p>
            <form:label path="password">password:</form:label>
            <form:errors path="password"/>
            <form:input type="password" path="password"/>
        </p>
            <p>
            <form:label path="passwordConfirmation">password confirmation:</form:label>
            <form:errors path="passwordConfirmation"/>
            <form:input type="password" path="passwordConfirmation"/>
        </p>
    
        <p>
            <form:label path="phoneNumber">phone number:</form:label>
            <form:errors path="phoneNumber"/>
            <form:input type="phoneNumber" path="phoneNumber"/>
        </p>        
        <input type="submit" value="Register!"/>
    </form:form>
    

</body>
</html>