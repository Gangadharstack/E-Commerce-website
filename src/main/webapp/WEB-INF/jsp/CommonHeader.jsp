<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
  <title>FashionCollection-</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
body {font-family: Arial, Helvetica, sans-serif;}


input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>

</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="#">
    <img src="https://spng.pngfind.com/pngs/s/120-1204515_bold-serious-cell-phone-logo-design-for-a.png" alt="logo" style="width:40px">
  </a>
  
  <!-- Links -->
  <ul class="navbar-nav">
  <c:if test="${sessionScope.role==null}">
    <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
    <li class="nav-item"><a class="nav-link" href="login">Login</a></li>
    <li class="nav-item"><a class="nav-link" href="register">Register</a></li>
   </c:if> 
  <c:if test="${sessionScope.role=='ROLE_ADMIN'}">
    <li class="nav-item"><a class="nav-link" href="adminhome">Home</a></li>
    <li class="nav-item"><a class="nav-link" href="ManageProduct">Manage Product</a></li>
    <li class="nav-item"><a class="nav-link" href="category">Manage Category</a></li>
	<li class="nav-item"><a class="nav-link" href="category">Manage Supplier</a></li>
   </c:if> 
    <c:if test="${sessionScope.role=='ROLE_USER'}">
    <li class="nav-item"><a class="nav-link" href="userhome">Home</a></li>
    <li class="nav-item"><a class="nav-link" href="login">Product Catalog</a></li>
   </c:if>  
 
  </ul>
</nav>


