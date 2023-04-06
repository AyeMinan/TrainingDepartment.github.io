<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">

<head>
<style>

body {
  margin: 0;
  font-family: Times;
  background-image: url("training2.jpg");
}

h1{
position: absolute;
justify-content: center;
top: 40%;
left: 43%;



}
.topnav {
  overflow: hidden;
  background-color: #FF7700;
}

.topnav a {
  float: right;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  background-color: #FF7700;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}


.hero-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: #02C5FD;
  text-align: center;
  cursor: pointer;
 
}

.hero-text button:hover {
  background-color: lightgray;
  color: black;
 
}
.content-text button {
	top:40px;
	position: relative;
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: #ddd;
  text-align: center;
  cursor: pointer;
}

.content-text button:hover {
  background-color: #555;
  color: white;
}
input[type=text],input[type=email], select {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: white;
  color: black;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color:#02C5FD ;
}



@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,500,300,700);

* {
  font-family: Open Sans;
}


h2{
   font-size: 2.3em;
   font-weight: bold;

}
.form-control{
   background-color: #00FF63;
   border-color: black;
   border: 10px;
}

.my-form{
   background-color: inherit;
   box-sizing: 5px 5px;y
   
}
.my-form .btn{
   background-color: #4BB44E;

}
p{
 position: absolute;
 top: 50%;
 width: 100%;
 justify-content: center;
 text-align: center;
 font-weight: 500;
 
 
}
.getstarted button {
position: absolute;
top: 60%;
left: 45%;
}
</style>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Course Register</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

 
  <link href="style.css" rel="stylesheet" type="text/css" >
  
</head>

<body>
 
<jsp:include page="header.jsp"></jsp:include>

  <!-- ======= Hero Section ======= -->
  
  <div class="hero-section">
  <div class="hero-text">
    <h1 style="font-size:30px">Training Course</h1>
    <p>We are providing different training courses that you can freely explore and select.                                                                                         
       <br /> For early birds,we have morning courses which starts from 6am to 8 am with affordable price,evening session and many more.</p>
    <center><a href="<%= request.getContextPath() %>/new"  class="btn-get-started scrollto"> <div class="getstarted"><button>Get Started</button></a></center></div>
  </div>
</div>
<div class="container">
  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog centered">
      <div class="modal-content">
        <div class="modal-body">
         
         <div class="my-form">
            <h2 class="text-center">Sign up</h2>
            <form action="#">
               <div>
                  <div class="mb-3 mt-3">
           <label for="uname"><b>User Name</b></label>
    <input type="text" class="form-control" placeholder="Enter Username" name="uname" required>
    <div class="mb-3 mt-3">
    <label for="email"><b>Email</b></label>
    <input type="email" class="form-control" placeholder="Enter Email" name="email" required>
    <div class="mb-3 mt-3">
    <label for="psw"><b>Password</b></label>
    <input type="password" class="form-control" placeholder="Enter Password" name="psw" required>
    <div class="mb-3 mt-3">
    <button type="submit" class="btn btn-light mt-3">Sign Up</button>
    </div>
      <div>
     </div>
  </div>
  </div></div></div>
       
       
 
</body>

</html>

<!--  request.getContextPath(), as it will always points to root of your application. 
 
 you were to move your jsp file from one directory to another, nothing needs to be changed. -->
 
 