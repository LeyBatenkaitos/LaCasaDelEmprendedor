<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>HOLA ADMIN <c:out value="${currentUser.firstName}"></c:out></h1>
	<span>
		<form id="logoutForm" method="POST" action="/logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="Cerrar sesión" />
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
					<form:label path="linkwebpage"> Link a la página web / red social :</form:label>
					<form:input path="linkwebpage"/>
					<form:errors path="linkwebpage"></form:errors>
				</p>
			
					<form:button type="submit">Enviar</form:button>
			</form:form>
			<h1>Añade una nueva categoría</h1>
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
    	        <form:label path="password">Contraseña:</form:label>
   	            <form:password path="password"/>
      		</p>
        	<p>
            	<form:label path="passwordConfirmation">Confirme contraseña:</form:label>
            	<form:password path="passwordConfirmation"/>
        	</p>
        	<input type="submit" value="Registrar"/>
       	</form:form>
</body>
</html>