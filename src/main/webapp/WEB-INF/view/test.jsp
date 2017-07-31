<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head>
	<body>
		<h1>${message}</h1>
		<c:forEach items = "${tests}" var = "test">
			<p><c:out value = "${test.name}" /></p>
		</c:forEach>
</body>
</html>