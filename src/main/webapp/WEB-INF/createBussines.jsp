<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/createBussines.css">
<title>Bussines</title>
</head>
<body>
	<div class="header">
		<h1>La Casa Del Emprendedor</h1>
		<img id="logo" src="logoCasaDelEmprendedor.png" height="65px" width="70px">
	</div>
	<h2>New Bussines</h2>		
		<form:form action="/newbussines" method="post" modelAttribute="bussines">
			<p>
				<form:label path="name" class="nombre"> Name :</form:label>
				<form:input path="name"/>
				<form:errors path="name"></form:errors>
			</p>
			<img id="name" src="name.png" height="50px" width="50px">
			<p>
				<form:label path="description" class="descripcion"> Description :</form:label>
				<form:input path="description"/>
				<form:errors path="description"></form:errors>
			</p>
			<img id="description" src="description.png" height="50px" width="50px">
			<img id="web" src="web.png" height="50px" width="50px">
			<p>
				<form:label path="linkwebpage" class="pagina"> Link Web Page :</form:label>
				<form:input path="linkwebpage"/>
				<form:errors path="linkwebpage"></form:errors>
			</p>
			<p>
				<form:button type="submit" class="btn">Create</form:button>
			</p>
		</form:form>
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