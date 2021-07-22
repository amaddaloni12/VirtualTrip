<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Collection<?> products = (Collection<?>) request.getAttribute("products");
	if(products == null) {
		response.sendRedirect("product");	
		return;}
	
	ProductBean product = (ProductBean) request.getAttribute("product");
%>

<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,it.unisa.model.ProductBean"%>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ProductView</title>
</head>

<body >

	<a href="indexAdmin.jsp">Home</a> 

	<h2>Prodotti</h2>
	<a href="product">List</a>
	<table border="1">
		<tr>
			<th>ID gioco <a href="product?sort=code">Sort</a></th>
			<th>Nome <a href="product?sort=name">Sort</a></th>
			<th>Descrizione <a href="product?sort=description">Sort</a></th>
			<th>Piattaforma <a href="product?sort=platform">Sort</a></th>
			<th>Software House <a href="product?sort=softhouse">Sort</a></th>
		</tr>
		<%
			if (products != null && products.size() != 0) {
				Iterator<?> it = products.iterator();
				while (it.hasNext()) {
					ProductBean bean = (ProductBean) it.next();
		%>
		<tr>
			<td><%=bean.getCode()%></td>
			<td><%=bean.getName()%></td>
			<td><%=bean.getDescription()%></td>
			<td><%=bean.getPlatform()%></td>
			<td><%=bean.getSofthouse()%></td>
			<td><a href="product?action=delete&id=<%=bean.getCode()%>">Delete</a><br>
				<a href="product?action=read&id=<%=bean.getCode()%>">Details</a><br>
				</td>
		</tr>
		<%}
		} else {
		%>
		<tr>
			<td colspan="6">Nessun prodotto disponibile</td>
		</tr>
		<%
			}
		%>
	</table>
	
	<%
		if (product != null) {
	%>
	<h2>Dettagli</h2>
	
	<table border="1">
		<tr>
			<th>ID gioco</th>
			<th>Nome</th>
			<th>Descrizione</th>
			<th>Prezzo</th>
			<th>Numero di copie</th>
			<th>Piattaforma</th>
			<th>Software House</th>
		</tr>
		<tr>
			<td><%=product.getCode()%></td>
			<td><%=product.getName()%></td>
			<td><%=product.getDescription()%></td>
			<td><%=product.getPrice()%></td>
			<td><%=product.getQuantity()%></td>
			<td><%=product.getPlatform()%></td>
			<td><%=product.getSofthouse()%></td>
		</tr>
	</table>
	<%
		}
	%>
	<h2>Inserisci nuovo articolo</h2>
	<form action="product" method="post">
		<input type="hidden" name="action" value="insert"> 
		
		<label for="name">Nome:</label><br> 
		<input name="name" type="text" maxlength="20" required placeholder="enter name"><br> 
		
		<label for="description">Descrizione:</label><br>
		<textarea name="description" maxlength="100" rows="3" required placeholder="enter description"></textarea><br>
		
		<label for="price">Prezzo:</label><br> 
		<input name="price" type="number" min="0" value="0" required><br>

		<label for="quantity">Numero di copie:</label><br> 
		<input name="quantity" type="number" min="1" value="1" required><br>
		
		<label for="platform">Piattaforma:</label><br> 
		<input name="platform" type="text" maxlength="20" required placeholder="enter platform"><br> 
		
		<label for="softhouse">Software House:</label><br> 
		<input name="softhouse" type="text" maxlength="20" required placeholder="enter softhouse"><br> 
		

		<input type="submit" value="Add"><input type="reset" value="Reset">
	</form>
</body>
</html>
