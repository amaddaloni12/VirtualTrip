<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Collection<?> products = (Collection<?>) request.getAttribute("products");
	if(products == null) {
		response.sendRedirect("./cart");	
		return;
	}
	ProductBean product = (ProductBean) request.getAttribute("product");
	Cart cart = (Cart) request.getSession().getAttribute("cart");
	int subtotal = 0;
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
	<title>Carrello</title>

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

<body>

    <%@ include file="parts/header.jsp" %>

    <!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>Carrello</h1>
                    <nav class="d-flex align-items-center">
                        <a href="index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="#">Carrello</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->

    <!--================Cart Area =================-->
    <section class="cart_area">
        <div class="container">
            <div class="cart_inner">
                <div class="table-responsive">
                	<% if(cart != null) { %>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Gioco</th>
                                <th scope="col">Prezzo</th>
                                <th scope="col">Quantit&agrave;</th>
                                <th scope="col">Totale</th>
                            </tr>
                        </thead>
                     <% List<ProductBean> prodcart = cart.getProducts(); 	
	   					for(ProductBean beancart: prodcart) {
						%>
                        <tbody>
                            <tr>
                                <td>
                                    <div class="media">
                                        <div class="d-flex">
											<img src="img/games/<%=beancart.getCode()%>/small.png" alt="Game" width="170" height="100">
                                        </div>
                                        <div class="media-body">
                                            <p><%=beancart.getName() %></p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <h5>&euro;<%=beancart.getPrice()%>,00</h5>
                                </td>
                                <td>
                                    <div class="product_count">
                                        <input type="text" name="qty" id="sst" maxlength="12" value="<%=beancart.getCartQuantity()%>" title="Quantity:"
                                            class="input-text qty">
                                        <a href="cart?action=addC&id=<%=beancart.getCode()%>"
                                            class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></a>
                                        <a href="cart?action=deleteC&id=<%=beancart.getCode()%>"
                                            class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></a>
                                    </div>
                                </td>
                                
                                <% 
                                int total = beancart.getCartQuantity()*beancart.getPrice();
                                subtotal = subtotal + total;%>
                               
                                <td>
                                    <h5>&euro;<%=total%>,00</h5>
                                </td>
                            </tr>
                            	<%} %>
                            <tr class="bottom_button">
                                <td>
                                    <a class="gray_btn" href="cart.jsp">Aggiorna Carrello</a>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                    <h5>Subtotale</h5>
                                </td>
                                <td>
                                    <h5>&euro;<%=subtotal%>,00</h5>
                                    
                                    <%
                                    session.setAttribute("cart",cart);
                                    %>
                                </td>
                            </tr>
                            <tr class="out_button_area">
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                            </tr>
                        </tbody>
                    </table>  	
    				<div class="checkout_btn_inner d-flex align-items-center">
                    <a class="gray_btn" href="index.jsp">← Home</a>
                    <a class="primary-btn" href="checkout.jsp">Checkout</a>
                    </div>	
<% } %>	
                </div>
            </div>
        </div>
    </section>
    <!--================End Cart Area =================-->

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