<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="container-fluid">

  <h3>Brand / Logo</h3>
  <p> Main Register Page</p>
</div>

<form:form action="registercustomer" modelAttribute="user" method="post">
  <div class="imgcontainer">
    <img src="https://www.kindpng.com/picc/m/223-2235312_squid-fox-cartoon-hd-png-download.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="username"><b>Username</b></label>
   <form:input path="username"/>

    <label for="password"><b>Password</b></label>
    <form:password path="password"/>
     
     <label for="customerName"><b>Customer Name</b></label>
    <form:input path="customerName"/>
    
     <label for="emailid"><b>Email Id</b></label>
    <form:input path="emailid"/>
     
     <label for="mobileNo"><b>Mobile No</b></label>
    <form:input path="mobileNo"/>
   
   <label for="address"><b>Address</b></label>
    <form:textarea path="address"/>
   
    <button type="submit">Sign UP</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
  </form:form>

</body>
</html>