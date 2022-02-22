<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>HOLA ADMIN <c:out value="${currentUser.username}"></c:out></h1>
    <form id="logoutForm" method="POST" action="/logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="Logout!" />
    </form>
    <a href="http://localhost:8080/dashboard">Pagina Principal</a>
    <a href="http://localhost:8080/bussines">Crear Negocio</a>
    <a href="http://localhost:8080/category">Crear Categoria</a>
</body>
</html>