<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mye.makeyoueco.model.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	if (cart_list != null) {
		request.setAttribute("cart_list", cart_list);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pagina degli Ordini</title>

<%@include file="/includes/head.jsp"%>
</head>
<body>

	<%@include file="/includes/navbar.jsp"%>


	<%@include file="/includes/footer.jsp"%>
</body>
</html>