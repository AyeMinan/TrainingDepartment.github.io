<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.trainingapplication.model.CourseRegister"%>
<!DOCTYPE html>

<html lang="en">

<head>
<style>

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-color: #02C5FD;
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

.hero-section {
	top: 100px;
  height: 50%;

}
.content-section {
	top: 300px;
  height: 50%;
  position: relative;
}
.content-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: black;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: black;
}


.hero-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: #ddd;
  text-align: center;
  cursor: pointer;
}

.hero-text button:hover {
  background-color: #555;
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
  background-color: #FD3A02;
  text-align: center;
  cursor: pointer;
}

.content-text button:hover {
  background-color: white;
  
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
  background-color: #02C5FD;
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
  background-color: #f2f2f2;
  
  padding: 20px;
  padding-left: 80px;padding-right: 80px;
}
table {
	top:20px;
position: relative;
  padding-left: 80px;padding-right: 80px;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
  background-color: white;
  
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: white;
}
</style>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Training Program</title>
<meta content="" name="description">
<meta content="" name="keywords">
<link href="style.css" rel="stylesheet" type="text/css" >

</head>

<body>
<jsp:include page="header.jsp"></jsp:include>

	 <div class="content-section">
  <div class="content-text">
    <h1 style="font-size:30px">Thanks for Registration</h1>
    <p>We will send details information about the selected course to your registered email.</p>
    <p>Hope you get a great day</p>
    
							<table id="resultTable">
								
                                                                    
              	<%
								if (request.getAttribute("Course") != null) {
									CourseRegister courseDetails = (CourseRegister) request.getAttribute("Course");
									
								%>
                
                <tr>
                <td> Register Name</td>
                      <td> <%=courseDetails.getUserName()%></td>
                      </tr>
                       <tr>
                <td> Register Course</td>
                      <td> <%=courseDetails.getCourseName()%></td>
                      </tr>
                       <tr>
                   <td> Phone Number</td>
                      <td> <%=courseDetails.getPhonenumber()%></td>
                      </tr>
                       <tr>
                <td> Register Email</td>
                      <td> <%=courseDetails.getEmailId()%></td>
                      </tr>
                       <tr>
                 <td> Course Amount</td>
                      <td> <%= courseDetails.getPrice()%></td>
                      </tr>
                      <%} %>
                     </table>
                      <a href="<%= request.getContextPath() %>/index" ><button>Exit</button></a>
                                                     
</div>
</div>


</body>
</html>
                                                    