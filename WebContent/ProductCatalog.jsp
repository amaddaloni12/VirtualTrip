<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Collection<?> products = (Collection<?>) request.getAttribute("products");
	if(products == null) {
		response.sendRedirect("./catalog");	
		return;
	}
	ProductBean product = (ProductBean) request.getAttribute("product");
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
	<title>Catalogo</title>

	<!--
            CSS
            ============================================= -->
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/nouislider.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/main.css">
</head>

<body id="category">

	<%@ include file="parts/header.jsp" %>

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>Il nostri giochi</h1>
					<nav class="d-flex align-items-center">
						<a href="index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">Catalogo<span"></span></a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->
	<div class="container">
		<div class="row">
			<div class="col-xl-3 col-lg-4 col-md-5">
				<div class="sidebar-categories">
					<div class="head">Suddivisi per prezzo</div>
					<ul class="main-categories">
						<li class="main-nav-list"><a data-toggle="collapse" href="#fruitsVegetable" aria-expanded="false" aria-controls="fruitsVegetable"><span
								 class="lnr lnr-arrow-right"></span>Giochi fino a 20&euro;<span class="number"></span></a>
							<ul class="collapse" id="fruitsVegetable" data-toggle="collapse" aria-expanded="false" aria-controls="fruitsVegetable">
							
								
						<%
						if (products != null && products.size() != 0) {
						Iterator<?> it = products.iterator();
						while (it.hasNext()) {
						ProductBean bean = (ProductBean) it.next();
						int code = bean.getCode(); 
						if(bean.getPrice() <= 20){

						%>
								<li class="main-nav-list child"><a href="productpage.jsp?idProduct=<%=code%>"><%=bean.getName()%></a></li>
						<%}
						}
						} else {
						%>
								<li class="main-nav-list child"><a href="#">Nessun prodotto disponibile<span class="number">--</span></a></li>
						<%
							}
						%>
							</ul>
						</li>

						<li class="main-nav-list"><a data-toggle="collapse" href="#less40" aria-expanded="false" aria-controls="less40"><span
								 class="lnr lnr-arrow-right"></span>Giochi fino a 40&euro;<span class="number"></span></a>
							<ul class="collapse" id="less40" data-toggle="collapse" aria-expanded="false" aria-controls="fruitsVegetable">
							
								
						<%
						if (products != null && products.size() != 0) {
						Iterator<?> it = products.iterator();
						while (it.hasNext()) {
						ProductBean bean = (ProductBean) it.next();
						int code = bean.getCode(); 
						if(bean.getPrice() > 20 && bean.getPrice() <= 40){

						%>
								<li class="main-nav-list child"><a href="productpage.jsp?idProduct=<%=code%>"><%=bean.getName()%></a></li>
						<%}
						}
						} else {
						%>
								<li class="main-nav-list child"><a href="#">Nessun prodotto disponibile<span class="number">--</span></a></li>
						<%
							}
						%>
							</ul>
						</li>
						
												<li class="main-nav-list"><a data-toggle="collapse" href="#less60" aria-expanded="false" aria-controls="less60"><span
								 class="lnr lnr-arrow-right"></span>Giochi fino a 60&euro;<span class="number"></span></a>
							<ul class="collapse" id="less60" data-toggle="collapse" aria-expanded="false" aria-controls="fruitsVegetable">
							
								
						<%
						if (products != null && products.size() != 0) {
						Iterator<?> it = products.iterator();
						while (it.hasNext()) {
						ProductBean bean = (ProductBean) it.next();
						int code = bean.getCode(); 
						if(bean.getPrice() > 40 && bean.getPrice() <= 60){

						%>
								<li class="main-nav-list child"><a href="productpage.jsp?idProduct=<%=code%>"><%=bean.getName()%></a></li>
						<%}
						}
						} else {
						%>
								<li class="main-nav-list child"><a href="#">Nessun prodotto disponibile<span class="number">--</span></a></li>
						<%
							}
						%>
							</ul>
						</li>
						
												<li class="main-nav-list"><a data-toggle="collapse" href="#more60" aria-expanded="false" aria-controls="more60"><span
								 class="lnr lnr-arrow-right"></span>Giochi oltre 60&euro;<span class="number"></span></a>
							<ul class="collapse" id="more60" data-toggle="collapse" aria-expanded="false" aria-controls="fruitsVegetable">
							
								
						<%
						if (products != null && products.size() != 0) {
						Iterator<?> it = products.iterator();
						while (it.hasNext()) {
						ProductBean bean = (ProductBean) it.next();
						int code = bean.getCode(); 
						if(bean.getPrice() > 60){

						%>
								<li class="main-nav-list child"><a href="productpage.jsp?idProduct=<%=code%>"><%=bean.getName()%></a></li>
						<%}
						}
						} else {
						%>
								<li class="main-nav-list child"><a href="#">Nessun prodotto disponibile<span class="number">--</span></a></li>
						<%
							}
						%>
							</ul>
						</li>
						
					</ul>
				</div>
			</div>
			<div class="col-xl-9 col-lg-8 col-md-7">
				<!-- Start Filter Bar -->
				<div class="filter-bar d-flex flex-wrap align-items-center">
				</div>
				<!-- End Filter Bar -->
				<!-- Start Best Seller -->
				<section class="lattest-product-area pb-40 category-list">
				
					<div class="row">
					
		<%
			if (products != null && products.size() != 0) {
				Iterator<?> it = products.iterator();
				while (it.hasNext()) {
					ProductBean bean = (ProductBean) it.next();
				int code = bean.getCode(); 
		%>
						<!-- single product -->
						<div class="col-lg-4 col-md-6">
							<div class="single-product">
								<img class="img-fluid" src="img/games/<%=bean.getCode()%>/big.png" alt="Game">
								<div class="product-details">
									<h6><%=bean.getName()%></h6>
									<div class="price">
										<h6>???<%=bean.getPrice()%>,00</h6>
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
				}
			} else {
				%>

						<h1>Nessun prodotto disponibile</h1>
				<%
					}
				%>

			</div>
		</div>
	</div>

	<%@ include file="parts/footer.jsp" %>

	<!-- Modal Quick Product View -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="container relative">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="product-quick-view">
					<div class="row align-items-center">
						<div class="col-lg-6">
							<div class="quick-view-carousel">
								<div class="item" style="background: url(img/organic-food/q1.jpg);">

								</div>
								<div class="item" style="background: url(img/organic-food/q1.jpg);">

								</div>
								<div class="item" style="background: url(img/organic-food/q1.jpg);">

								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="quick-view-content">
								<div class="top">
									<h3 class="head">Mill Oil 1000W Heater, White</h3>
									<div class="price d-flex align-items-center"><span class="lnr lnr-tag"></span> <span class="ml-10">$149.99</span></div>
									<div class="category">Category: <span>Household</span></div>
									<div class="available">Availibility: <span>In Stock</span></div>
								</div>
								<div class="middle">
									<p class="content">Mill Oil is an innovative oil filled radiator with the most modern technology. If you are
										looking for something that can make your interior look awesome, and at the same time give you the pleasant
										warm feeling during the winter.</p>
									<a href="#" class="view-full">View full Details <span class="lnr lnr-arrow-right"></span></a>
								</div>
								<div class="bottom">
									<div class="color-picker d-flex align-items-center">Color:
										<span class="single-pick"></span>
										<span class="single-pick"></span>
										<span class="single-pick"></span>
										<span class="single-pick"></span>
										<span class="single-pick"></span>
									</div>
									<div class="quantity-container d-flex align-items-center mt-15">
										Quantity:
										<input type="text" class="quantity-amount ml-15" value="1" />
										<div class="arrow-btn d-inline-flex flex-column">
											<button class="increase arrow" type="button" title="Increase Quantity"><span class="lnr lnr-chevron-up"></span></button>
											<button class="decrease arrow" type="button" title="Decrease Quantity"><span class="lnr lnr-chevron-down"></span></button>
										</div>

									</div>
									<div class="d-flex mt-20">
										<a href="#" class="view-btn color-2"><span>Add to Cart</span></a>
										<a href="#" class="like-btn"><span class="lnr lnr-layers"></span></a>
										<a href="#" class="like-btn"><span class="lnr lnr-heart"></span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



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