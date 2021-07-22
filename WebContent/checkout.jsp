<%@page import="it.unisa.model.UserModelDS"%>
<%@page import="it.unisa.model.OrderModelDS"%>
<%@page import="it.unisa.model.UserBean"%>
<%@page import="it.unisa.model.OrderBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	ProductBean product = (ProductBean) request.getAttribute("product");
	Cart cart = (Cart) request.getSession().getAttribute("cart");
	int subtotal = 0;
%>

<%
	String currentuser = request.getRemoteUser();
	UserModelDS userds = new UserModelDS();
	UserBean user = (UserBean) userds.doRetrieveByKey(currentuser);
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
    <title>Checkout</title>

    <!--
            CSS
            ============================================= -->
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
                    <h1>Checkout</h1>
                    <nav class="d-flex align-items-center">
                        <a href="index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="#">Checkout</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->

    <!--================Checkout Area =================-->
    <section class="checkout_area section_gap">
        <div class="container">
        	<%                   
            if (username == null) {
           	%>
            <div class="returning_customer">
                <div class="check_title">
                    <h2>Utente gi&agrave; registrato? <a href="redirectuser.jsp">Clicca qui per entrare</a></h2> <br><br>
                </div>
            </div>
            
            <%}
			%>

            <div class="billing_details">
                <div class="row">
                        	<%                   
            if (username == null) {
           	%>
                    <div class="col-lg-8">
                        <h3>Dettagli del pagamento</h3>
                        <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="first" name="name">
                                <span class="placeholder" data-placeholder="Nome"></span>
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="last" name="name">
                                <span class="placeholder" data-placeholder="Cognome"></span>
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="number" name="number">
                                <span class="placeholder" data-placeholder="Telefono"></span>
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="email" name="compemailany">
                                <span class="placeholder" data-placeholder="Indirizzo email"></span>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="address" name="add1">
                                <span class="placeholder" data-placeholder="Indirizzo"></span>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="city" name="city">
                                <span class="placeholder" data-placeholder="Citt&agrave;"></span>
                            </div>
                            <div class="col-md-12 form-group">
                                <input type="text" class="form-control" id="zip" name="zip" placeholder="CAP">
                            </div>

                        </form>
                    </div>
                    <%
					} else {
					%>
						
                    <div class="col-lg-8">
                        <h3>Dettagli del pagamento</h3>
                        <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="first" name="name" value="<%=user.getName()%>" required>
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="last" name="surname" value="<%=user.getSurname()%>" required>
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="number" name="number" value="<%=user.getTelephone()%>" required>
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="email" name="email" value="<%=user.getEmail()%>" required>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="address" name="address" value="<%=user.getAddress()%>" required>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="city" name="city" value="<%=user.getCity()%>" required>
                            </div>
                            <div class="col-md-12 form-group">
                                <input type="text" class="form-control" id="zip" name="zip" placeholder="CAP" value="<%=user.getCap()%>" required>
                            </div>

                        </form>
                    </div>
                    
          			 <%
					}%>
                    
                    <div class="col-lg-4">
                        <div class="order_box">
                            <h2>Il tuo ordine</h2>
                            <% if(cart != null) { %>
                            <ul class="list">
                                <li><a href="#">Prodotto <span>Totale</span></a></li>
                        <% List<ProductBean> prodcart = cart.getProducts(); 	
	   					for(ProductBean beancart: prodcart) {
						%>
						
						<%int total = beancart.getCartQuantity()*beancart.getPrice();
                        subtotal = subtotal + total;%>
                        
                        <% String name =  beancart.getName();
                        name = name.substring(0,10); %>
                         
						<li><a href="#">x <%=beancart.getCartQuantity()%> <%=name %>... <span class="middle" style=text-overflow:ellipsis;></span> <span class="last">&euro;<%=total%>,00</span></a></li>
                        <%} %>
                        
                        <% int shipping = 10;
                        int ordertotal = subtotal + shipping;%> 
                        
                            </ul>
                            <ul class="list list_2">
                                <li><a href="#">Subtotale <span>&euro;<%=subtotal%>,00</span></a></li>
                                <li><a href="#">Spedizione <span>&euro;<%=shipping%>,00</span></a></li>
                                <li><a href="#">Totale <span>&euro;<%=ordertotal%>,00</span></a></li>
                            </ul>

                                <form action="order" method="post">
						        <%
						        Date date = new Date();
						        String stringDate = date.toString();
						        %>
								<input type="hidden" name="userid" value="<%=user.getId()%>"> 
								<input type="hidden" name="data" value="<%=date %>"> 
								<input type="hidden" name="total" value="<%=ordertotal%>"> 
								<input type="hidden" name="paymethod" value="PayPal"> 
								
								<input style="width: 100%" class="primary-btn" type="submit" value="Conferma e acquista">
								</form>
                        </div>
                    </div>
                    

                </div>
            </div>
        </div>
    </section>
    <% } %>	
    <!--================End Checkout Area =================-->

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