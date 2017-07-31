<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="utf-8">
<title>MyBatisINSERTの練習</title>
</head>
<body>
	<h1>${message}</h1>

	<form:form modelAttribute="testForm">
		名前：<form:input path="name" />
		年齢：<form:input path="age" />
		支店：<form:input path="branch" />
		<input type="submit">
	</form:form>
</body>
</html>

