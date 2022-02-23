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

	<h1>HOLA ADMIN <c:out value="${currentUser.firstName}"></c:out></h1>
	<span>
		<form id="logoutForm" method="POST" action="/logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="Logout!" />
    </form>
    <a href="http://localhost:8080/dashboard">Pagina Principal</a>
    <a href="http://localhost:8080/bussines">Crear Negocio</a>
    <a href="http://localhost:8080/category">Crear Categoria</a>
        <input type="submit" value="Cerrar sesiï¿½n" />
    	</form>
	</span>
	<h2>Registra un emprendimiento</h2>
		
			<form:form action="/newbussines" method="post" modelAttribute="bussines">
				<p>
					<form:label path="name"> Nombre:</form:label>
					<form:input path="name"/>
					<form:errors path="name"></form:errors>
				</p>
				<p>
					<form:label path="description"> Descripcion :</form:label>
					<form:input path="description"/>
					<form:errors path="description"></form:errors>
				</p>
				<p>
					<form:label path="linkwebpage"> Link a la pï¿½gina web / red social :</form:label>
					<form:input path="linkwebpage"/>
					<form:errors path="linkwebpage"></form:errors>
				</p>
			
					<form:button type="submit">Enviar</form:button>
			</form:form>
			<h1>Aï¿½ade una nueva categorï¿½a</h1>
			<form:form action="/newcategory" method="post" modelAttribute="category">
			<form:label path="name"> Nombre:</form:label>
			<form:input path="name"/>
			<form:errors path="name"></form:errors>	
			<form:button type="submit">Enviar</form:button>
			</form:form>    
    	
    	<h1>Registra un usuario</h1>
    	    <p><form:errors path="user.*"/></p>
    	
    	<form:form method="POST" action="/registration" modelAttribute="user">
    	    <p>
    	        <form:label path="firstName">Nombre:</form:label>
    	        <form:input path="firstName"/>
    	    </p> 
    	    <p>
    	        <form:label path="lastName">Apellido:</form:label>
    	        <form:input path="lastName"/>
    	    </p>           
    	    <p>
    	        <form:label path="username">Correo electronico:</form:label>
    	        <form:input path="username"/>
    	    </p>
    	    <p>
    	        <form:label path="password">Contraseï¿½a:</form:label>
   	            <form:password path="password"/>
      		</p>
        	<p>
            	<form:label path="passwordConfirmation">Confirme contraseï¿½a:</form:label>
            	<form:password path="passwordConfirmation"/>
        	</p>
        	<input type="submit" value="Registrar"/>
       	</form:form>
</body>
</html>