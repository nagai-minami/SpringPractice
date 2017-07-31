<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Updateの練習</title>
</head>
<body>

	<h1>${message}</h1>

	<form:form modelAttribute="testForm">
		<p>ID: ${test.id}</p>
		<p>
		名前:<form:input path="name" />
		年齢:<form:input path="age" />
		支店:<form:input path="branch" />
		</p>
		<input type="submit">
	</form:form>

</body>
</html>