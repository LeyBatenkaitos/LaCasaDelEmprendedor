<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><c:out value="${businesses.name}"/></h1>
	<div class="left_container">
		<form action=""  method="POST">
	       <label for="categories">Add Category:</label>
		       <select name="categories" id="categories">
		             <c:forEach items="${categories}" var="category" >
		                     <option  value="${category.id}"><c:out value="${category.name}"> </c:out></option>
		             </c:forEach>   
		       </select>
		       	<input class=" d-inline shadow bg-white rounded" type="submit" id="submit" value="Add"/>
		</form>
	</div>

</body>
</html>