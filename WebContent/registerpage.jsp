<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Registrati</title>

	<!--CSS============================================= -->
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/nouislider.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/main.css">
</head>

<body>

	<%@ include file="parts/header.jsp" %>

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>Registrati al nostro sito</h1>
					<nav class="d-flex align-items-center">
						<a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="category.html">Registrati</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Login Box Area =================-->
	<section class="login_box_area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<img class="img-fluid" src="img/login.jpg" alt="">
						<div class="hover">
							<h4>Inserisci i tuoi dati</h4>
							<p>Compila il form con i tuoi dati personali e crea il tuo account</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>Inserisci i tuoi dati</h3>
						<form class="row login_form" action="\VirtualTrip\\Register" id="formReg" method="post" onsubmit=" return validation()">
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="username" name="username" placeholder="Username" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'" required>
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="password1" name="password1" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'" required>
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="password2" name="password2" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'" required>
							</div>
								<%if(request.getSession().getAttribute("incorrectPasswords")==("true")){ %>
								<div class="col-md-12 form-group" style=Color:red>Le password inserite non combaciano</div>
								<%
								request.getSession().removeAttribute("incorrectPasswords");
								}else{ %>
								<br><br>
								<%} %>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="name" name="name" placeholder="Nome" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Nome'" required>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="surname" name="surname" placeholder="Cognome" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Cognome'" required>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="telephone" name="telephone" placeholder="Telefono" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Telefono'">
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="email" name="email" placeholder="Indirizzo email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email'" required>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="address" name="address" placeholder="Indirizzo" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Indirizzo'">
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="city" name="city" placeholder="Citt&agrave;" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Citta'">
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="cap" name="cap" placeholder="Cap" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Cap'">
							</div>
							<div class="col-md-12 form-group">
							</div>
							<div class="col-md-12 form-group">
							<button type="submit" value="Register" class="primary-btn">Registrati</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->

	<%@ include file="parts/footer.jsp" %>

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/main.js"></script>
</body>

</html>