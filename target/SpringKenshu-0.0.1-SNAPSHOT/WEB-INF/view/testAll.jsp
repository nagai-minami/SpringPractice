<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head>
	<body>

		<h1>${message}</h1>

		<c:forEach items = "${tests}" var = "test">
			<p>【名前】<c:out value = "${test.name}"></c:out>
				【年齢】<c:out value = "${test.age}"></c:out>
			</p>
		</c:forEach>
</body>
</html>