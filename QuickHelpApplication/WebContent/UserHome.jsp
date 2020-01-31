<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="adminHome.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style><%@include file="UserHomePage.css"%></style>
<script>
$(document).ready(function() {
	$('.mdb-select').materialSelect();
	});
</script>
<title>User Home</title>
</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <div class="container">
           <a class="navbar-brand text-white" href="#"><h1>QuickHelp &trade;</h1></a> 
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                         <div class="dropdown">
							  <button class="dropbtn">Home</button>
							  <div class="dropdown-content">
							  
							  </div>
							</div>
                     </li>   
                      <li class="nav-item">
                         <div class="dropdown">
							  <button class="dropbtn">Contact</button>
							  <div class="dropdown-content pl-2">
							  	<p>
									Customer Care :<br>
									+420<br>
															  	
							  	 </p>
							  </div>
							</div>
                    </li>
                 	
                  
                    <li>   <div class="dropdown">
							  <button class="dropbtn">Profile</button>
							  <div class="dropdown-content">
							  	<a href="CustomerDetails.jsp">Update</a>
							    <a href="#">Logout</a>
							  </div>
							</div>
					</li>
           
               </ul>
               
            </div>
             
      
        </div>
      </nav> 
<div class=" text-center " style="height : 150px">
	
    <div class="container">
        <h3>Vendor Details</h3>
     </div>
</div>

<div class="container" >
    <div class="row  text-center">
        <div class="col-12 ">
        		
            
		<form action="searchVendorD" method="post">
          	<div class=" text-center">
		    	<div>
		        <select class=" col-md-4 dropdown-select-version select bg-dark" id="serviceType" name="serviceType">
		            <option> Select Service </option>
		            <option value="Laundry">Laundry</option>
		            <option value="Flat">Flat</option>
		            <option value="Plumber">Plumber</option>
		        </select>
		     
		        </div>
		      	<div>
		        <select class="col-md-4 dropdown-select-version select bg-dark" id="city" name="city">
		            <option> Select City </option>
		            <option value="Kharghar">Kharghar</option>
		            <option value="City2">City 2</option>
		            <option value="City3">City 3</option>
		        </select>
		        </div>
		     		 <button class="btn btn-success" type="submit"> Search</button>      
		      
		</div>
		</form>
    </div>
       
    </div>
</div>
</body>
</html>