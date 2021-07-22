<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% 
	session.invalidate();
	response.sendRedirect("index.jsp");
%>
<!DOCTYPE html>
<html>
<head>
	<title>Logging out...</title>
</head>
<body>
	Logging out...
</body>
</html>