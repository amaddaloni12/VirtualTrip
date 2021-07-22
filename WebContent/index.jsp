<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	Collection<?> products = (Collection<?>) request.getAttribute("products");
	if(products == null) {
		response.sendRedirect("./index");	
		return;
	}
	
	ProductBean product = (ProductBean) request.getAttribute("product");
	
	Cart cart = (Cart) request.getAttribute("cart");
%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,it.unisa.model.ProductBean,it.unisa.model.Cart"%>
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
	<title>VirtualTrip</title>
	<!--
		CSS
		============================================= -->
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/nouislider.min.css">
	<link rel="stylesheet" href="css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/main.css">
</head>

<body>

	<%@ include file="parts/header.jsp" %>

	<!-- start banner Area -->
	<section class="banner-area">
		<div class="container">
			<div class="row fullscreen align-items-center justify-content-start">
				<div class="col-lg-12">
				
					<div class="active-banner-slider owl-carousel">
				
						<%
							if (products != null && products.size() != 0) {
								Iterator<?> it = products.iterator();
								while (it.hasNext()) {
									ProductBean bean = (ProductBean) it.next();	
									int code = bean.getCode(); 
						%>
					
						<!-- single-slide -->
						<div class="row single-slide align-items-center d-flex">
							<div class="col-lg-5 col-md-6">
								<div class="banner-content">
									<a href="productpage.jsp?idProduct=<%=code%>" class="social-info"><h1><%=bean.getName()%></h1></a>
									<p><%=bean.getDescription()%></p>
									<div class="add-bag d-flex align-items-center">
										<a class="add-btn" href="index?action=addC&id=<%=bean.getCode()%>"><span class="lnr lnr-cross"></span></a>
										<span class="add-text text-uppercase">Aggiungi al carrello</span>
									</div>
								</div>
							</div>
							<div class="col-lg-7">
								<div class="banner-img">
									<a href="productpage.jsp?idProduct=<%=code%>"><img class="img-fluid" src="img/games/<%=bean.getCode()%>/small.png" alt=""></a>
								</div>
							</div>
						</div>
						<%
													}
							} else {
						%>
						<h1>Nessun prodotto disponibile</h1>
						<%
						}%>
					</div>
	
				</div>
			</div>
		</div>
	</section>
	<!-- End banner Area -->

	<!-- start features Area -->
	<section class="features-area section_gap">
		<div class="container">
			<div class="row features-inner">
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon1.png" alt="">
						</div>
						<h6>Consegna Gratuita</h6>
						<p>Su ogni ordine</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon2.png" alt="">
						</div>
						<h6>Reso gratuito</h6>
						<p>Entro 24 ore</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon3.png" alt="">
						</div>
						<h6>Supporto 24/7</h6>
						<p>Per tutti i nostri clienti</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon4.png" alt="">
						</div>
						<h6>Pagamenti sicuri</h6>
						<p>Accettiamo Paypal</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end features Area -->

	<!-- start product Area -->
	<section class="owl-carousel active-product-area section_gap">
		<!-- single product slide -->
		<div class="single-product-slider">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 text-center">
						<div class="section-title">
							<h1>Ultime uscite</h1>
							<p>Le nostre ultime novita'</p>
						</div>
					</div>
				</div>
				<div class="row">
							<%
							int j = 0;
							if (products != null && products.size() != 0) {
								Iterator<?> it = products.iterator();
								while (j<8) {
									ProductBean bean = (ProductBean) it.next();
									j++;
									int code = bean.getCode(); 
							%>
	                <!-- single product -->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/games/<%=bean.getCode()%>/big.png" alt="">
							<div class="product-details">
								<h6><%=bean.getName()%></h6>
								<div class="price">
									<h6>€<%=bean.getPrice()%>,00</h6>
								</div>
								<div class="prd-bottom">

										<a href="index?action=addC&id=<%=bean.getCode()%>" class="social-info">
											<span class="ti-bag"></span>
											<p class="hover-text">+ carrello</p>
										</a>

										<a href="productpage.jsp?idProduct=<%=code%>" class="social-info">
											<span class="lnr lnr-move"></span>
											<p class="hover-text">dettagli</p>
										</a>
								</div>
							</div>
						</div>
					</div>
						<%}} else {%>
						<h1>Nessun prodotto disponibile</h1>
						<%}%>
				</div>
			</div>
		</div>
		<!-- single product slide -->
		<div class="single-product-slider">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 text-center">
						<div class="section-title">
							<h1>Spendi poco</h1>
							<p>Divertiti con 20&euro;</p>
						</div>
					</div>
				</div>
				<div class="row">
							<%
							int i = 0;
							if (products != null && products.size() != 0) {
								Iterator<?> it = products.iterator();
								while (i<8) {
									ProductBean bean = (ProductBean) it.next();
	
									int code = bean.getCode(); 

									if(bean.getPrice() <= 20){
									i++;
							%>
							
							
	
	                <!-- single product -->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/games/<%=bean.getCode()%>/big.png" alt="">
							<div class="product-details">
								<h6><%=bean.getName()%></h6>
								<div class="price">
									<h6>€<%=bean.getPrice()%>,00</h6>
								</div>
								<div class="prd-bottom">

										<a href="catalog?action=addC&id=<%=bean.getCode()%>" class="social-info">
											<span class="ti-bag"></span>
											<p class="hover-text">+ carrello</p>
										</a>

										<a href="productpage.jsp?idProduct=<%=code%>" class="social-info">
											<span class="lnr lnr-move"></span>
											<p class="hover-text">dettagli</p>
										</a>
								</div>
							</div>
						</div>
					</div>
						<%
									}}
							} else {
						%>
						<h1>Nessun prodotto disponibile</h1>
						<%
						}%>
				</div>
			</div>
		</div>
	</section>
	<!-- end product Area -->

	<!-- Start brand Area -->
	<section class="brand-area section_gap">
		<div class="container">
			<div class="row">
				<a class="col single-img" href="https://en.cdprojektred.com/">
					<img class="img-fluid d-block mx-auto" src="img/brand/1.png" alt="">
				</a>
				<a class="col single-img" href="https://www.fromsoftware.jp/ww/">
					<img class="img-fluid d-block mx-auto" src="img/brand/2.png" alt="">
				</a>
				<a class="col single-img" href="https://www.ubisoft.com/it-it/">
					<img class="img-fluid d-block mx-auto" src="img/brand/3.png" alt="">
				</a>
				<a class="col single-img" href="https://www.orithegame.com/moon-studios/">
					<img class="img-fluid d-block mx-auto" src="img/brand/4.png" alt="">
				</a>
				<a class="col single-img" href="https://www.playground-games.com/">
					<img class="img-fluid d-block mx-auto" src="img/brand/5.png" alt="">
				</a>
			</div>
		</div>
	</section>
	<!-- End brand Area -->

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/countdown.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/main.js"></script>
	
	<%@ include file="parts/footer.jsp" %>
</body>

</html>