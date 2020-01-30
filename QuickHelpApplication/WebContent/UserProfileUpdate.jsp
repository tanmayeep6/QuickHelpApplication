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
<style><%@include file="UserProfileUpdate.css"%></style>
<title>Insert title here</title>
</head>
<body >

<div class="bgimgs b">
	<nav class="navbar navbar-expand-md navbar-dark fixed-top" style="background-color: black; opacity: 100%">
		<div class="container">
		<a href="VendorHome.jsp" class="navbar-brand title ">QuickHelp &trade;</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#a">
				<span class="navbar-toggler-icon"></span>		
			</button>
		<div class="collapse navbar-collapse text-center" id="a" >
			<ul class="navbar-nav ml-auto">
				
				<li>   
					<div >
							 <a href="UserHome.jsp" class="nav-link text-white bg-success" style="border-radius: 7px ; height: 7vh; width: 15vh;">Back</a>
							  
					</div>
					</li>
        	</ul>
		</div>	
			
		</div>
		
	</nav>

	<div  style="width: 100% ; height:80%;  display: flex; justify-content: center;overflow: hidden " >
		<form action="login" method="post" style="  height: 92vh; width: 600px; padding : 30px 20px 0px; margin-top: 50px; overflow-y:scroll;" class="b display-flex align-content-center align-items-center example ">
			<div class="pb-4 text-center">
			<h2 >Customer Details</h2>
			</div>
			<div class="pr-5">
			<div class="row ">
			<label class="font-weight-bold col-6 d-flex justify-content-end">First Name:</label>
			<div class="form-group col-6 d-flex justify-content-start"><input class="form-control" type="text" id="v_first_name" name="vFirstName" placeholder="First Name"><div></div> </div>
			</div>
			<div class="row">
			<label class="font-weight-bold col-6 d-flex justify-content-end">Last Name:</label>
			<div class="form-group col-6 d-flex justify-content-start"><input class="form-control" type="text" id="v_last_name" name="vLastName" placeholder="Last Name"><div></div> </div>
			</div>
			<div class="row">
			<div class="col-6 d-flex justify-content-end font-weight-bold a">Gender :</div>
			<div class="form-group font-weight-bold pt-2 pb-2 col-6 d-flex justify-content-start" >
			<select class="text-dark col-6 d-flex justify-content-start"  style="width: 200px;"name = "vgender" id = "
			gender">
							<option value="">Select Gender</option>
			               <option value = "male" >male</option>
			               <option value = "female">female</option>
			               <option value = "others">others</option>
			             </select>
			      </div>
			    
			</div>
			<div class="row">
			<label class="font-weight-bold col-6 d-flex justify-content-end a">Contact:</label>
			<div class="form-group col-6 d-flex justify-content-center"><input class="form-control" type="text" id="contact" name="vcontactNo" placeholder="Contact"><div></div> </div>
			</div>
			<div class="row">
			<label class="font-weight-bold col-6 d-flex justify-content-end pr-5">Email:</label>
			<div class="form-group col-6 d-flex justify-content-start"><input class="form-control" type="email" id="mail" name="vemail" placeholder="abc@xyz.com" readonly="readonly"><div></div>  </div>
			</div>
			<div class="row">
			 <label class="font-weight-bold col-6 d-flex justify-content-end pr-5 ">City:</label>
			<div class="form-group d-flex justify-content-start pl-3"><input class="form-control" type="text" id="address" name="area" placeholder="City"><div></div>  </div>
			</div>
			<div class="row">
			<label class="font-weight-bold col-6 d-flex justify-content-end mr-3">Occupation:</label>
			<div class="form-group d-flex justify-content-start"><input class="form-control" type="text" id="occupation" name="occupation" placeholder="Occupation"><div></div>  </div>
			</div>
			<div class="d-flex justify-content-center pt-3">
			<input class="btn btn-primary mb-4 " type="submit" value="Update">
			</div>
			</div>
			</form>

			</div>
	
	
</div>


<!-- Js validations -->
<script>
    function validation()
    {
        var first=document.getElementById('v_first_name').value;
        var last=document.getElementById('v_last_name').value;
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