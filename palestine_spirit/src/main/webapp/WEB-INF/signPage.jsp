<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign Page</title>
</head>
<body>
	<h1>Register!</h1>
	<form:form method="POST" action="/registration" modelAttribute="user"
	>
	    <p>
            <form:label path="username">Username:</form:label>
            <form:input path="username"/>
            <form:errors path="username"/>
        </p>
	
        <p>
            <form:label path="email">Email:</form:label>
            <form:input type="email" path="email"/>
            <form:errors path="email"/>
        </p>
        <p>
            <form:label path="phoneNumber">Phone Number:</form:label>
            <form:input path="phoneNumber"/>
            <form:errors path="phoneNumber"/>
        </p>        
        <p>
            <form:label path="password">Password:</form:label>
            <form:password path="password"/>
            <form:errors path="password"/>
        </p>
        <p>
            <form:label path="passwordConfirmation">Password Confirmation:</form:label>
            <form:password path="passwordConfirmation"/>
            <form:errors path="passwordConfirmation"/>
        </p>
        <p>       
            <input type="radio" name="role" value="USER" />Tourist 
            <input type="radio" name="role" value="GUIDE" />Guide 
         </p>	
        <input type="submit" value="Register!" />
	</form:form>

	<h1>Login</h1>
	<p><c:out value="${error}" /></p>
	<form method="POST" action="/login">
		<p>
			<label for="username">Username</label> <input type="text"
				id="username" name="username" />
		</p>
		<p>
			<label for="password">Password</label> <input type="password"
				id="password" name="password" />
		</p>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="submit" value="Login!" />
	</form>
</body>
</html>

