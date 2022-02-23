<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/loginPage.css">
<title>Login Page</title>
</head>
<body>
    <div class="header">
		<h1 class="nombre">La Casa Del Emprendedor</h1>
		<img id="logo" src="logoCasaDelEmprendedor.png" height="65px" width="70px">
	</div>
    <c:if test="${logoutMessage != null}">
        <c:out value="${logoutMessage}"></c:out>
    </c:if>
    <h1>Login</h1>
    <c:if test="${errorMessage != null}">
        <c:out value="${errorMessage}"></c:out>
    </c:if>
    <form method="POST" action="/login">
        <p>
            <label for="username" class="username">Correo electronico</label>
            <input type="text" id="username" name="username"/>
        </p>
        <p>
            <label for="password" class="password">Contraseña</label>
            <input type="password" id="password" name="password"/>
        </p>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" class="btn" value="Login!"/>
    </form>
    <div class="footer">
		<div class="Contac">
			<h2 style="margin: 10px; color: #102938;">Contactanos</h2>
			<img class="contacto" src="letra.png" alt="correo">
			<a style="text-decoration: none; color: #102938; font-size: 13px;" href="lacasadelemprendedorcl@gmail.com">lacasadelemprendedorcl@gmail.com</a>
			<br>
			<img class="contacto" src="llamada.png" alt="llamada">
			<p class="fono"style="display: inline-block; color: #102938;"> +569 12345678</p>
		</div>
		<div class="Rsocial">
			<a style="text-decoration: none;" target="_blank" href="https://www.facebook.com/profile.php?id=100077688296226" > 
				<img class="logo-redsocial" src="facebook.png"  alt="facebook">
				<p class="text-social">La Casa <br>del Emprendedor</p>
			</a>
			<a style="text-decoration: none;" target="_blank" href="https://www.instagram.com/lacasadelemprendedorcl/">
				<img class="logo-redsocial" src="instagram.png" alt="instagram">
				<p class="text-social">La Casa <br>del Emprendedor</p>
			</a>
			<h6>
				<img class="copyright" src="pngwing.com.png" alt="copyright">
				2022 La Casa del Emprendedor
			</h6>

		</div>
		<div class="Pago" style="width: 256px;">
			<h3>Método de Pago</h3>
		</div>
    </div>
</body>
</html>