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
text-align: center;
padding-top: 30px;

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

section{
height: 35vh;
}
.footer-distributed{
  background: #00A2FF;
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
  box-sizing: border-box;
  width: 100%;
  text-align: left;
  font: bold 16px sans-serif;
  padding: 55px 50px;
 
}

.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
  display: inline-block;
  vertical-align: top;
}

/* Footer left */

.footer-distributed .footer-left{
  width: 40%;
}

/* The company logo */

.footer-distributed h3{
  color:  #ffffff;
  font: normal 36px 'Open Sans', cursive;
  margin: 0;
}

.footer-distributed h3 span{
  color:  lightgreen;
}

/* Footer links */

.footer-distributed .footer-links{
  color:  #ffffff;
  margin: 20px 0 12px;
  padding: 0;
}

.footer-distributed .footer-links a{
  display:inline-block;
  line-height: 1.8;
  font-weight:400;
  text-decoration: none;
  color:  inherit;
}

.footer-distributed .footer-company-name{
  color:  #222;
  font-size: 14px;
  font-weight: normal;
  margin: 0;
}

/* Footer Center */

.footer-distributed .footer-center{
  width: 35%;
}

.footer-distributed .footer-center i{
  background-color:  #33383b;
  color: #ffffff;
  font-size: 25px;
  width: 38px;
  height: 38px;
  border-radius: 50%;
  text-align: center;
  line-height: 42px;
  margin: 10px 15px;
  vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope{
  font-size: 17px;
  line-height: 38px;
}

.footer-distributed .footer-center p{
  display: inline-block;
  color: #ffffff;
  font-weight:400;
  vertical-align: middle;
  margin:0;
}

.footer-distributed .footer-center p span{
  display:block;
  font-weight: normal;
  font-size:14px;
  line-height:2;
}

.footer-distributed .footer-center p a{
  color: black;
  text-decoration: none;;
}

.footer-distributed .footer-links a:before {
  content: "|";
  font-weight:300;
  font-size: 20px;
  left: 0;
  color: black;
  display: inline-block;
  padding-right: 5px;
}

.footer-distributed .footer-links .link-1:before {
  content: none;
}

/* Footer Right */

.footer-distributed .footer-right{
  width: 20%;
}

.footer-distributed .footer-company-about{
  line-height: 20px;
  color:  black;
  font-size: 13px;
  font-weight: normal;
  margin: 0;
}

.footer-distributed .footer-company-about span{
  display: block;
  color:  #ffffff;
  font-size: 14px;
  font-weight: bold;
  margin-bottom: 20px;
}

.footer-distributed .footer-icons{
  margin-top: 25px;
}

.footer-distributed .footer-icons a{
  display: inline-block;
  width: 35px;
  height: 35px;
  cursor: pointer;
  background-color:  #33383b;
  border-radius: 2px;

  font-size: 20px;
  color: #ffffff;
  text-align: center;
  line-height: 35px;

  margin-right: 3px;
  margin-bottom: 5px;
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
    <p style="text-align: center; padding-bottom: 30px;"><b>We are providing different training courses that you can freely explore and select. <br>                                                                                           
       For early birds,we have morning courses which starts <br> from 6am to 8 am with affordable price,<br> evening session and many more.</b></p>
    <center><a href="<%= request.getContextPath() %>/new"  class="btn-get-started scrollto"><button>Get Started</button></a></center>
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
       
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>
</div>
 </div>
  <!-- Footer -->
  <section></section>
<footer class="footer-distributed">

      <div class="footer-left">

        <h3>Training Department<span>Company</span></h3>

        <p class="footer-links">
          <a href="#" class="link-1">Home</a>
        
          <a href="#">About</a>
          
          <a href="#">Faq</a>
          
          <a href="#">Contact</a>
        </p>

        <p class="footer-company-name">Training Department © 2015</p>
      </div>

      <div class="footer-center">

        <div>
          <i></i>
          <p><span></span> </p>
        </div>

        <div>
          <i></i>
          <p></p>
        </div>

        <div>
          <i></i>
          <p><a></a></p>
        </div>

      </div>

      <div class="footer-right">

        <p class="footer-company-about">
          <span>About the company</span>
           We are providing training courses for those who want to try something new and different and to improve your skills in life.
        </p>

        <div class="footer-icons">

          <a href="https://www.facebook.com/home.php?ref=homescreenpwa"><i class="fa fa-facebook"></i></a>
          <a href="https://twitter.com/"><i class="fa fa-twitter"></i></a>
          <a href="https://www.linkedin.com/"><i class="fa fa-linkedin"></i></a>
          <a href="https://github.com/"><i class="fa fa-github"></i></a>

        </div>

      </div>

    </footer>
 
</body>

</html>

<!--  request.getContextPath(), as it will always points to root of your application. 
 
 you were to move your jsp file from one directory to another, nothing needs to be changed. -->
 
 