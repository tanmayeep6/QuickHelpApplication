<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style><%@include file="VendorHome.css"%></style>
<script>
$(document).ready(function() {
	$('.mdb-select').materialSelect();
	});
</script>
<title>Vendor Home</title>
</head>
<body>
<div style="height: 82px;">
<nav class="navbar navbar-expand-md navbar-dark  fixed-top" style="background-color: black;">
        <div class="container">
        	<div style="width: 350px;" class="d-flex justify-content-start">
           <a class="navbar-brand text-white " href="vendorHome.jsp"><h1>QuickHelp &trade;</h1></a> </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                         <div class="dropdown">
							  <a href="vendorHome.jsp" class="nav-link text-white mt-1">Home</a>
							</div>
                     </li>   
                      <li class="nav-item">
                         <div class="dropdown">
							  <button class="dropbtn">Contact</button>
							  <div class="dropdown-content pl-3">
							  	<p class="pr-2 pt-2 ">
									Customer Care :<br>
									+420<br>
															  	
							  	 </p>
							  </div>
							</div>
                    </li>
                 	
                  
                    <li>   <div class="dropdown">
							  <button class="dropbtn">Profile</button>
							  <div class="dropdown-content">
							  	<a href="VendorDetails.jsp">Update</a>
							    <a href="#">Logout</a>
							  </div>
							</div>
					</li>
           
               </ul>
               
            </div>
             
      
        </div>
      </nav> 
</div>

<div class="row " >
	<div class="col-5 bg-dark text-light  pt-4 row " style="height: 510px; font-size: 18px; padding-left: 50px;">
		<div style="height: 150px;" class="pt-3">
		<h1 class="pb-3">Welcome ${v_first_name}</h1>
		<p>Thank you for Registering with us ${v_first_name}.<br>
			We are Glad to have you with us.<br></p>
		</div>
		<div>
		<p class="pt-3">
			You will shortly be connected with a customer .<br>
			As soon as someone finds your service and sends you a request,
			You will be provided with their details and you can now contact them.
		</p>
		</div>	
	</div>
	<div class="col-7 row " style="height: 60vh;">
		<div class="col-8 d-flex justify-content-end align-items-end">
			<a href="VendAddService.jsp" class="nav-link text-dark mt-1 bg-success d-flex justify-content-center align-items-center" style="width: 30vh; height: 10vh;border-radius: 10px;">Add Services</a>
		</div>
		<div class="col-8 d-flex justify-content-end align-items-center">	
			<a href="VendorViewService.jsp" class="nav-link text-dark mt-1 bg-success d-flex justify-content-center align-items-center" style="width: 30vh; height: 10vh;border-radius: 10px;">View Services</a>
		</div>
	</div>
    
</div>

</body>
</html>