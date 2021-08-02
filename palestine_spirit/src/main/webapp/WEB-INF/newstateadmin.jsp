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
	<link rel="stylesheet" href="css/nicepage.css" media="screen">
	<link rel="stylesheet" href="css/Home.css" media="screen">
		<script class="u-script" type="text/javascript" src="js/jquery.js" defer=""></script>
		<script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script>
		<meta name="generator" content="Nicepage 3.19.1, nicepage.com">
		<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
		<link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lily+Script+One:400">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<header class="u-align-center-xs u-clearfix u-header u-header" id="sec-4f75" style="background-color:rgb(52, 58, 62)"><div class="u-clearfix u-sheet u-sheet-1">
        <form action="#" method="get" class="u-border-0 u-border-white u-radius-24 u-search u-search-right u-search-1">
        </form>
        <nav class="u-align-left u-menu u-menu-dropdown u-nav-spacing-25 u-offcanvas u-menu-1">
          <div class="menu-collapse">
            <a class="u-button-style u-nav-link" href="#" style="padding: 4px 0px; font-size: calc(1em + 8px);">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 302 302" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-7b92"></use></svg>
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-7b92" x="0px" y="0px" viewBox="0 0 302 302" style="enable-background:new 0 0 302 302;" xml:space="preserve" class="u-svg-content"><g><rect y="36" width="302" height="30"></rect><rect y="236" width="302" height="30"></rect><rect y="136" width="302" height="30"></rect>
</g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg>
            </a>
          </div>
				<c:choose>
					<c:when test="${ role == 1 }">
						<div class="u-custom-menu u-nav-container">
							<ul class="u-nav u-spacing-2 u-unstyled u-nav-1">
								<li class="u-nav-item"><a
									class="u-border-2 u-border-active-white u-border-hover-white u-button-style u-nav-link u-text-active-white u-text-hover-white u-text-white"
									href="/" style="padding: 10px 20px;">Home</a></li>
								<li class="u-nav-item"><a
									class="u-border-2 u-border-active-white u-border-hover-white u-button-style u-nav-link u-text-active-white u-text-hover-white u-text-white"
									href="/userlist" style="padding: 10px 20px;">user list</a></li>
								<li class="u-nav-item"><a
									class="u-border-2 u-border-active-white u-border-hover-white u-button-style u-nav-link u-text-active-white u-text-hover-white u-text-white"
									href="/createsite" style="padding: 10px 20px;">Sites</a></li>
							</ul></div>
					</c:when>
					<c:when test="${ role == 2 }">
						<div class="u-custom-menu u-nav-container">
							<ul class="u-nav u-spacing-2 u-unstyled u-nav-1">
								<li class="u-nav-item"><a
									class="u-border-2 u-border-active-white u-border-hover-white u-button-style u-nav-link u-text-active-white u-text-hover-white u-text-white"
									href="/" style="padding: 10px 20px;">Home</a></li>
								<li class="u-nav-item"><a
									class="u-border-2 u-border-active-white u-border-hover-white u-button-style u-nav-link u-text-active-white u-text-hover-white u-text-white"
									href="/trips" style="padding: 10px 20px;">TIRPS</a></li>
							</ul></div>
					</c:when>
					<c:when test="${ role == 3 }">
						<div class="u-custom-menu u-nav-container">
							<ul class="u-nav u-spacing-2 u-unstyled u-nav-1">
								<li class="u-nav-item"><a
									class="u-border-2 u-border-active-white u-border-hover-white u-button-style u-nav-link u-text-active-white u-text-hover-white u-text-white"
									href="/" style="padding: 10px 20px;">Home</a></li>
								<li class="u-nav-item"><a
									class="u-border-2 u-border-active-white u-border-hover-white u-button-style u-nav-link u-text-active-white u-text-hover-white u-text-white"
									href="/tours" style="padding: 10px 20px;">Tours</a></li>
							</ul></div>
					</c:when>

				</c:choose>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-align-center u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Tours.html" style="padding: 10px 20px;">Tours</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Contact.html" style="padding: 10px 20px;">Contact</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
        <a href="/"><h6 class="u-custom-font u-text u-text-white u-text-1">Palestine Spirit</h6></a>
      </div></header>
<div style="margin-left: 80px;">
	<H1>List of Sites</H1>
	<table class="table" style="width: 600px; text-align: center;">
		<thead style="background-color:rgb(52, 58, 62); color: white;">
			<tr>
				<th scope="col">Site name</th>
				<th scope="col">Description</th>
				<th scope="col">Location</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${sites }" var="city">

				<tr>
					<td><c:out value="${city.name }"></c:out></td>
					<td><c:out value="${city.desc }"></c:out></td>
					<td><c:out value="${city.cit.name }"></c:out></td>

				</tr>
			</c:forEach>

		</tbody>
	</table>
	<form:form method="POST" action="/createsite" modelAttribute="site" enctype="multipart/form-data" >
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
		<form:input type="file" path="extraimage1" accept= "image/png , image/jpeg" name="extraimage1"/>
		<form:input type="file" path="extraimage2" accept= "image/png , image/jpeg" name="extraimage2"/>


		<input type="submit" value="Create a new site" class="btn btn-primary"/>
	</form:form>

	<hr style="margin-left: 350px; width: 500px;">
	<br>

	<H1>List of Cities</H1>
	<table class="table" style="width: 600px; text-align: center;">
		<thead style="background-color:rgb(52, 58, 62); color: white;">
			<tr>
				<th scope="col">City name</th>
				<th scope="col">Description</th>
				<th scope="col">Number of sites</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${cities }" var="city">

				<tr>
					<td><c:out value="${city.name }"></c:out></td>
					<td><c:out value="${city.desc }"></c:out></td>
					<td><c:out value="${city.sites.size() }"></c:out></td>

				</tr>
			</c:forEach>

		</tbody>
	</table>
	<form:form method="POST" action="/createcity" modelAttribute="city">
		<p>
			<form:label path="name" style="margin-right: 21px;">City name:</form:label>
			<form:input path="name" />
			<form:errors path="name" />

		</p>
		<p>
			<form:label path="desc" style="margin-right: 10px;">Description:</form:label>
			<form:textarea path="desc" />
			<form:errors path="desc" />

		</p>
		<input type="submit" value="Create a new city" class="btn btn-primary" style="margin-top: 10px;"/>
		
	</form:form>
</div>
</body>
</html>