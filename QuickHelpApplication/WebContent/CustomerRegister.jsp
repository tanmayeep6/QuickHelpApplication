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
<style><%@include file="VendorRegister.css"%></style>
<title>Customer Register</title>
</head>
<body >

<div class="bgimgs">
	<nav class="navbar navbar-expand-md navbar-dark " style="background-color: black; opacity: 100%">
		<div class="container">
		<a href="Index.jsp" class="navbar-brand title ">QuickHelp &trade;</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#a">
				<span class="navbar-toggler-icon"></span>		
			</button>
		<div class="collapse navbar-collapse text-center" id="a" >
			<ul class="navbar-nav ml-auto">
				
				<li>   
					<div >
							 <a href="Index.jsp" class="nav-link text-white bg-success" style="border-radius: 7px ; height: 7vh; width: 15vh;">Login</a>
							  
					</div>
					</li>
        	</ul>
		</div>	
			
		</div>
		
	</nav>

	<div  style="width: 100% ; height:88%;  display: flex; justify-content: center; " >
		<form action="regisC" method="post" style="background-color:white; border-radius: 15px; height: 70vh; width: 300px; padding : 30px 20px 0px; margin-top: 50px; overflow-y:scroll;" class="display-flex align-content-center align-items-center example">
			<h2 class="text-center pb-3">Customer Registration</h2>
			<div>
			<label class="font-weight-bold">First Name:</label>
			<div class="form-group"><input class="form-control" type="text" id="v_first_name" name="c_first_name" placeholder="First Name" required="required"><div></div> </div>
			</div>
			<label class="font-weight-bold">Last Name:</label>
			<div class="form-group"><input class="form-control" type="text" id="v_last_name" name="c_last_name" placeholder="Last Name" required="required"><div></div> </div>
			<div class="form-group font-weight-bold pt-2 pb-2" >Gender :
			<select class="text-dark" name = "gender" id = "
			gender">
							<option value="">Select Gender</option>
			               <option value = "male" >male</option>
			               <option value = "female">female</option>
			               <option value = "others">others</option>
			             </select>
			      </div>
			<!-- <div class="form-group"><input class="form-control" type="text" name="gender" placeholder="Gender"> </div>
			<div class="form-group"><input class="form-control" type="text" name="gender" placeholder="Gender"> </div>-->
			<label class="font-weight-bold">Contact:</label>
			<div class="form-group"><input class="form-control" type="text" id="contact" name="contact" placeholder="Contact" required="required"><div></div> </div>
			<label class="font-weight-bold">Email:</label>
			<div class="form-group"><input class="form-control" type="email" id="mail" name="email" placeholder="abc@xyz.com" required="required"><div></div>  </div>
	
			 <label class="font-weight-bold">City:</label>
			 <div class="form-group"><input class="form-control" type="text" id="address" name="address" placeholder="City" required="required"><div></div>  </div>
			<label class="font-weight-bold">Occupation:</label>
			<div class="form-group"><input class="form-control" type="text" id="occupation" name="occupation" placeholder="Occupation" required="required"><div></div>  </div>
			<label class="font-weight-bold">Password:</label>
			<div class="form-group"><input class="form-control"  type="password" id="Password" name="password" placeholder="Password" required="required"><div></div> </div>
			<label class="font-weight-bold" >Re-enter Password:</label>
			<div class="form-group"><input class="form-control"  type="password" id="c_Password" name="c_Password" placeholder="Confirm Password" required="required"><div></div> </div>
			<div class="d-flex justify-content-center">
			<input class="btn btn-primary mb-4" type="submit" value="Register">
			</div>
			</form>

			</div>
	
	
</div>


<!-- Js validations -->
<script>
    function validation()
    {
        var first=document.getElementById('c_first_name').value;
        var last=document.getElementById('c_last_name').value;
        var pass=document.getElementById('Password').value;
        var conpass=document.getElementById('c_Password').value;
        var mobile=document.getElementById('contact').value;
        var email=document.getElementById('mail').value;
        var occ=document.getElementById('occupation').value;
        var add=document.getElementById('address').value;

        if(first==""){
            document.getElementById('v_first_name').parentElement.children[1].innerHTML ="**Please enter the first name";
            return false;
        }
        if(last==""){
            document.getElementById('v_last_name').parentElement.children[1].innerHTML ="**Please enter the last name";
            return false;
        }
        if(!isNaN(first)){
            document.getElementById('v_first_name').parentElement.children[1].innerHTML ="**only characters are allowed";
            return false;
        }
        if(!isNaN(last)){
            document.getElementById('v_last_name').parentElement.children[1].innerHTML ="**only characters are allowed";
            return false;
        }
        if(mobile==""){
            document.getElementById('contact').parentElement.children[1].innerHTML ="**required";
            return false;
        }
        if(isNaN(mobile)){
            document.getElementById('contact').parentElement.children[1].innerHTML ="**must be digits only";
            return false;
        }

        if(mobile.length!=10){
            document.getElementById('contact').parentElement.children[1].innerHTML ="**only 10digit number";
            return false;
        }

        if(email==""){
            document.getElementById('mail').parentElement.children[1].innerHTML ="**required";
            return false;
        }
        if(occ==""){
            document.getElementById('occupation').parentElement.children[1].innerHTML ="**Please enter occupation";
            return false;
        }
        if(add==""){
            document.getElementById('address').parentElement.children[1].innerHTML ="**Please enter the address";
            return false;
        }
        if(pass==""){
            document.getElementById('Password').parentElement.children[1].innerHTML ="**required";
            return false;
        }
        if(pass.length<=5 || pass.length>=20){
            document.getElementById('Passwords').parentElement.children[1].innerHTML ="**password must be between 5 and 20";
            return false;
        }

        if(pass!=conpass){
            document.getElementById('c_Password').parentElement.children[1].innerHTML ="**password not matching";
            return false;
        }

        if(conpass==""){
            document.getElementById('c_Password').parentElement.children[1].innerHTML ="**required";
            return false;
        }

        if(mobile==""){
            document.getElementById('contact').parentElement.children[1].innerHTML ="**required";
            return false;
        }
        if(isNaN(mobile)){
            document.getElementById('contact').parentElement.children[1].innerHTML ="**must be digits only";
            return false;
        }

        if(mobile.length!=10){
            document.getElementById('contact').parentElement.children[1].innerHTML ="**only 10digit number";
            return false;
        }

        if(email==""){
            document.getElementById('mail').parentElement.children[1].innerHTML ="**required";
            return false;
        }
     

    }
</script>

</body>
</html>