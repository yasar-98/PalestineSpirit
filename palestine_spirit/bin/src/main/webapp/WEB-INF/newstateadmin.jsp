<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
            <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<H1>LIST OF CITIES</H1>
	<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">CITY NAME</th>
      <th scope="col">DESCRIBE</th>
            <th scope="col">number of sites</th>
      
    </tr>
  </thead>
  <tbody>
      <c:forEach items="${cities }" var="city">
  
    <tr>
    <td><c:out value="${city.name }"></c:out> </td>
        <td><c:out value="${city.desc }"></c:out> </td>
                <td><c:out value="${city.sites.size() }"></c:out> </td>
        
    
    </tr>
        </c:forEach>
    
	</tbody></table>
	    <form:form method="POST" action="/createcity" modelAttribute="city">
        <p>
            <form:label path="name">city name:</form:label>
            <form:input path="name"/>
        </p>
        <p>
            <form:label path="desc">description:</form:label>
            <form:textarea path="desc"/>
        </p>
                <input type="submit" value="create city"/>
    </form:form>
    	    <form:form method="POST" action="/createsite" modelAttribute="site">
        <p>
            <form:label path="name">site name:</form:label>
            <form:input path="name"/>
        </p>
                <p>
            <form:label path="location">site location:</form:label>
            <form:input path="location"/>
        </p>
                <p>
            <form:label path="desc">description:</form:label>
            <form:input path="desc"/>
        </p>
        
        <p>
                    <form:label path="cit">description:</form:label>
        </p>
        <p>
			<form:select path="cit">
				<c:forEach items="${cities}" var="list" >
					<form:option value="${list.id}"> ${list.name} </form:option>
				</c:forEach>
				</form:select>
				</p>
        
        
                <input type="submit" value="create site"/>
    </form:form>
    	<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">CITY NAME</th>
      <th scope="col">DESCRIBE</th>
      <th scope="col">city owner</th>
      
    </tr>
  </thead>
  <tbody>
      <c:forEach items="${sites }" var="city">
  
    <tr>
    <td><c:out value="${city.name }"></c:out> </td>
        <td><c:out value="${city.desc }"></c:out> </td>
            <td><c:out value="${city.cit.name }"></c:out> </td>
    
    </tr>
        </c:forEach>
    
	</tbody></table>
</body>
</html>