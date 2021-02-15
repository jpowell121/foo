<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Flowers</title>
</head>
<body>

	<h1>Flowers</h1>
	<ol>
		<c:forEach var="flower" items="${flowers}">
			<li style="color: ${flower.color}">${flower.name}</li>
		</c:forEach>
	</ol>

	<a href="/add-flower">Add</a>


</body>
</html>