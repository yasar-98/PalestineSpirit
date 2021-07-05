<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <form:form method="POST" action="/registration" modelAttribute="user">
            <p>
            <form:label path="username">username:</form:label>
            <form:errors path="username"/>
            <form:input type="username" path="username"/>
        </p>
            <p>
 
        <input type="submit" value="Register!"/>
    </form:form>
</body>
</html>