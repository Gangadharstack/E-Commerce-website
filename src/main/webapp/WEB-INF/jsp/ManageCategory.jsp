<%@include file="CommonHeader.jsp" %>

<style>
body {
  background-image: url('https://wallpaper.dog/large/5490896.jpg');
}
</style>

<div class="container-fluid">
  <h3>Manage Category Page</h3>

	<table align="center">
	<form action="<c:url value="/insertCategory"/>" method="post">
	
	<tr>
	<td>Category ID</td>
	<td><input type="text" name="catId" id="catId"/></td>
	</tr>
	
	<tr><td>Category Name</td>
	<td><input type="text" name="catName" id="catName"/></td>
	</tr>
	
	<tr><td>Category Desc</td>
	<td><textarea rows="5" cols="30" name="catDesc"></textarea></td>
	</tr>
	
	<tr>
	<td colspan="2"><input type="submit" value="Insert Category"/></td>
	</tr>
	
	</form>
	</table>

	<table width="100%">
		<tr bgcolor="pink">
			<td>Category Id</td>
			<td>Category Name</td>
			<td>Category Desc</td>
			<td>Operations</td>
		</tr>
		<c:forEach items="${categoryList}" var="category">
		<tr>
			<td>${category.categoryId}</td>
			<td>${category.categoryName}</td>
			<td>${category.categoryDesc}</td>
			<td>
				<a href="<c:url value="/editCategory/${category.categoryId}"/>">Edit</a>&nbsp;&nbsp;|&nbsp;&nbsp;
				<a href="<c:url value="/deleteCategory/${category.categoryId}"/>">Delete</a>
			</td>
		</tr>
		</c:forEach>
	</table>


</div>
</body>
</html>