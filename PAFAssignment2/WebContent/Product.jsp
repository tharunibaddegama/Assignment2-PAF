<%@page import="com.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/main.js"></script>

</head>
<body>

	<div class="container"><div class="row"><div class="col-6">
		<h1>Stock Your Shop</h1>
		
		<form id="formproduct" name="formproduct"  >
		 	Product ID:
		 	<input id="productId" name="productId" type="text"
							 class="form-control form-control-sm">
		 	<br> Product Title:
			<input id="title" name="title" type="text"
							class="form-control form-control-sm">
			<br> Short Description:
			 <input id="sDesc" name="sDesc" type="text"
			 				class="form-control form-control-sm">
			 <br> Long Description:
			 <input id="lDesc" name="lDesc" type="text"
			 				class="form-control form-control-sm">
			 <br> Price:
			 <input id="price" name="price" type="text"
			 				class="form-control form-control-sm">
			 <br> Download Link:
			 <input id="downloadLink" name="downloadLink" type="text"
			 				class="form-control form-control-sm">
			 <br>								
 			<input id="btnSave" name="btnSave" type="button" value="Save"
 							class="btn btn-primary">
 							<input type="hidden" id="hidItemIDSave"
 				name="hidItemIDSave" value="">
 							
 			
		</form>
		
		<div id="alertSuccess" class="alert alert-success"></div>
		<div id="alertError" class="alert alert-danger"></div>
		
		<br>
		<div id="divItemsGrid">
			 <%
			 Product proObj = new Product();
			 out.print(proObj.readProducts());
			 
			 
			 %>
		</div>
	</div> </div> </div>

</body>
</html>