<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Cart cart = (Cart) session.getAttribute("cart");
%>
<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,it.unisa.model.ProductBean,it.unisa.model.Cart"%>

<head>
<meta charset="UTF-8">
<title>Carrello</title>
</head>
<body>

	<% if(cart != null) { %>
		<h2>Cart</h2>

		<table border="1">
		<tr>
			<th>Name</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Action</th>
		</tr>
		<% List<ProductBean> prodcart = cart.getProducts();
		   List<Integer> quantity = cart.getQuantity();
		   int i = 0;
		   for(ProductBean beancart: prodcart) {
		%>
		<tr>
			<td><%=beancart.getName()%></td>
			<td><%=beancart.getPrice()%> €</td>
			<td>
				<form action="UpdateQuantity" method="post">
					<input type="text" name="quantity" value=""><%=quantity.get(i)%>
					<input type="submit" value="Invia">
				</form>
			</td>
			<td><a href="product?action=deleteC&id=<%=beancart.getCode()%>">Delete from cart</a></td>
		</tr>
		<% i++;
		} %>
	</table>
	<% } %>	

</body>
</html>