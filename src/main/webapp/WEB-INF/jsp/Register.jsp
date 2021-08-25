<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<style>
body{
  background:url('https://images.pexels.com/photos/7147458/pexels-photo-7147458.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');
  background-size:cover
 }
</style>

<div class="container-fluid">
 <center>
  <h3>Register For Free</h3>
  <p> <u>Enjoy Unlimted Shopping</p>
</center>
</div>

<form:form action="registercustomer" modelAttribute="user" method="post">
  <div class="imgcontainer">
    <img src="" alt="Avatar" class="avatar">
  </div>
  
<form action="Welcome.html" method="post">
<table border="0" align="center">
<tbody>
  
  
  <h2 ALIGN="CENTER"> Register From</h2>
  

<tr>
<td><label for="username">Username:</label></td>
<td><input id="username" maxlength="50" name="username" type="text" /></td>
</tr>
<tr>

<td><label for="password">Password:</label></td>
<td><input id="password" maxlength="50" name="password" type="text" /></td>
</tr>

<tr>
<td><label for="customerName">Customer Name:</label></td>
<td><input id="customerName" maxlength="50" name="customerName" type="text" /></td>
</tr>
<tr>

<td><label for="emailid">Email Id:</label></td>
<td><input id="emailid" maxlength="50" name="emailid" type="text" /></td>
</tr>


<tr>
<td><label for="mobileNo">Mobile No:</label></td>
<td><input id="mobileNo" maxlength="50" name="mobileNo" type="text" /></td>
</tr>
<tr>

<td><label for="address">Address:</label></td>
<td><input id="address" maxlength="50" name="address" type="text" /></td>
</tr>
    
 <tr>
<td align="left"><input name="submit" type="submit" value="Sign UP"/></td>
</tr>


</form:form>

 </tbody>
</table>
</form>
</html>