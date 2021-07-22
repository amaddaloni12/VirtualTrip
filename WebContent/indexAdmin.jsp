<%@page import="java.beans.beancontext.BeanContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "it.unisa.model.UserBean"%>


<%
	String username = request.getRemoteUser();
%>

<!DOCTYPE html>
<html>
<head>

	 <style>
body {
  background-image: url('');
}
</style>

    <title>VirtualTrip</title>
    
</head>



<body>
<div>

<h1>
	VirtualTrip - Admin Homepage <br>
</h1>

	<a href="ProductView.jsp">Inserisci/Rimuovi Giochi</a> <br>
	<a href="ProductCatalog.jsp">Catalogo Giochi</a> <br>

   </div>
   
    <ul id="nav">
            <li>Hi, <%=username %>  (<a href="logout.jsp">Logout</a>)</li>
        </ul>
</html>