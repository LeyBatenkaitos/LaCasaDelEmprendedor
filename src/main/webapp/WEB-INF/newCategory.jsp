<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Category</title>
</head>
<body>
	<form:form action="/newcategory" method="post" modelAttribute="category">
		<form:label path="name"> Name :</form:label>
		<form:input path="name"/>
		<form:errors path="name"></form:errors>	
		<form:button type="submit">Create</form:button>
	</form:form>
</body>
</html>