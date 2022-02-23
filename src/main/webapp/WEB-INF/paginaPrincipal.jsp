<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
	integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/pruebasproyectovscode-1.css">
<title>La Casa Del Emprendedor</title>
</head>
<body background="casa.jpg">
	<div class="publicidad"></div>
	<header>
		<h1>La Casa Del Emprendedor</h1>
	</header>

	<div class="main">
		<nav class="navbar navbar-light" style="background-color: #b8e5fc;">
			<div id="BarNav">
				<div id="Categorias">
					<ul>
						<li class="nav-item dropdown" style="list-style-type: none;">
							<a class="nav-link dropdown-toggle" href="#"
							id="navbarDropdownMenuLink" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Categorias </a>
							<ul class="dropdown-menu"
								aria-labelledby="navbarDropdownMenuLink">
								<c:forEach items="${categories}" var="category">
									<li><a class="dropdown-item"
										href="/dashboard/${category.id}"> <c:out
												value="${category.name}" />
									</a></li>
								</c:forEach>
							</ul>
						</li>
						<li>
							<a href="/informacion">Seccion Informativa</a>
						</li>
					</ul>
				</div>
				<div id="Search">
					<form class="d-flex" method="GET" action="/business/">
						<input class="form-control me-2" type="text"
							placeholder="Buscar" aria-label="Buscar">
						<button class="btn btn-outline-success" type="submit">Buscar</button>
					</form>
				</div>
			</div>
		</nav>
		<c:forEach items="${businesses}" var="business">
			<div id="subcontents">
				<h2>
					<c:out value="${business.name}" />
				</h2>
			</div>
		</c:forEach>


		<div class="Comments">
			<div id="Text">
				<h4>Nos interesa tu opinion :</h4>
				<textarea name="comments" id="comments" cols="25" rows="5">
                       	</textarea>
				<input type="submit" formmethod="post" value="/sendcomment">
			</div>
		</div>


		<div class="footer">
			<div id="FooterIzquierda">
				<h3>Contactanos</h3>
				<img id="logocorreo" src="letra.png" height="30px" width="30px" />
				<h6>lacasadelemprendedor@gmail.com</h6>
				<img id="logowsp" src="llamada.png" height="30px" width="30px" />
				<h6>+569 12345678</h6>

			</div>
			<div id="FooterCentro">
				<div id="Instagram">
					<img src="instagram.png" height="30px" width="30px" />
					<h5>La Casa Del Emprendedor</h5>
				</div>
				<div id="Facebook">
					<img src="facebook.png" height="30px" width="30px" />
					<h5>La Casa Del Emprendedor</h5>
				</div>
				<div id="Copyright">
					<img src="pngwing.com.png" height="30px" width="30px" />
					<h5>2020 La Casa Del Emprendedor</h5>
				</div>
			</div>
			<div id="FooterDerecha">
				<h5>Metodos de pago</h5>
				<img src="logowebpay.png" height="150px" width="200px" />

			</div>
		</div>
	</div>
	<div class="publicidad"></div>
</body>
</html>