<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>${message}</p>

<form:form modelAttribute = "checkFrom" action = "${pageContext.request.contextPath}/sample/check/info }">
	<form:checkboxes path = "employees" items = "${checkEmployees}" delimiter = "/" />
	<input type = "submit" />
</form:form>

</body>
</html>