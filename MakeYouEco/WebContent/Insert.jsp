<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Collection<?> products = (Collection<?>) request.getAttribute("products");	
	ProductBean product = (ProductBean) request.getAttribute("product");

%>

<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,it.unisa.model.ProductBean,it.unisa.model.Cart"%>

<head>
<meta charset="UTF-8">
<title>Inserimento di un prodotto</title>
</head>
<body>
	<h2>Insert</h2>
	<form action="product" method="post">
		<input type="hidden" name="action" value="insert"> 
		
		<label for="name">Name:</label><br> 
		<input name="name" type="text" maxlength="20" required placeholder="enter name"><br> 
		
		<label for="description">Description:</label><br>
		<textarea name="description" maxlength="100" rows="3" required placeholder="enter description"></textarea><br>
		
		<label for="price">Price:</label><br> 
		<input name="price" type="number" min="0" value="0" required><br>

		<label for="weight">Weight:</label><br> 
		<input name="weight" type="number" min="1" value="1" required><br>
		
		<label for="image">Image:</label><br> 
		<input name="image" type="text" maxlength="100" required placeholder="enter url"><br>
		
		<label for="quantity">Quantity:</label><br> 
		<input name="quantity" type="number" min="1" value="1" required><br>
		
		<label for="iva">IVA:</label><br> 
		<input name="iva" type="number" min="0" value="1" required><br>

		<input type="submit" value="Add"><input type="reset" value="Reset">
	</form>

</body>
</html>