
<%@ page import="com.spr.dao.AES" %>
<%!final String secretKey = "ssshhhhhhhhhhh!!!!"; %>

<% String emailEncrypted= request.getParameter("emailId");
	String email= AES.decrypt(emailEncrypted, secretKey);
%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file="IndexPage.css"%></style>
<style><%@include file="UserHomePage.css"%></style>
<title>reset-pass</title>
</head>
<body >

<div class="bgimg">
	<nav class="navbar navbar-expand-md navbar-dark " style="background-color: black; opacity: 100%">
		<div class="container">
		<a href="Index.jsp" class="navbar-brand title ">QuickHelp &trade;</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#a">
				<span class="navbar-toggler-icon"></span>		
			</button>
		<div class="collapse navbar-collapse text-center" id="a" >
			<ul class="navbar-nav ml-auto">
				
				<li>   
					<div class="dropdown ">
							  <a href="Index.jsp" class="nav-link text-white bg-success" style="border-radius: 7px ; height: 7vh; width: 15vh;">Login</a>
					</div>
					</li>
        	</ul>
		</div>	
			
		</div>
		
	</nav>

	<div  style="width: 100% ; height:88%;  display: flex; justify-content: center; " >
		<form action="changePass" method="post" style="background-color:white; border-radius: 15px; height: 55vh; width: 300px; padding : 30px 20px 0px; margin-top: 50px; " class="display-flex align-content-center align-items-center">
		
			<h2 class="text-center text-dark ">Reset Password</h2> 
			<p class="text-danger bold" >${msg}</p>
			<div class="form-group" style="width:40vh;" ><input class="form-control" type="text"  placeholder="Username" name="<%= email %>" value="<%= email %>" readonly="readonly"> </div>
			<div class="form-group" style="width:40vh;" ><input	class="form-control"  type="password" name="Password" placeholder="Password"></div> 
			<div class="form-group" style="width:40vh;" ><input	class="form-control"  type="password" name="c_Password" placeholder="Confirm Password"></div> 
			<input class="btn btn-danger mr-5" type="submit" value="Update">
		</form></div>

		
		
</div>


</body>
</html>