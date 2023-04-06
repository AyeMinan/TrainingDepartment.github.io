<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
h2{
   font-size: 2.3em;
   font-weight: bold;

}
.form-control{
   background-color: #02C5FD;
   border-color: black;
   border: 10px;
}

.my-form{
   background-color: inherit;
   box-sizing: 5px 5px;
   
}
.my-form .btn{
   background-color: #02C5FD;

}
   </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<body>
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
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>

</body>
</html>