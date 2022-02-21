<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bussines</title>
</head>
<body>
	<h2>New Bussines</h2>
		
		<form:form action="/newbussines" method="post" modelAttribute="bussines">
			<p>
				<form:label path="name"> Name :</form:label>
				<form:input path="name"/>
				<form:errors path="name"></form:errors>
			</p>
			<p>
				<form:label path="description"> Description :</form:label>
				<form:input path="description"/>
				<form:errors path="description"></form:errors>
			</p>
			<p>
				<form:label path="linkwebpage"> Link Web Page :</form:label>
				<form:input path="linkwebpage"/>
				<form:errors path="linkwebpage"></form:errors>
			</p>
			
				<form:button type="submit">Create</form:button>
		</form:form>

</body>
</html>