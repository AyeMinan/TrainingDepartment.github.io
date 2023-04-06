
<div class="topnav">
  <a href="#"><button type="button"  data-toggle="modal" data-target="#myModal">
    About us
  </button></a>
<a href="#"><button type="button"  data-toggle="modal" data-target="#myModal">
    Contact us
  </button></a>
<a href="<%= request.getContextPath() %>/new">Register Course</a>
  <a  href="<%= request.getContextPath() %>/index">Home</a>
 
</div>


 <!--  request.getContextPath(), as it will always points to root of your application. 
 
 you were to move your jsp file from one directory to another, nothing needs to be changed. -->