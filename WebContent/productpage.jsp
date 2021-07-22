<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="windows-1256"
         import="it.unisa.model.ProductBean"
         import="it.unisa.model.ProductModel"
         import="it.unisa.model.*"
%>
<% 
 	int code =  Integer.parseInt(request.getParameter("idProduct"));
   ProductModelDS product = new ProductModelDS();
   ProductBean bean = product.doRetrieveByKey(code);
%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">
	<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,it.unisa.model.ProductBean,it.unisa.model.*"%>
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
	<title><%=bean.getName()%></title>
	
	<!--CSS============================================= -->
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/nouislider.min.css">
	<link rel="stylesheet" href="css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="css/main.css">
</head>

<body>

	<%@ include file="parts/header.jsp" %>

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>I nostri giochi in dettaglio</h1>
					<nav class="d-flex align-items-center">
						<a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">Catalogo<span class="lnr lnr-arrow-right"></span></a>
						<a href="#"><%=bean.getName()%></a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Single Product Area =================-->

	<div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">
				<div class="col-lg-6">
					<div class="s_Product_carousel">
						<div class="single-prd-item">
							<img class="img-fluid" src="img/games/<%=bean.getCode()%>/big.png" alt="">
						</div>
						<div class="single-prd-item">
							<img class="img-fluid" src="img/games/<%=bean.getCode()%>/big.png" alt="">
						</div>
						<div class="single-prd-item">
							<img class="img-fluid" src="img/games/<%=bean.getCode()%>/big.png" alt="">
						</div>
					</div>
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="s_product_text">
						<h3><%=bean.getName()%></h3>
						<h2>&euro;<%=bean.getPrice()%>,00</h2>
						<ul class="list">
							<li><a href="#"><span>Disponibilit&agrave;</span>: In Stock, <%=bean.getQuantity()%> copie rimaste</a></li>
						</ul>
						<p><%=bean.getDescription()%></p>

						<div class="card_area d-flex align-items-center">
							<a class="primary-btn" href="catalog?action=addC&id=<%=bean.getCode()%>">Aggiungi al carrello</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->
	<br>	<br>	<br>

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