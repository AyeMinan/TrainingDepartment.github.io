<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.trainingapplication.model.Course"%>
<!DOCTYPE html>

<html lang="en">

<head>
<style>
body {
  margin: 0;
  font-family: Times;

}

.topnav {
  overflow: hidden;
  background-color: white;
}

.topnav a {
  float: right;
  color: #0025FF;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  background-color: white;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
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
  background-color: #FFD700;
  color: black;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: white;
}

.container {

  border-radius: 5px;
  background-color: #08D9F7;
  
  padding: 20px;
  padding-left: 80px;padding-right: 80px;
}
table {
	top:20px;
position: relative;
  padding-left: 80px;padding-right: 80px;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #FF7700;
  
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2
}
section{
height: 10vh;}


</style>
<meta charset="utf-8">

<title>Training Program</title>
<meta content="" name="description">
<meta content="" name="keywords">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link href="style.css" rel="stylesheet" type="text/css" >

</head>

<body>

<jsp:include page="header.jsp"></jsp:include>
<section></section>
<div class="container">
  <form action="insert" method="post">
  
  <center><h2>Registration Form</h2></center>
    <label for="name">User Name</label>
    <input type="text" id="name"  name="username"  placeholder="Your Name" required>

    <label for="email">Email Id</label>
    <input type="email" id="emailid" name="emailid" placeholder="Email Id" required >
 
    
    <label for="phonenumber">Phone No</label>
    <input type="text" id="phonenumber" name="phonenumber" placeholder="Phone No" required>

    <label for="course">Course Name</label>
    
    <select name="coursename"  id="coursename" required>
								<%
								 //getattribute 
								if (request.getAttribute("listCourse") != null) {
									List<Course> listCourse = (List<Course>) request.getAttribute("listCourse");
									for (Course i : listCourse) {
								%>

								<option value="<%=i.getCourseName()%>"><%=i.getCourseName()%></option>
								<%
								}
								}
								%>

							</select>
     

  
    <input type="submit" value="Submit">
  </form>
</div>

       

</body>
</html>

