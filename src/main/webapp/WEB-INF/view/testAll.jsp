<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

<link href="<c:url value="/resources/css/test.css" />" rel="stylesheet">
<meta charset="utf-8">
<title>Welcome</title>
</head>
<body>

	<h1>${message}</h1>

	<table>
			<tr>
				<th>ID</th>
				<th>名前</th>
				<th>年齢</th>
				<th>支店</th>
				<th>編集</th>
				<th>削除</th>
			</tr>

			<c:forEach items="${tests}" var="test">

				<tr>
					<td><c:out value="${test.id}" /></td>
					<td><c:out value="${test.name}" /></td>
					<td><c:out value="${test.age}" /></td>
					<td><c:out value="${test.branch}" /></td>
					<td><a
						href="${pageContext.request.contextPath}/test/update/input/${test.id}/">編集</a></td>
					<td><a href="${pageContext.request.contextPath}/test/delete/input/">削除</a></td>
				</tr>
			</c:forEach>
	</table>


</body>
</html>