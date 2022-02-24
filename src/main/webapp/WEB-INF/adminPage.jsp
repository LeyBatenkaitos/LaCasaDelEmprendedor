<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/diseñoAp.css">
</head>
<body>

	<div class="header">
		<h1>La Casa Del Emprendedor</h1>
		<img id="logo" src="logoCasaDelEmprendedor.png" height="65px" width="70px">
	</div>
	<h2>HOLA ADMIN <c:out value="${currentUser.firstName}"></c:out></h2>
	<span>
	    	    <form id="logoutForm" method="POST" action="/logout">
		    <a href="/dashboard">Pagina Principal</a>
		    <a href="/bussines">Crear Negocio</a>
		    <a href="/category">Crear Categoria</a>
		    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		    <input type="submit" value="Cerrar sesion" />
       </form>
    </span>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="well well-sm">
						<form:form action="/newbussines" method="post" modelAttribute="bussines" class="form-horizontal">
						<fieldset>
							<legend class="text-center header-regis">Registra un emprendimiento</legend>
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
								<div class="col-md-8">
									<form:input path="name" id="fname" name="name" type="text" placeholder="Nombre" class="form-control"/>
								</div>
							</div>
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
								<div class="col-md-8">
									<form:input path="description" class="form-control" id="message" name="message" placeholder="Descripción" rows="7"/>
								</div>
							</div>
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
								<div class="col-md-8">
									<form:input path="linkwebpage" id="email" name="email" type="text" placeholder="Link a la página web / red social" class="form-control"/>
								</div>
							</div>
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
								<div class="col-md-8">
									<form:input path="image" id="image" name="image" type="file" placeholder="image" class="form-control"/>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-12 text-center">
									<button type="submit" class="btn btn-primary btn-lg">Enviar</button>
								</div>
							</div>
						</fieldset>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="well well-sm">
					<form:form class="form-horizontal" action="/newcategory" method="post" modelAttribute="category">
						<fieldset>
							<legend class="text-center header-regis">Añade una nueva categoría</legend>
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
								<div class="col-md-8">
									<form:input path="name" id="fname" name="name" type="text" placeholder="Nombre" class="form-control"/>
								</div>
							</div>	
							<div class="form-group">
								<div class="col-md-12 text-center">
									<button type="submit" class="btn btn-primary btn-lg">Enviar</button>
								</div>
							</div>
						</fieldset>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="well well-sm">
					<form:form class="form-horizontal" method="post" action="/registration" modelAttribute="user">
						<fieldset>
							<legend class="text-center header-register">Registra un usuario</legend>
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
								<div class="col-md-8">
									<form:input path="firstName" id="fname" name="name" type="text" placeholder="Nombre" class="form-control"/>
								</div>
							</div>
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
								<div class="col-md-8">
									<form:input path="lastName" id="lname" name="name" type="text" placeholder="Apellido" class="form-control"/>
								</div>
							</div>
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
								<div class="col-md-8">
									<<form:input path="username" id="email" name="email" type="text" placeholder="Email Address" class="form-control"/>
								</div>
							</div>
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
								<div class="col-md-8">
									<form:input path="password" id="password" name="password" type="password" placeholder="Contraseña" class="form-control"/>
								</div>
							</div>
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
								<div class="col-md-8">
									<form:input path="passwordConfirmation" id="password" name="password" type="password" placeholder="Confirme contraseña" class="form-control"/>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-12 text-center">
									<button type="submit" class="btn btn-primary btn-lg">Registrar</button>
								</div>
							</div>
						</fieldset>
					</form:form>
				</div>
			</div>
		</div>
	</div>
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