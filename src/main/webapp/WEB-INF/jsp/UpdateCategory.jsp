<%@include file="CommonHeader.jsp" %>

<div class="container-fluid">
  <h3>Update Category</h3>

	<table align="center">
	<form action="<c:url value="/updateCategory"/>" method="post">
	
	<tr>
	<td>Category ID</td>
	<td><input type="text" name="catId" id="catId" value="${category.categoryId}" readonly/></td>
	</tr>
	
	<tr><td>Category Name</td>
	<td><input type="text" name="catName" id="catName" value="${category.categoryName}"/></td>
	</tr>
	
	<tr><td>Category Desc</td>
	<td><textarea rows="5" cols="30" name="catDesc">${category.categoryDesc}</textarea></td>
	</tr>
	
	<tr>
	<td colspan="2"><input type="submit" value="Insert Category"/></td>
	</tr>
	
	</form>
	</table>

	</div>
	
</body>
</html>