
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ecogreen.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Regestration</title>

<!-- bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css">
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body>
  <!-- nav_bar -->
  <%@include file="nav_bar.jsp"%>
   <div class="row mt-2">
	<div class="col-md-4 offset-md-4">
	<div class="card">
			<div class="card-header custom-bg text-center">
						<h3 class="display-5">Sign Up Here</h3>
					</div>
		<div class="card-body px-5">
		<form id="user_form" action="RegisterServlet" method="POST">
		<div class="form-group">
    	<label for="name">User Name</label>
    	<input name="user_name" type="text" class="form-control" id="name"  placeholder="Enter Name" required>
    	</div>
    	
    	<div class="form-group">
    	<label for="email">User Email</label>
    	<input name="user_email" type="email" class="form-control" id="email"  placeholder="Enter Email" required>
    	</div>
    	
    	<div class="form-group">
    	<label  for="password">User Password</label>
    	<input name="user_password" type="password" class="form-control" id="password"  placeholder="Enter Password" required>
    	</div>
    	
    	<div class="form-group">
    	<label for="phone">User Phone</label>
    	<input name="user_phone" type="tel" class="form-control" id="phone"  placeholder="Enter Phone" required>
    	</div>
    	
    	<div class="form-group">
    	<label for="address">User Address</label>
    	<textarea name="user_address" class="form-control" placeholder="Enter Your Address" required></textarea>
    	</div>
    	
    	<div class="container text-center">
    		<button  type="submit" class="btn btn-outline-success">Register</button>
    		<button type="reset" class="btn btn-outline-warning">Reset</button>
    	</div>
    	
    	<div class="container mt-3 mb-3 ">
    		<a href="LoginPage.jsp" class="btn btn-outline-primary btn-block">Already Hava A Account? Login Here</a>

    	</div>
    	<div class="container">	
    	</div>
		</form>
		
		</div>
	</div>	
	</div>
</div>
   
<!-- javacsript/bootstrap cdn -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/myjs.js"></script>
</body>
</html>