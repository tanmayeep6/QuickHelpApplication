<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% String myEmail =(String)session.getAttribute("email"); 
    
    %>
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
<body class="">
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
<div  style="width: 100% ; height:80%;  display: flex; justify-content: center;overflow: hidden " >
		<form action="addservice" method="post" style=" height: 80vh; width: 150vh; padding : 30px 20px 0px; overflow-y:scroll; " class="b display-flex justify-content-center align-items-center example ">
			<div class="pb-4 text-center">
			<h2 >Add Services</h2>
			</div>
			<p hidden><%= myEmail %></p>
			<div class="pr-5 " style="width: 120vh; ">
			<div class="row ">
			<label class="font-weight-bold col-6 d-flex justify-content-end">Title :</label>
			<div class="form-group col-6 d-flex justify-content-start"><input class="form-control" style="width: 55vh;" type="text" id="serviceName" name="serviceName" placeholder="Name"><div></div> </div>
			</div>
			<div class="row">
			<label class="font-weight-bold col-6 d-flex justify-content-end">Service Type:</label>
			<div class="form-group col-6 d-flex justify-content-start text-dark"><select name = "service" id = "service">
							<option class="text-dark" value="">--Select--</option>
			               <option class="text-dark" value = "Flat">Flat</option>
			               <option class="text-dark" value = "plumber">Plumber</option>
			               <option class="text-dark" value = "electrician">Electrician</option>
			              
			</select><div></div> </div>
			</div>
			
			
			
			<div class="row">
			<label class="font-weight-bold col-6 d-flex justify-content-end a">Address :</label>
			<div class="form-group col-6 d-flex justify-content-center"><textarea rows="5" cols="50" name="address" placeholder="Address" style="border-radius: 5px; size: fixed;"></textarea><div></div> </div>
			</div>
			
			<div class="row">
			 <label class="font-weight-bold col-6 d-flex justify-content-end  ">Contact :</label>
			<div class="form-group d-flex justify-content-start pl-3"><input class="form-control" type="text" id="contact" name="contact" placeholder="Contact"><div></div>  </div>
			</div>
			<div class="row">
			<label class="font-weight-bold col-6 d-flex justify-content-end a">Description :</label>
			<div class="form-group col-6 d-flex justify-content-center"><textarea rows="5" cols="50" name="serviceDiscription" placeholder="Description" style="border-radius: 5px; size: fixed;"></textarea><div></div> </div>
			</div>
			<div class="d-flex justify-content-end pt-3 " style="width: 90vh;">
			<input class="btn btn-success mb-4 " type="submit" value="Add" style="width: 15vh; height: 7vh;">
			</div>
			</div>
			</form>

			</div>
	
	
</div>
</body>
</html>