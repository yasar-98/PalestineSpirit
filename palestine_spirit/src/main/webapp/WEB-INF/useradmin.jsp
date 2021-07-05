<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body>
	<h1>list of users</h1>
		<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">username</th>
      <th scope="col">email</th>
      <th scope="col">phone</th>
      <th scope="col">user role</th>
    </tr>
  </thead>
  <tbody>
    <tr>
    <c:forEach items="${users }" var="user">
      <th><c:out value="${user.username}"></c:out> </th>
      <td><c:out value="${user.email}"></c:out> </td>
      <td><c:out value="${user.phoneNumber}"></c:out> </td>
      <td><c:out value="${user.role.name}"></c:out> </td>
    </tr>
    </c:forEach>
  </tbody>
  
</table>
</body>
</html>