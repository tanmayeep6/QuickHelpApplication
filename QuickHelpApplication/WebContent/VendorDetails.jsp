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
<title>Admin</title>
</head>
<body>




<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <div class="container">
           <a class="navbar-brand text-white" href="IndexPage.jsp"><h1>QuickHelp &trade;</h1></a> 
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                         <a href="vendorHome.jsp" class="nav-link text-white mt-1">Home</a>
                     </li>   
                      <li class="nav-item">
                         <div class="dropdown">
							  <button class="dropbtn">Contact</button>
							  <div class="dropdown-content ">
							  	<p class="pr-1">
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
<div class=" text-center " style="height : 150px">
	
    <div class="container">
        <h3>Vendor Details</h3>
     </div>
</div>

<div class="container mb-4" >
    <div class="row  text-center">
        <div class="col-12 ">
        		<h2>Vendor Details</h2>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            
                            <th scope="col">First Name</th>
                            <th scope="col">Last Name</th>
                            <th scope="col" class="text-center">Gender</th>
                            <th scope="col" class="text-center">Email</th>
                            <th scope="col" class="text-right">Contact</th>
                            <th scope="col" class="text-right">City</th>
                            <th scope="col" class="text-right">Service</th>
                            <th> </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Gangey</td>
                            <td>Mishra</td>
                            <td>Female</td>
                            <td>Tanmayeep6@gmail.com</td>
                            <td class="text-right">9999999999</td>
                            <td class="text-right">Mumbai</td>
                            <td class="text-right">Laundry</td>
                        </tr>
           			 </tbody>
                </table>
            </div>
        </div>
       
    </div>
</div>

<div style="width: 115vh;" class="d-flex justify-content-end row">

<a href="VendorProfileUpdate.jsp" style="width: 15vh;"class="nav-link col-2 text-white bg-success d-flex justify-content-center pl-3 "><h4>Edit</h4></a>

</div>
</body>
</html>