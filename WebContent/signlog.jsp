<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>SignUp and Login</title>
	<link rel="stylesheet" type="text/css" href="\CC\\style\signlog.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>


<form action="\VirtualTrip\\CheckRegister" id="formReg" method="post" onsubmit=" return validation()" >
	<h1>Create Account</h1>
	
	<span>use an username for registration</span>
	<div id="errorData"> </div>
	<input type="text" onchange="controlUser(this.value) " placeholder="insert username" id="username" name="username" autocomplete="off" maxlength="16" required onfocus="focusRegister(this)" >
	<div id="availability"> </div> 
	<input type="password" id="password1" name="password1" onfocus="focusRegister(this)"  required autocomplete="off" maxlength="16"  placeholder="insert password">
	<input type="password" id="password2" name="password2" onfocus="focusRegister(this)" onchange="event.preventDefault()" required autocomplete="off" maxlength="16"  placeholder="confirm password">
	<%if(request.getSession().getAttribute("incorrectPasswords")==("true")){ %>
					<p style=Color:red>Passwords are different</p>
				<%
					request.getSession().removeAttribute("incorrectPasswords");
				}else{ %>
					<br><br>
				<%} %>
	<input type="text" id="name" name="name" required maxlength="16" placeholder="insert first name" >
	<input type="text" id="surname" name="surname" required  maxlength="16" placeholder="insert last name">
	
	<input type="submit" value="Register" class="validation" >&nbsp;
</form>





<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="\CC\\script\ajaxUsername.js" type="text/javascript"></script>
</body>
</html>








